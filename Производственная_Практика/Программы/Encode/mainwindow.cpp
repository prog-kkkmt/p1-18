#include "mainwindow.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <dhnetsdk.h>
#include <dhconfigsdk.h>
#include <QMessageBox>
#include <QTextStream>
#include <QDebug>

const char* const profileName[] = {"H.264 B", "H.264  ", "H.264 E", "H.264 H"};
const char* const strFormat[] = {"Main_Normal","Main_MoveExamine","Main_Alarm","Extra1","Extra2","Extra3"};
const char* const strSnapFormat[] = {"Normal Snap", "MoveExamine Snap", "Alarm Snap"};
const char* const strBitRate_CTL[] = {"BITRATE_CBR", "EM_BITRATE_VBR"};
const char* const strVideoCompression[] = {"MPEG4","MS_MPEG4","MPEG2","MPEG1","H263","MJPG","FCC_MPEG4","H264","H.265","SVAC"};
const char* const strImageQuarity[] = {"Image Quality 10%","Image Quality 30%","Image Quality 50%","Image Quality 60%","Image Quality 80%","Image Quality 100%"};
const char* const strName[] = {"D1", "HD1", "BCIF", "CIF", "QCIF", "VGA", "QVGA", "SVCD", "QQVGA",
"SVGA", "XVGA", "WXGA", "SXGA", "WSXGA", "UXGA", "WUXGA", "LFT", "720P", "1080P", "1_3M",
"2M","5M","3M","5_0M","1_2M", "1408_1024", "8M", "2560_1920", "960H", "960_720"
        ,"NHD" , "QNHD", "QQNHD","4000*3000","4096*2160","3840*2160"};
const char* const strFrameType[2] = {"DHAV","PS"};
int bitRateAll[] = {32, 48, 64, 80, 96, 128, 160, 192, 224,256, 320, 384, 448, 512, 640, 768, 896,
        1024, 1280, 1536, 1792, 2048, 3072, 4096, 6144, 7168,8192, 10240, 12288, 14336, 16384, 18432, 20480, 22528};
const char* const strAudioCompression[] = {"G711a","PCM","G711u","ARM","AAC","G726","G729","ADPCM","MPEG2","MPEG2L2","OGG",
"MP3","G7221"};
const char* const strSampleDepth[] = {"8Bit", "16Bit", "24Bit"};
const size_t encodeCount = sizeof(strVideoCompression)/sizeof(strVideoCompression[0]);
const size_t profileCount = sizeof(profileName)/sizeof(profileName[0]);

#define  STRDEFINE "user-define"
#define TIMEOUT         5000

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    InitVars();
    initSDK();
//    GetEncodeCaps(0,0,4);
//    InitEncodeCtrl(m_stuCaps);
    ui->editBitrate->hide();
    ui->labelBitrate->hide();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::InitVars()
{
    //{{AFX_DATA_INIT(CShowDemoDlg)
    m_nInterval = 0;
    ui->editIframeInterval->setText(QString::number(m_nInterval));
    m_nSvc = 0;
    ui->editSVC->setText(QString::number(m_nSvc));
    m_nEditBitRate = 0;
    ui->editBitrate->setText(QString::number(m_nEditBitRate));
    //}}AFX_DATA_INIT
    m_nChannel = 0;
    memset(&m_stuEncodeInfo, 0, sizeof(CFG_ENCODE_INFO));

    memset(&m_stuEncodeVideoInfo ,0 ,sizeof(NET_ENCODE_VIDEO_INFO));
    m_stuEncodeVideoInfo.dwSize = sizeof(m_stuEncodeVideoInfo);

    memset(&m_stuVideoProFile,0,sizeof(m_stuVideoProFile));
    m_stuVideoProFile.dwSize = sizeof(m_stuVideoProFile);

    memset(&m_stuVideoSVC,0,sizeof(m_stuVideoSVC));
    m_stuVideoSVC.dwSize = sizeof(m_stuVideoSVC);

    memset(&m_stuPack,0,sizeof(m_stuPack));
    m_stuPack.dwSize = sizeof(m_stuPack);

    memset(&m_stuCaps, 0 , sizeof(m_stuCaps));
    m_stuCaps.dwSize = sizeof(m_stuCaps);
}

void MainWindow::InitDlg()
{
//    GetSnapConfig(EM_SNAP_NORMAL);
//    {
//      OnSnapStuToDlg();
//    }
//    GetAudioConfig(EM_FORMAT_MAIN_NORMAL);
//    {
//        OnAudioStuToDlg();
//    }
    GetVideoConfig(EM_FORMAT_MAIN_NORMAL);
    {
        OnVideoStuToDlg();
    }
}

