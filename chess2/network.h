#ifndef NETWORK_H
#define NETWORK_H
#include <QtNetwork>
#include <QObject>

#define PORT 6666
#define TIMEOUT 100

class NetWork : public QObject
{
    Q_OBJECT
public:
    NetWork(QObject *parent=0);
    Q_INVOKABLE QString getLocalIP();
    Q_INVOKABLE void openServer();

    Q_INVOKABLE void openClient1(const QString ipaddress);
    Q_INVOKABLE void openClient2(const QString ipaddress);
    Q_INVOKABLE void openClient3(const QString ipaddress);
signals:
    void sendInformation(const QString str);
private slots:
    void server_New_Connect();
private:
    QTcpServer *myserver;
    QTcpSocket *client1;
    QTcpSocket *client2;
    QTcpSocket *client3;
    QString my_address;
};
#endif // NETWORK_H
