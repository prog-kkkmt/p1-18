#ifndef DEVICE_H
#define DEVICE_H

#include <QString>
#include <dhnetsdk.h>

#define EC(x) x&(0x7fffffff)

typedef NET_OUT_LOGIN_WITH_HIGHLEVEL_SECURITY LOGIN_RESULT;

static bool netSDKInitilized;
void initSDK();
void clearSDK();

class Device
{
public:
    long loginHandle = 0;
    LOGIN_RESULT login(const QString& ip, int port, const QString& login, const QString& password);
    QString getSoftwareVersion();
    void logout();
};


#endif // DEVICE_H