void MainWindow::GetEncodeCaps(int nChannel, bool bFirst, int streamType, CFG_VIDEO_COMPRESSION cmp, CFG_H264_PROFILE_RANK profile, int nWidth, int nHeight, int FPS)
{
    if (device.loginHandle ==0)
    {
        return;
    }

    char szBuffer[512*1024];
    if (NULL == szBuffer)
    {
        return;
    }
    int nerror = 0;
    char* cfg_cmd_encode = const_cast<char*>(CFG_CMD_ENCODE);
    int bRet = CLIENT_GetNewDevConfig(device.loginHandle, const_cast<char*>(CFG_CMD_ENCODE),0,szBuffer,sizeof(szBuffer),&nerror);
    if (!bRet)
    {
        ShowMessage("Get video channel property setup failed! "+QString::number(EC(CLIENT_GetLastError())));
    }
    int nRetLen = 0;
    bRet = CLIENT_ParseData(cfg_cmd_encode, reinterpret_cast<char*>(&szBuffer), reinterpret_cast<char*>(&m_stuEncodeInfo), sizeof(m_stuEncodeInfo), &nRetLen);
    if (!bFirst)
    {
        if (streamType < 3)
        {
            m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.emCompression = cmp;
            if (cmp == VIDEO_FORMAT_H264)
            {
                m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.abProfile = TRUE;
                m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.emProfile = profile;
            }

            m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.nWidth = nWidth;
            m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.nHeight = nHeight;
            m_stuEncodeInfo.stuMainStream[streamType].stuVideoFormat.nFrameRate = FPS * 1.0f;
        }
        else
        {
            streamType -= 3;
            m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.emCompression = cmp;
            if (cmp == VIDEO_FORMAT_H264)
            {
                m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.abProfile = TRUE;
                m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.emProfile = profile;
            }

            m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.nWidth = nWidth;
            m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.nHeight = nHeight;
            m_stuEncodeInfo.stuExtraStream[streamType].stuVideoFormat.nFrameRate = FPS * 1.0f;
        }

        m_stuEncodeVideoInfo.emCompression = (NET_EM_VIDEO_COMPRESSION)cmp;
        m_stuEncodeVideoInfo.nWidth = nWidth;
        m_stuEncodeVideoInfo.nHeight = nHeight;
        m_stuEncodeVideoInfo.nFrameRate = FPS * 1.0f;

        if (profile > 0)
        {
            m_stuVideoProFile.emProfile = (NET_EM_H264_PROFILE_RANK)profile;
        }
    }
    bRet = CLIENT_PacketData(QString(CFG_CMD_ENCODE).toLocal8Bit().data(), reinterpret_cast<LPVOID>(&m_stuEncodeInfo), sizeof(CFG_ENCODE_INFO), szBuffer, sizeof(szBuffer));
    if (bRet)
    {
        memset(&m_stuCaps,0,sizeof(NET_OUT_ENCODE_CFG_CAPS));
        NET_IN_ENCODE_CFG_CAPS stuInEncodeCaps = {sizeof(stuInEncodeCaps)};
        stuInEncodeCaps.nChannelId = nChannel;
        stuInEncodeCaps.pchEncodeJson = szBuffer;
        m_stuCaps.dwSize = sizeof(NET_OUT_ENCODE_CFG_CAPS);

        m_stuCaps.stuMainFormatCaps[0].dwSize = sizeof(NET_STREAM_CFG_CAPS);
        m_stuCaps.stuMainFormatCaps[1].dwSize = sizeof(NET_STREAM_CFG_CAPS);
        m_stuCaps.stuMainFormatCaps[2].dwSize = sizeof(NET_STREAM_CFG_CAPS);

        m_stuCaps.stuExtraFormatCaps[0].dwSize = sizeof(NET_STREAM_CFG_CAPS);
        m_stuCaps.stuExtraFormatCaps[1].dwSize = sizeof(NET_STREAM_CFG_CAPS);
        m_stuCaps.stuExtraFormatCaps[2].dwSize = sizeof(NET_STREAM_CFG_CAPS);

        m_stuCaps.stuSnapFormatCaps[0].dwSize = sizeof(NET_STREAM_CFG_CAPS);
        m_stuCaps.stuSnapFormatCaps[1].dwSize = sizeof(NET_STREAM_CFG_CAPS);

        BOOL bSuccess = CLIENT_GetDevCaps(device.loginHandle, NET_ENCODE_CFG_CAPS, &stuInEncodeCaps, &m_stuCaps, 500);
        if (!bSuccess)
        {
            QMessageBox msgBox;
            msgBox.setText("Get encode config capacity failed!");
            msgBox.exec();
        }
    }
}

