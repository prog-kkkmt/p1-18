#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <device.h>
#include <dhnetsdk.h>
#include <dhconfigsdk.h>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    void InitVars();
    void InitDlg();
    void InitEncodeCtrl(NET_OUT_ENCODE_CFG_CAPS& stuCaps,int nStreamtype = 0);
    void GetEncodeCaps(int nChannel = 0, bool bFirst = false, int streamType = 0, CFG_VIDEO_COMPRESSION cmp = VIDEO_FORMAT_MPEG4, CFG_H264_PROFILE_RANK profile = PROFILE_BASELINE, int nWidth = 0, int nHeight = 0, int FPS = 1);
    void UpdateEncodeCaps();
    bool GetVideoConfig(NET_EM_FORMAT_TYPE emType);
    bool SetVideoConfig();
    void OnVideoStuToDlg();
    void OnVideoDlgToStu();
    void ShowLoginErrorReason(int nError);
    void ShowMessage(QString msg);
    void AddChannelCount(int nChannelCount);
    int  ResolutionInttoSize(int nWidth, int nHeight);
    void ResolutionSizetoInt(int nResolution, int *nWidth, int *nHeight);
    void ResolutionSizeToInt(int nSize, int& nWidth, int& nHeight);
    void UpdateData(bool toVars);
private slots:
    void on_cmbBitrateCtl_activated(int index);
    void on_cmbBitrate_activated(int index);
    void on_cmbChannelCount_activated(int index);
    void on_cmbCompression_activated(int index);
    void on_cmbFrameRate_activated(int index);
    void on_cmbFormat_activated(int index);
    void on_btnSetVideo_clicked();
    void on_btnLogin_clicked();
    void on_btnLogout_clicked();

private:
    Ui::MainWindow *ui;
    Device device;

    NET_OUT_ENCODE_CFG_CAPS m_stuCaps;
    CFG_ENCODE_INFO m_stuEncodeInfo;
    NET_ENCODE_VIDEO_PROFILE_INFO m_stuVideoProFile;
    NET_ENCODE_VIDEO_INFO m_stuEncodeVideoInfo;
    NET_ENCODE_VIDEO_PACK_INFO m_stuPack;
    NET_ENCODE_VIDEO_SVC_INFO m_stuVideoSVC;

    int	m_nEditBitRate;
    int m_nInterval;
    int	m_nSvc;
    int m_nChannel;
    int m_DispHanle;
};
#endif // MAINWINDOW_H
