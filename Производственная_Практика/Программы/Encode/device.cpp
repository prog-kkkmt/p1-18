#include "device.h"
#include <QDateTime>


//#define EC(x) x&(0x7fffffff)

// Commonly used callback set declaration.
// Callback function used when device disconnected.
// It is not recommended to call SDK interface in the SDK callback function.
// The callback is set by CLIENT_Init. When the device is offline, SDK will call this callback function.
void CALLBACK DisConnectFunc(LLONG lLoginID, char *pchDVRIP, LONG nDVRPort, DWORD
                             dwUser)
{

}

int getErrorCode(int netCode)
{
    return (netCode&(0x7fffffff));
}

void initSDK()
{
    // SDK initialization
    netSDKInitilized = CLIENT_Init(DisConnectFunc, 0);
    if (false == netSDKInitilized)
    {
        printf("CLIENT_Init failed! Last error [%d]\n", EC(CLIENT_GetLastError()));
        return;
    }
}

void clearSDK()
{
    if (TRUE == netSDKInitilized) {
        CLIENT_Cleanup();
        netSDKInitilized = FALSE;
    }
}

LOGIN_RESULT Device::login(const QString& ip, int port, const QString& login, const QString& password)
{
    NET_PARAM stuNetParm = {};
    stuNetParm.nConnectTime = 3000; // The timeout of connection when login.
    CLIENT_SetNetworkParam(&stuNetParm);

    NET_IN_LOGIN_WITH_HIGHLEVEL_SECURITY stInparam {};
    stInparam.dwSize = sizeof(stInparam);
    memcpy(stInparam.szIP, ip.toLocal8Bit().data(), ip.toLocal8Bit().size());
    memcpy(stInparam.szUserName, login.toLocal8Bit().data(), login.toLocal8Bit().size());
    memcpy(stInparam.szPassword, password.toLocal8Bit().data(), password.toLocal8Bit().size());
    stInparam.nPort = port;
    stInparam.emSpecCap = EM_LOGIN_SPEC_CAP_TCP;
    NET_OUT_LOGIN_WITH_HIGHLEVEL_SECURITY stOutparam {};
    stOutparam.dwSize = sizeof(stOutparam);

    loginHandle = CLIENT_LoginWithHighLevelSecurity(&stInparam, &stOutparam);
    if (0 == loginHandle)
    {
        printf("CLIENT_LoginEx %s:%d failed! Last error [%d]; Login error: [%d]\n" , ip.toLocal8Bit().data(), port, EC(CLIENT_GetLastError()), stOutparam.nError);
        return stOutparam;
    }
    printf("CLIENT_LoginEx %s:%d success\n", ip.toLocal8Bit().data(), port);
    Sleep(1000);
    return stOutparam;
}

QString Device::getSoftwareVersion()
{
    DHDEV_VERSION_INFO info;
    int recivSize = 0;

    bool ok = CLIENT_QueryDevState(loginHandle, DH_DEVSTATE_SOFTWARE, reinterpret_cast<char*>(&info), sizeof(DHDEV_VERSION_INFO), &recivSize);

    if (ok == false)
    {
        printf("CLIENT_QueryDevState failed! Last error [%d]\n", EC(CLIENT_GetLastError()));
        return QString();
    }

    QDate buildDate((info.dwSoftwareBuildDate>>16) & 0xffff,
                    (info.dwSoftwareBuildDate>>8) & 0xff,
                    info.dwSoftwareBuildDate & 0xff);

    return QString(info.szSoftWareVersion)+", Build Date: "+buildDate.toString("yyyy-MM-dd");
}

void Device::logout()
{
    if (0 != loginHandle) {
        if (FALSE == CLIENT_Logout(loginHandle)) {
            printf("CLIENT_Logout failed! Last error [%d]\n", EC(CLIENT_GetLastError()));
        }
        else
        {
            loginHandle = 0;
        }
    }
}