void MainWindow::InitEncodeCtrl(NET_OUT_ENCODE_CFG_CAPS& stuCaps,int nStreamtype)
{
    int nIndex = 0;
    ui->cmbBitrateCtl->clear();
    int i = 0;
    for (i = 0; i<2; i++)
    {
        ui->cmbBitrateCtl->addItem(strBitRate_CTL[i], i);
    }
    ui->cmbImageQuality->clear();
    for (i = 0; i < 6; i++)
    {
        ui->cmbImageQuality->addItem(strImageQuarity[i], i);
    }
    ui->cmbFrameType->clear();
    for (i = 0; i < 2; i++)
    {
        ui->cmbFrameType->addItem(strFrameType[i], i);
    }
//    ui->cmbAudioFormat->ResetContent();
//    for (i = 0; i < 13;i++)
//    {
//        int nIndex = ui->cmbAudioFormat->AddString(strAudioCompression[i]);
//        ui->cmbAudioFormat->SetItemData(nIndex,i);
//    }
    if (nStreamtype>=0 &&nStreamtype<3)
    {
        ui->cmbFrameRate->clear();
        if (stuCaps.stuMainFormatCaps[nStreamtype].nFPSMax == 0)
        {
            stuCaps.stuMainFormatCaps[nStreamtype].nFPSMax = 25;
        }
        for (i =0; i<stuCaps.stuMainFormatCaps[nStreamtype].nFPSMax;++i)
        {
            ui->cmbFrameRate->addItem(QString::number(i+1), i);
        }
        int  nCmbRate = int(m_stuEncodeVideoInfo.nFrameRate) - 1;
        ui->cmbFrameRate->setCurrentIndex(nCmbRate);
        if (nCmbRate > stuCaps.stuMainFormatCaps[nStreamtype].nFPSMax)
        {
            ui->cmbFrameRate->setCurrentIndex(stuCaps.stuMainFormatCaps[nStreamtype].nFPSMax-1);
        }
        ui->cmbCompression->clear();
        const int nH264ProfileRankNum = stuCaps.stuMainFormatCaps[nStreamtype].nH264ProfileRankNum;
        const BYTE* bH264ProfileRank = stuCaps.stuMainFormatCaps[nStreamtype].bH264ProfileRank;
        for (i = 0; i<encodeCount;i++)
        {
            if (stuCaps.stuMainFormatCaps[nStreamtype].dwEncodeModeMask & (0x01<<i))
            {

                if (i == VIDEO_FORMAT_H264 && nH264ProfileRankNum)
                {
                    for (int j = 0; j < nH264ProfileRankNum; ++j)
                    {
                        ui->cmbCompression->addItem(profileName[bH264ProfileRank[j]-1], bH264ProfileRank[j] - 1 - profileCount);
                    }
                }
                else
                {
                    ui->cmbCompression->addItem(strVideoCompression[i], i);
                }
            }
        }
        ui->cmbResolution->clear();
        if (!stuCaps.stuMainFormatCaps[nStreamtype].abIndivResolution)
        {
            for (i = 0; i <stuCaps.stuMainFormatCaps[nStreamtype].nResolutionTypeNum; i++)
            {
                int nWidth = stuCaps.stuMainFormatCaps[nStreamtype].stuResolutionTypes[i].snWidth;
                int nHeight = stuCaps.stuMainFormatCaps[nStreamtype].stuResolutionTypes[i].snHight;
                int dwImageSizeMask = ResolutionInttoSize(nWidth,nHeight);
                int nIndex = -1;
                if (-1 == dwImageSizeMask)
                {
                    QString str;
                    QTextStream(&str) << nWidth << "*" << nHeight;
                    ui->cmbResolution->addItem(str, i);
                }
                else
                {
                    ui->cmbResolution->addItem(strName[dwImageSizeMask], i);
                }
            }
        }
        else
        {
            for (i = 0; i<encodeCount;i++)
            {
                if (stuCaps.stuMainFormatCaps[nStreamtype].dwEncodeModeMask & (0x01<<i))
                {
                    for (int j = 0; j<stuCaps.stuMainFormatCaps[nStreamtype].nIndivResolutionNums[i];j++)
                    {
                        int nWidth = stuCaps.stuMainFormatCaps[nStreamtype].stuIndivResolutionTypes[i][j].snWidth;
                        int nHeight = stuCaps.stuMainFormatCaps[nStreamtype].stuIndivResolutionTypes[i][j].snHight;
                        int dwImageSizeMask = ResolutionInttoSize(nWidth,nHeight);
                        int nIndex = -1;
                        if (-1 == dwImageSizeMask)
                        {
                            QString str;
                            QTextStream(&str) << nWidth << "*" << nHeight;
                            ui->cmbResolution->addItem(str, i);
                        }
                        else
                        {
                            ui->cmbResolution->addItem(strName[dwImageSizeMask], i);
                        }
                    }
                    break;
                }
            }
        }
        ui->cmbBitrate->clear();
        int nMinBitRate = 0;
        int nMaxBitRate = 31;
        for (i = 0; i < 32; i++)
        {
            if (0 == nMinBitRate && stuCaps.stuMainFormatCaps[nStreamtype].nMinBitRateOptions <= bitRateAll[i])
            {
                nMinBitRate = i;
                break;
            }
        }

        for (i = 31; i >= 0; i--)
        {
            if (31 == nMaxBitRate && stuCaps.stuMainFormatCaps[nStreamtype].nMaxBitRateOptions >= bitRateAll[i])
            {
                nMaxBitRate =i;
                break;
            }
        }
        for (i = 0; i<(nMaxBitRate-nMinBitRate+1); i++)
        {
            ui->cmbBitrate->addItem(QString::number(bitRateAll[nMinBitRate+i]), i);
        }
        ui->cmbBitrate->addItem(STRDEFINE, -1);
    }
    else if (nStreamtype>=3 && nStreamtype<6)
    {
        nStreamtype = nStreamtype -3;
        ui->cmbFrameRate->clear();
        if (stuCaps.stuExtraFormatCaps[nStreamtype].nFPSMax == 0)
        {
            stuCaps.stuExtraFormatCaps[nStreamtype].nFPSMax = 25;
        }
        for (i = 0; i < stuCaps.stuExtraFormatCaps[nStreamtype].nFPSMax; ++i)
        {
            ui->cmbFrameRate->addItem(QString::number(i+1), i);
        }
        int  nCmbRate = int(m_stuEncodeVideoInfo.nFrameRate) - 1;
        ui->cmbFrameRate->setCurrentIndex(nCmbRate);
        if (nCmbRate > stuCaps.stuExtraFormatCaps[nStreamtype].nFPSMax)
        {
            ui->cmbFrameRate->setCurrentIndex(stuCaps.stuExtraFormatCaps[nStreamtype].nFPSMax-1);
        }
        ui->cmbCompression->clear();
        const int nH264ProfileRankNum = stuCaps.stuExtraFormatCaps[nStreamtype].nH264ProfileRankNum;
        const BYTE* bH264ProfileRank = stuCaps.stuExtraFormatCaps[nStreamtype].bH264ProfileRank;
        for (i = 0; i < encodeCount; i++)
        {
            if (stuCaps.stuExtraFormatCaps[nStreamtype].dwEncodeModeMask & (0x01<<i))
            {

                if (i == VIDEO_FORMAT_H264 && nH264ProfileRankNum)
                {
                    for (int j = 0; j < nH264ProfileRankNum; ++j)
                    {
                        ui->cmbCompression->addItem(profileName[bH264ProfileRank[j]-1], bH264ProfileRank[j] - 1 - profileCount);
                    }
                }
                else
                {
                    ui->cmbCompression->addItem(strVideoCompression[i], i);
                }
            }
        }
//         ui->cmbResolution->ResetContent();
//         for (i = 0; i <stuCaps.stuExtraFormatCaps[nStreamtype].nResolutionTypeNum; i++)
//         {
//             int nWidth = stuCaps.stuExtraFormatCaps[nStreamtype].stuResolutionTypes[i].snWidth;
//             int nHeight = stuCaps.stuExtraFormatCaps[nStreamtype].stuResolutionTypes[i].snHight;
//             int dwImageSizeMask = ResolutionInttoSize(nWidth,nHeight);
//             int nIndex = ui->cmbResolution->AddString(strName[dwImageSizeMask]);
//             ui->cmbResolution->SetItemData(nIndex,i);
//         }
        ui->cmbResolution->clear();
        if (!stuCaps.stuExtraFormatCaps[nStreamtype].abIndivResolution)
        {
            for (i = 0; i < stuCaps.stuExtraFormatCaps[nStreamtype].nResolutionTypeNum; i++)
            {
                int nWidth = stuCaps.stuExtraFormatCaps[nStreamtype].stuResolutionTypes[i].snWidth;
                int nHeight = stuCaps.stuExtraFormatCaps[nStreamtype].stuResolutionTypes[i].snHight;
                int dwImageSizeMask = ResolutionInttoSize(nWidth,nHeight);
                int nIndex = -1;
                if (-1 == dwImageSizeMask)
                {
                    QString str;
                    QTextStream(&str) << nWidth << "*" << nHeight;
                    ui->cmbResolution->addItem(str, i);
                }
                else
                {
                    ui->cmbResolution->addItem(strName[dwImageSizeMask], i);
                }
            }
        }
        else
        {
            for (i = 0; i < encodeCount;i++)
            {
                if (stuCaps.stuExtraFormatCaps[nStreamtype].dwEncodeModeMask & (0x01<<i))
                {
                    for (int j = 0; j<stuCaps.stuExtraFormatCaps[nStreamtype].nIndivResolutionNums[i];j++)
                    {
                        int nWidth = stuCaps.stuExtraFormatCaps[nStreamtype].stuIndivResolutionTypes[i][j].snWidth;
                        int nHeight = stuCaps.stuExtraFormatCaps[nStreamtype].stuIndivResolutionTypes[i][j].snHight;
                        int dwImageSizeMask = ResolutionInttoSize(nWidth,nHeight);
                        int nIndex = -1;
                        if (-1 == dwImageSizeMask)
                        {
                            QString str;
                            QTextStream(&str) << nWidth << "*" << nHeight;
                            ui->cmbResolution->addItem(str, j);
                        }
                        else
                        {
                            ui->cmbResolution->addItem(strName[dwImageSizeMask], j);
                        }
                    }
                    break;
                }
            }
        }
        ui->cmbBitrate->clear();
        int nMinBitRate = 0;
        int nMaxBitRate = 0;
        for (i = 0; i < 32; i++)
        {
            if (stuCaps.stuExtraFormatCaps[nStreamtype].nMinBitRateOptions == bitRateAll[i])
            {
                nMinBitRate = i;
            }
            if (stuCaps.stuExtraFormatCaps[nStreamtype].nMaxBitRateOptions == bitRateAll[i])
            {
                nMaxBitRate =i;
            }
        }
        for (i = 0; i < (nMaxBitRate-nMinBitRate+1); i++)
        {
            ui->cmbBitrate->addItem(QString::number(bitRateAll[nMinBitRate+i]), i);
        }
        ui->cmbBitrate->addItem(STRDEFINE, -1);
    }

//    if (0 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuMainFormatCaps[0].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuMainFormatCaps[0].nMaxBitRateOptions);
//    }
//    else if (1 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuMainFormatCaps[1].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuMainFormatCaps[1].nMaxBitRateOptions);
//    }
//    else if (2 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuMainFormatCaps[2].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuMainFormatCaps[2].nMaxBitRateOptions);
//    }
//    else if (3 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuExtraFormatCaps[0].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuExtraFormatCaps[0].nMaxBitRateOptions);
//    }
//    else if (4 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuExtraFormatCaps[1].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuExtraFormatCaps[1].nMaxBitRateOptions);
//    }
//    else if (5 == ui->cmbFormat->GetCurSel())
//    {
//        SetDlgItemInt(IDC_STATIC_MIN, stuCaps.stuExtraFormatCaps[2].nMinBitRateOptions);
//        SetDlgItemInt(IDC_STATIC_MAX, stuCaps.stuExtraFormatCaps[2].nMaxBitRateOptions);
//    }
}

