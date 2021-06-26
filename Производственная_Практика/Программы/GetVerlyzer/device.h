#ifndef DEVICE_H
#define DEVICE_H

#include <QString>

static bool netSDKInitilized;
void initSDK();
void clearSDK();

class Device
{
private:
    long loginHandle = 0;
public:
    void login(const QString& ip, int port, const QString& login, const QString& password);
    QString getSoftwareVersion();
    void logout();
};


#endif // DEVICE_H