void MainWindow::UpdateEncodeCaps()
{
    int nChn = ui->cmbChannelCount->currentData().toInt();
    int nStream = ui->cmbFormat->currentIndex();

    int nIndex = ui->cmbCompression->currentIndex();
    QString strCmp;
    if (nIndex >= 0)
    {
        strCmp = ui->cmbCompression->currentText();
    }
    CFG_VIDEO_COMPRESSION emCmp = VIDEO_FORMAT_MPEG4;
    CFG_H264_PROFILE_RANK emProfile = PROFILE_BASELINE;
    int i = 0;
    for (i = 0; i < 4; i++)
    {
        if (0 == QString::compare(strCmp, profileName[i], Qt::CaseInsensitive))
        {
            emCmp = VIDEO_FORMAT_H264;
            emProfile = (CFG_H264_PROFILE_RANK)(emProfile + i);
            break;
        }
    }

    if (i == 4)
    {
        for (int j = 0; j < sizeof(strVideoCompression) / sizeof(char *); j++)
        {
            if (0 == QString::compare(strCmp, strVideoCompression[j], Qt::CaseInsensitive))
            {
                emCmp = (CFG_VIDEO_COMPRESSION)j;
                break;
            }
        }
    }

    nIndex = ui->cmbResolution->currentIndex();
    QString strRes;
    if (nIndex >= 0)
    {
        strRes = ui->cmbResolution->currentText();
    }
    int n = strRes.indexOf("*", 0);
    int nW = 0;
    int nH = 0;
    for (i = 0; i < 36; i++)
    {
        if (0 == QString::compare(strRes, strName[i], Qt::CaseInsensitive))
        {
            ResolutionSizeToInt(i, nW, nH);
            break;
        }
    }
    if (i == 36)
    {
        nW = strRes.left(n).toInt();
        int nLen = strRes.length();
        nH = strRes.right(nLen - n - 1).toInt();
    }

    nIndex = ui->cmbFrameRate->currentIndex();
    int nFps = 0;
    if (nIndex >= 0)
    {
        QString strFps;
        nFps = ui->cmbFrameRate->currentText().toInt();
    }

    GetEncodeCaps(nChn, false, nStream, emCmp, emProfile, nW, nH, nFps);

    InitEncodeCtrl(m_stuCaps, nStream);
    OnVideoStuToDlg();
}
bool MainWindow::GetVideoConfig(NET_EM_FORMAT_TYPE emType)
{
    m_stuEncodeVideoInfo.emFormatType = emType;
    BOOL bRet = CLIENT_GetConfig(device.loginHandle,NET_EM_CFG_ENCODE_VIDEO,m_nChannel,&m_stuEncodeVideoInfo,sizeof(m_stuEncodeVideoInfo),TIMEOUT);
    m_stuVideoProFile.emFormatType = emType;
    bRet = CLIENT_GetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_PROFILE, m_nChannel,&m_stuVideoProFile,sizeof(m_stuVideoProFile),TIMEOUT);
    m_stuVideoSVC.emFormatType = emType;
    bRet = CLIENT_GetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_SVC,m_nChannel, &m_stuVideoSVC,sizeof(m_stuVideoSVC),TIMEOUT);
    m_stuPack.emFormatType = emType;
    bRet = CLIENT_GetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_PACK, m_nChannel ,&m_stuPack,sizeof(m_stuPack),TIMEOUT);
    return bRet;
}

bool MainWindow::SetVideoConfig()
{
    BOOL bRet = CLIENT_SetConfig(device.loginHandle,NET_EM_CFG_ENCODE_VIDEO,m_nChannel,&m_stuEncodeVideoInfo,sizeof(m_stuEncodeVideoInfo),TIMEOUT);
    bRet = CLIENT_SetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_PROFILE, m_nChannel,&m_stuVideoProFile,sizeof(m_stuVideoProFile),TIMEOUT);
    bRet = CLIENT_SetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_SVC,m_nChannel, &m_stuVideoSVC,sizeof(m_stuVideoSVC),TIMEOUT);
    bRet = CLIENT_SetConfig(device.loginHandle, NET_EM_CFG_ENCODE_VIDEO_PACK, m_nChannel ,&m_stuPack,sizeof(m_stuPack),TIMEOUT);
    return bRet;
}
void MainWindow::OnVideoStuToDlg()
{
    if (m_stuEncodeVideoInfo.bVideoEnable)
    {
        ui->chkVideoEnable->setChecked(BST_CHECKED);
    }
    else
    {
        ui->chkVideoEnable->setChecked(BST_UNCHECKED);
    }
    if (m_stuCaps.stuMainFormatCaps[0].nH264ProfileRankNum == 0)
    {
        m_stuVideoProFile.emProfile = EM_PROFILE_UNKNOWN;
    }
    if (m_stuEncodeVideoInfo.emCompression == VIDEO_FORMAT_H264 && m_stuVideoProFile.emProfile != EM_PROFILE_UNKNOWN)
    {
        int nIndex = ui->cmbCompression->findText(profileName[m_stuVideoProFile.emProfile - 1]);
        ui->cmbCompression->setCurrentIndex(nIndex);
    }
    else
    {
        int nIndex = ui->cmbCompression->findText(strVideoCompression[m_stuEncodeVideoInfo.emCompression]);
        ui->cmbCompression->setCurrentIndex(nIndex);
    }
    int  nCmbRate = int(m_stuEncodeVideoInfo.nFrameRate) - 1;
    ui->cmbFrameRate->setCurrentIndex(nCmbRate);
    if (m_stuCaps.stuMainFormatCaps[0].nFPSMax == 0)
    {
        m_stuCaps.stuMainFormatCaps[0].nFPSMax = 25;
    }
    if (nCmbRate > m_stuCaps.stuMainFormatCaps[0].nFPSMax)
    {
        ui->cmbFrameRate->setCurrentIndex(m_stuCaps.stuMainFormatCaps[0].nFPSMax-1);
    }
    DWORD dwResolution = ResolutionInttoSize(m_stuEncodeVideoInfo.nWidth,m_stuEncodeVideoInfo.nHeight);
    int nIndex = -1;
    if ( -1 == dwResolution)
    {
        QString str;
        QTextStream(&str) << m_stuEncodeVideoInfo.nWidth << "*" << m_stuEncodeVideoInfo.nHeight;
        nIndex = ui->cmbResolution->findText(str);
    }
    else
    {
        nIndex = ui->cmbResolution->findText(strName[dwResolution]);
    }
    ui->cmbResolution->setCurrentIndex(nIndex);
    m_nInterval = m_stuEncodeVideoInfo.nIFrameInterval;
    ui->editIframeInterval->setText(QString::number(m_nInterval));
    ui->cmbBitrateCtl->setCurrentIndex(m_stuEncodeVideoInfo.emBitRateControl);
    if (0 == m_stuEncodeVideoInfo.emBitRateControl)
    {
        ui->cmbImageQuality->hide();
        ui->labelImageQuality->hide();
    }
    else
    {
        ui->cmbImageQuality->show();
        ui->labelImageQuality->show();
    }
    QString str = QString::number(m_stuEncodeVideoInfo.nBitRate);
    nIndex = ui->cmbBitrate->findText(str);
    if (nIndex == CB_ERR)
    {
        nIndex = ui->cmbBitrate->count();
        ui->cmbBitrate->setCurrentIndex(nIndex - 1);
        ui->labelBitrate->show();
        ui->editBitrate->show();
        m_nEditBitRate = m_stuEncodeVideoInfo.nBitRate;
        ui->editBitrate->setText(QString::number(m_nEditBitRate));
    }
    else
    {
        ui->cmbBitrate->setCurrentIndex(nIndex);
        ui->labelBitrate->hide();
        ui->editBitrate->hide();
        m_nEditBitRate = m_stuEncodeVideoInfo.nBitRate;
        ui->editBitrate->setText(QString::number(m_nEditBitRate));
    }

    ui->cmbFrameType->setCurrentIndex(m_stuPack.emPackType -1);
    ui->cmbImageQuality->setCurrentIndex(m_stuEncodeVideoInfo.emImageQuality-1);
    m_nSvc = m_stuVideoSVC.nSVC;
    ui->editSVC->setText(QString::number(m_nSvc));
    //UpdateData(FALSE);
}

void MainWindow::OnVideoDlgToStu()
{
    //UpdateData();
    m_stuEncodeVideoInfo.emFormatType = (NET_EM_FORMAT_TYPE)(ui->cmbFormat->currentIndex()+1);
    m_stuEncodeVideoInfo.bVideoEnable = ui->chkVideoEnable->isChecked();
    QString str;
    int nIndex = ui->cmbCompression->currentIndex();
    if (nIndex >=0)
    {
        str = ui->cmbCompression->currentText();
    }

    int i = 0;
    for (i = 0;i < encodeCount; i++)
    {
        if (str == strVideoCompression[i])
        {
            m_stuEncodeVideoInfo.emCompression = (NET_EM_VIDEO_COMPRESSION)i;
            break;
        }
    }
    m_stuVideoProFile.emFormatType = NET_EM_FORMAT_TYPE(ui->cmbFormat->currentIndex()+1);
    for (i = 0;i<profileCount;i++)
    {
        if (str == profileName[i])
        {
            m_stuEncodeVideoInfo.emCompression = EM_VIDEO_FORMAT_H264;
            m_stuVideoProFile.emProfile = (NET_EM_H264_PROFILE_RANK)(i+1);
        }
    }
    m_stuEncodeVideoInfo.nFrameRate = ui->cmbFrameRate->currentIndex() + 1.0f;
    nIndex = ui->cmbResolution->currentIndex();
    if (nIndex >=0)
    {
        str = ui->cmbResolution->currentText();
    }
    int n = str.indexOf("*",0);
    for (i = 0;i < 36;i++)
    {
        int nWidth = 0;
        int nHeight = 0;
        if (str == strName[i])
        {
            ResolutionSizetoInt(i,&nWidth,&nHeight);
            m_stuEncodeVideoInfo.nWidth = nWidth;
            m_stuEncodeVideoInfo.nHeight = nHeight;
            break;
        }
    }
    if (i == 36)
    {
        m_stuEncodeVideoInfo.nWidth = str.left(n).toInt();
        int nLen = str.length();
        m_stuEncodeVideoInfo.nHeight = str.right(nLen - n - 1).toInt();
    }
    m_nInterval = ui->editIframeInterval->text().toInt();
    m_stuEncodeVideoInfo.nIFrameInterval = m_nInterval;
    m_stuEncodeVideoInfo.emBitRateControl = (NET_EM_BITRATE_CONTROL)ui->cmbBitrateCtl->currentIndex();
    nIndex = ui->cmbBitrate->currentIndex();
    if (nIndex >=0)
    {
        str = ui->cmbBitrate->currentText();
    }
    if (0 == QString::compare(str, STRDEFINE, Qt::CaseInsensitive))
    {
        m_nEditBitRate = ui->editBitrate->text().toInt();
        m_stuEncodeVideoInfo.nBitRate = m_nEditBitRate;
    }
    else
    {
        m_stuEncodeVideoInfo.nBitRate = str.toInt();
    }

    m_stuEncodeVideoInfo.emImageQuality = (NET_EM_IMAGE_QUALITY)(ui->cmbImageQuality->currentIndex()+1);
    m_stuVideoSVC.emFormatType = (NET_EM_FORMAT_TYPE)(ui->cmbFormat->currentIndex()+1);
    m_nSvc = ui->editSVC->text().toInt();
    m_stuVideoSVC.nSVC = m_nSvc;
    m_stuPack.emFormatType = (NET_EM_FORMAT_TYPE)(ui->cmbFormat->currentIndex()+1);
    m_stuPack.emPackType = (NET_EM_PACK_TYPE)(ui->cmbFrameType->currentIndex()+1);
}

void MainWindow::ShowLoginErrorReason(int nError)
{
    if(1 == nError)		ShowMessage("Invalid password!");
    else if(2 == nError)	ShowMessage("Invalid account!");
    else if(3 == nError)	ShowMessage("Timeout!");
    else if(4 == nError)	ShowMessage("The user has logged in!");
    else if(5 == nError)	ShowMessage("The user has been locked!");
    else if(6 == nError)	ShowMessage("The user has listed into illegal!");
    else if(7 == nError)	ShowMessage("The system is busy!");
    else if(9 == nError)	ShowMessage("You Can't find the network server!");
    else	ShowMessage("Login failed!");
}

void MainWindow::ShowMessage(QString msg)
{
    QMessageBox msgBox;
    msgBox.setText(msg);
    msgBox.exec();
}

void MainWindow::AddChannelCount(int nChannelCount)
{
    QString str;
    ui->cmbChannelCount->clear();
    int i = 0;
    for (i= 0;i<nChannelCount; ++i)
    {
        ui->cmbChannelCount->addItem(QString::number(i+1), i);

    }
    ui->cmbChannelCount->setCurrentIndex(0);

    ui->cmbFormat->clear();
    for (i = 0; i < 6; ++i)
    {
        qDebug() << i;
        //ui->cmbFormat->addItem(strFormat[i], i);
        ui->cmbFormat->addItem(strFormat[i]);
    }
    ui->cmbFormat->setCurrentIndex(0);

//    int nSnapCount = sizeof(strSnapFormat)/sizeof(strSnapFormat[0]);
//    m_Cmb_SnapType.ResetContent();
//    for (i = 0; i < nSnapCount; i++)
//    {
//        nIndex = m_Cmb_SnapType.AddString(ConvertString(strSnapFormat[i]));
//        m_Cmb_SnapType.SetItemData(nIndex,i);
//    }
//    m_Cmb_SnapType.SetCurSel(0);
}

int MainWindow::ResolutionInttoSize(int nWidth, int nHeight)
{
    int nResolution = 0;

    if (nWidth == 704 && nHeight == 576)
    {
        nResolution = 0;
    }
    else if (nWidth == 352 && nHeight == 576)
    {
        nResolution = 1;
    }
    else if (nWidth == 704 && nHeight == 288)
    {
        nResolution = 2;
    }
    else if (nWidth == 352 && nHeight == 288)
    {
        nResolution = 3;
    }
    else if (nWidth == 176 && nHeight == 144)
    {
        nResolution = 4;
    }
    else if (nWidth == 640 && nHeight == 480)
    {
        nResolution = 5;
    }
    else if (nWidth == 320 && nHeight == 240)
    {
        nResolution = 6;
    }
    else if (nWidth == 480 && nHeight == 480)
    {
        nResolution = 7;
    }
    else if (nWidth == 160 && nHeight == 128)
    {
        nResolution = 8;
    }
    else if (nWidth == 800 && nHeight == 592)
    {
        nResolution = 9;
    }
    else if (nWidth == 1024 && nHeight == 768)
    {
        nResolution = 10;
    }
    else if (nWidth == 1280 && nHeight == 800)
    {
        nResolution = 11;
    }
    else if (nWidth == 1280 && nHeight == 1024)
    {
        nResolution = 12;
    }
    else if (nWidth == 1600 && nHeight == 1024)
    {
        nResolution = 13;
    }
    else if (nWidth == 1600 && nHeight == 1200)
    {
        nResolution = 14;
    }
    else if (nWidth == 1920 && nHeight == 1200)
    {
        nResolution = 15;
    }
    else if (nWidth == 240 && nHeight == 192)
    {
        nResolution = 16;
    }
    else if (nWidth == 1280 && nHeight == 720)
    {
        nResolution = 17;
    }
    else if (nWidth == 1920 && nHeight == 1080)
    {
        nResolution = 18;
    }
    else if (nWidth == 1280 && nHeight == 960)
    {
        nResolution = 19;
    }
    else if (nWidth == 1872 && nHeight == 1408)
    {
        nResolution = 20;
    }
    else if (nWidth == 3744 && nHeight == 1408)
    {
        nResolution = 21;
    }
    else if (nWidth == 2048 && nHeight == 1536)
    {
        nResolution = 22;
    }
    else if (nWidth == 2432 && nHeight == 2050)
    {
        nResolution = 23;
    }
    else if (nWidth == 1216 && nHeight == 1024)
    {
        nResolution = 24;
    }
    else if (nWidth == 1408 && nHeight == 1024)
    {
        nResolution = 25;
    }
    else if (nWidth == 3296 && nHeight == 2472)
    {
        nResolution = 26;
    }
    else if (nWidth == 2560 && nHeight == 1920)
    {
        nResolution = 27;
    }
    else if (nWidth == 960 && nHeight == 576)
    {
        nResolution = 28;
    }
    else if (nWidth == 960 && nHeight == 720)
    {
        nResolution = 29;
    }
    else if (nWidth == 640 && nHeight == 360)
    {
        nResolution = 30;
    }
    else if (nWidth == 320 && nHeight == 180)
    {
        nResolution = 31;
    }
    else if (nWidth == 160 && nHeight == 90)
    {
        nResolution = 32;
    }
    else if (nWidth == 4000 && nHeight == 3000)
    {
        nResolution = 33;
    }
    else if (nWidth == 4096 && nHeight == 2160)
    {
        nResolution = 34;
    }
    else if (nWidth == 3840 && nHeight == 2160)
    {
        nResolution = 35;
    }
    else
    {
        nResolution = -1;
    }
    return nResolution;
}

void MainWindow::ResolutionSizetoInt(int nResolution, int *nWidth, int *nHeight)
{

    switch (nResolution)
    {
        case 0: 			*nWidth = 704;	*nHeight = 576;		break;//D1
        case 1:				*nWidth = 352;	*nHeight = 576;		break;//HD1
        case 2:				*nWidth = 704;	*nHeight = 288;		break;//BCIF
        case 3:				*nWidth = 352;	*nHeight = 288;		break;//CIF
        case 4:				*nWidth = 176;	*nHeight = 144;		break;//QCIF
        case 5:				*nWidth = 640;	*nHeight = 480;		break;//VGA
        case 6:				*nWidth = 320;	*nHeight = 240;		break;//QVGA
        case 7:				*nWidth = 480;	*nHeight = 480;		break;//SVCD
        case 8:				*nWidth = 160;	*nHeight = 128;		break;//QQVGA
        case 9:				*nWidth = 800;  *nHeight = 592;		break;//SVGA
        case 10:			*nWidth = 1024;	*nHeight = 768;		break;//XVGA
        case 11: 			*nWidth = 1280;	*nHeight = 800;		break;//WXGA
        case 12:			*nWidth = 1280;	*nHeight = 1024;	break;//SXGA
        case 13:			*nWidth = 1600;	*nHeight = 1024;	break;//WSXGA
        case 14:			*nWidth = 1600;	*nHeight = 1200;	break;//UXGA
        case 15:			*nWidth = 1920;	*nHeight = 1200;	break;//WUXGA
        case 16:			*nWidth = 240;	*nHeight = 192;		break;//LTF
        case 17:			*nWidth = 1280;	*nHeight = 720;		break;//720
        case 18:			*nWidth = 1920;	*nHeight = 1080;	break;//1080
        case 19:			*nWidth = 1280;	*nHeight = 960;		break;//1_3M
        case 20:			*nWidth = 1872;	*nHeight = 1408;	break;//2M
        case 21:			*nWidth = 3744;	*nHeight = 1408;	break;//5M
        case 22:			*nWidth = 2048;	*nHeight = 1536;	break;//3M
        case 23:			*nWidth = 2432;	*nHeight = 2050;	break;//5_0M
        case 24:			*nWidth = 1216;	*nHeight = 1024;	break;//1_2M
        case 25:			*nWidth = 1408;	*nHeight = 1024;	break;//1408_1024
        case 26:			*nWidth = 3296;	*nHeight = 2472;	break;//8M
        case 27:			*nWidth = 2560;	*nHeight = 1920;	break;//2560_1920
        case 28:			*nWidth = 960;	*nHeight = 576;		break;//960H
        case 29:			*nWidth = 960;  *nHeight = 720;		break;//960_720
        case 30:			*nWidth = 640;	*nHeight = 360;		break;//NHD
        case 31:			*nWidth = 320;	*nHeight = 180;		break;//QNHD
        case 32:			*nWidth = 160;	*nHeight = 90;		break;//QQNHD
        case 33:            *nWidth = 4000; *nHeight = 3000;    break;
        case 34:            *nWidth = 4096; *nHeight = 2160;    break;
        case 35:            *nWidth = 3840; *nHeight = 2160;    break;
        default:	assert(FALSE);				break;
    }

}

void MainWindow::ResolutionSizeToInt(int nSize, int& nWidth, int& nHeight)
{
    switch (nSize)
    {
    case 0:
        nWidth = 704 ; nHeight = 576 ;
        break;
    case 1:
        nWidth = 352 ; nHeight = 576 ;
        break;
    case 2:
        nWidth = 704 ; nHeight = 288 ;
        break;
    case 3:
        nWidth = 352 ; nHeight = 288 ;
        break;
    case 4:
        nWidth = 176 ; nHeight = 144 ;
        break;
    case 5:
        nWidth = 640 ; nHeight = 480 ;
        break;
    case 6:
        nWidth = 320 ; nHeight = 240 ;
        break;
    case 7:
        nWidth = 480 ; nHeight = 480 ;
        break;
    case 8:
        nWidth = 160 ; nHeight = 128 ;
        break;
    case 9:
        nWidth = 800 ; nHeight = 592 ;
        break;
    case 10:
        nWidth = 1024 ; nHeight = 768 ;
        break;
    case 11:
        nWidth = 1280 ; nHeight = 800 ;
        break;
    case 12:
        nWidth = 1280 ; nHeight = 1024 ;
        break;
    case 13:
        nWidth = 1600 ; nHeight = 1024 ;
        break;
    case 14:
        nWidth = 1600 ; nHeight = 1200 ;
        break;
    case 15:
        nWidth = 1920 ; nHeight = 1200 ;
        break;
    case 16:
        nWidth = 240 ; nHeight = 192 ;
        break;
    case 17:
        nWidth = 1280 ; nHeight = 720 ;
        break;
    case 18:
        nWidth = 1920 ; nHeight = 1080 ;
        break;
    case 19:
        nWidth = 1280 ; nHeight = 960 ;
        break;
    case 20:
        nWidth = 1872 ; nHeight = 1408 ;
        break;
    case 21:
        nWidth = 3744 ; nHeight = 1408 ;
        break;
    case 22:
        nWidth = 2048 ; nHeight = 1536 ;
        break;
    case 23:
        nWidth = 2432 ; nHeight = 2050 ;
        break;
    case 24:
        nWidth = 1216 ; nHeight = 1024 ;
        break;
    case 25:
        nWidth = 1408 ; nHeight = 1024 ;
        break;
    case 26:
        nWidth = 3296 ; nHeight = 2472 ;
        break;
    case 27:
        nWidth = 2560 ; nHeight = 1920 ;
        break;
    case 28:
        nWidth = 960 ; nHeight = 576 ;
        break;
    case 29:
        nWidth = 960 ; nHeight = 720 ;
        break;
    case 30:
        nWidth = 640 ; nHeight = 360 ;
        break;
    case 31:
        nWidth = 320 ; nHeight = 180 ;
        break;
    case 32:
        nWidth = 160 ; nHeight = 90 ;
        break;
    case 33:
        nWidth = 4000; nHeight = 3000;
        break;
    case 34:
        nWidth = 4096; nHeight = 2160;
        break;
    case 35:
        nWidth = 3840; nHeight = 2160;
        break;
    default:
        break;
    }
}

void MainWindow::UpdateData(bool toVars)
{
    if (toVars)
    {
        m_nEditBitRate = ui->editBitrate->text().toInt();
        m_nInterval = ui->editIframeInterval->text().toInt();
        m_nSvc = ui->editSVC->text().toInt();
    }
    else
    {
        ui->editBitrate->setText(QString::number(m_nEditBitRate));
        ui->editIframeInterval->setText(QString::number(m_nInterval));
        ui->editSVC->setText(QString::number(m_nSvc));
    }
}

void MainWindow::on_cmbBitrateCtl_activated(int index)
{
    if (index == 0)
    {
         ui->cmbImageQuality->hide();
         ui->labelImageQuality->hide();
    }
    else
    {
        ui->cmbImageQuality->show();
        ui->labelImageQuality->show();
    }
}

void MainWindow::on_cmbBitrate_activated(int index)
{
    if (0 == QString::compare(ui->cmbBitrate->currentText(), STRDEFINE, Qt::CaseInsensitive))
    {
        ui->labelBitrate->show();
        ui->editBitrate->show();
        m_nEditBitRate = m_stuEncodeVideoInfo.nBitRate;
        ui->editBitrate->setText(QString::number(m_nEditBitRate));
    }
    else
    {
        ui->labelBitrate->hide();
        ui->editBitrate->hide();
    }
}

void MainWindow::on_cmbChannelCount_activated(int index)
{
    CLIENT_StopRealPlay(m_DispHanle);
    m_DispHanle = 0;
    const int i= ui->cmbChannelCount->currentIndex();
    if (m_nChannel == index)
    {
        return;
    }
    m_nChannel = i;
    LLONG lRet = CLIENT_RealPlayEx(device.loginHandle,m_nChannel,(HWND)(ui->widget->winId()),DH_RType_Realplay_0);
    if(0 != lRet)
    {
        m_DispHanle = lRet;
    }
    else
    {
        ShowMessage("Play failed");
    }
    ui->cmbFormat->setCurrentIndex(0);
    GetEncodeCaps(m_nChannel, true);
    InitEncodeCtrl(m_stuCaps,0);
//    InitSnapCtrl(m_stuCaps,0);

    MainWindow::InitDlg();

//    Invalidate();
}

void MainWindow::on_cmbCompression_activated(int index)
{
    // TODO: Add your control notification handler code here
    // С№ЛхДЈКЅ±д»ЇЈ¬РиТЄёьРВ·Ц±жВКЎўЦЎВКЎўВлБч·¶О§
    int nIndex = index;//ui->cmbCompression->GetCurSel();
    if(CB_ERR != nIndex)
    {
        UpdateEncodeCaps();
    }
}

void MainWindow::on_cmbFrameRate_activated(int index)
{
    // TODO: Add your control notification handler code here
    // ЦЎВК±д»ЇЈ¬РиТЄёьРВВлБч·¶О§

    int nIndex = index;//ui->cmbFrameRate->GetCurSel();
    if(CB_ERR != nIndex)
    {
        UpdateEncodeCaps();
    }
}

void MainWindow::on_cmbFormat_activated(int index)
{
    int nStreamType = index; //ui->cmbFormat->GetCurSel();
    InitEncodeCtrl(m_stuCaps,nStreamType);
//    GetAudioConfig((NET_EM_FORMAT_TYPE)(nStreamType +1));
//    OnAudioStuToDlg();
    GetVideoConfig((NET_EM_FORMAT_TYPE)(nStreamType +1));
    OnVideoStuToDlg();

    if (nStreamType>= 0&&nStreamType<3)
    {
        CLIENT_StopRealPlay(m_DispHanle);
        m_DispHanle = 0;
        const int i= ui->cmbChannelCount->currentIndex();
        m_nChannel = i;
        LLONG lRet = CLIENT_RealPlayEx(device.loginHandle,m_nChannel,(HWND)(ui->widget->winId()),DH_RType_Realplay_0);
        if(0 != lRet)
        {
            m_DispHanle = lRet;
        }
        else
        {
            //MessageBox(ConvertString("Play failed"), ConvertString("Prompt"));
        }
    }
    else if(nStreamType >=3 && nStreamType<6)
    {
        CLIENT_StopRealPlay(m_DispHanle);
        m_DispHanle = 0;
        const int i= ui->cmbChannelCount->currentIndex();
        m_nChannel = i;
        LLONG lRet = CLIENT_RealPlayEx(device.loginHandle,m_nChannel,(HWND)(ui->widget->winId()),DH_RealPlayType(DH_RType_Realplay_0+nStreamType-2));
        if(0 != lRet)
        {
            m_DispHanle = lRet;
        }
        else
        {
//            MessageBox(ConvertString("Play failed"), ConvertString("Prompt"));
        }
    }
}


void MainWindow::on_btnSetVideo_clicked()
{
    OnVideoDlgToStu();
    if (!SetVideoConfig())
    {
       //MessageBox(ConvertString("Setting Video Config failed!"),ConvertString("Prompt"));
        QMessageBox msgBox;
        msgBox.setText("Setting Video Config failed!");
        msgBox.exec();
    }
}

void MainWindow::on_btnLogin_clicked()
{
//       char *pchDVRIP;
////       CString strDvrIP = GetDvrIP();
//       pchDVRIP = ui->editIP->text().toLocal8Bit().data();
//       WORD wDVRPort=ui->editUsername->text().toInt();
//       char *pchUserName=ui->editUsername->text().toLocal8Bit().data();
//       char *pchPassword=ui->editPassword->text().toLocal8Bit().data();

//       NET_IN_LOGIN_WITH_HIGHLEVEL_SECURITY stInparam;
//       memset(&stInparam, 0, sizeof(stInparam));
//       stInparam.dwSize = sizeof(stInparam);
//       strncpy(stInparam.szIP, pchDVRIP, sizeof(stInparam.szIP) - 1);
//       strncpy(stInparam.szPassword, pchPassword, sizeof(stInparam.szPassword) - 1);
//       strncpy(stInparam.szUserName, pchUserName, sizeof(stInparam.szUserName) - 1);
//       stInparam.nPort = wDVRPort;
//       stInparam.emSpecCap = EM_LOGIN_SPEC_CAP_TCP;

//       NET_OUT_LOGIN_WITH_HIGHLEVEL_SECURITY stOutparam;
//       memset(&stOutparam, 0, sizeof(stOutparam));
//       stOutparam.dwSize = sizeof(stOutparam);
//       LLONG lRet = CLIENT_LoginWithHighLevelSecurity(&stInparam, &stOutparam);
//       if(0 != lRet)
//       {
//           device.loginHandle = lRet;
//           ui->btnLogin->setEnabled(false);
//           ui->btnLogout->setEnabled(true);
//           AddChannelCount(stOutparam.stuDeviceInfo.nChanNum);
//           GetEncodeCaps(0, true);
//           InitEncodeCtrl(m_stuCaps);
//           //InitDlg();
//       }
//       else
//       {
//           ShowLoginErrorReason(stOutparam.nError);
//       }
       //SetWindowText(ConvertString("Encoding Config"));


    LOGIN_RESULT res = device.login(ui->editIP->text(), ui->editPort->text().toInt(), ui->editUsername->text(), ui->editPassword->text());
    //device.login("192.168.71.10", 37777, "admin", "admin");
    if (device.loginHandle != 0)
    {
        ui->btnLogin->setEnabled(false);
        ui->btnLogout->setEnabled(true);
        AddChannelCount(res.stuDeviceInfo.nChanNum);
        GetEncodeCaps(0, true);
        InitEncodeCtrl(m_stuCaps);

        LLONG lRet = CLIENT_RealPlayEx(device.loginHandle,0,(HWND)(ui->widget->winId()),DH_RType_Realplay_0);
        if(0 != lRet)
        {
            m_DispHanle = lRet;
        }
        else
        {
            ShowMessage("Play failed");
        }

        on_cmbFormat_activated(0);
    }
    else
    {
        QMessageBox msgBox;
        msgBox.setText("Login error");
        msgBox.exec();
    }
}

void MainWindow::on_btnLogout_clicked()
{
    device.logout();
    //Clear handle as o after logout
    if(device.loginHandle == 0)
    {
        m_nChannel = 0;
        ui->btnLogin->setEnabled(true);
        ui->btnLogout->setEnabled(false);
    }
}
