#include "network.h"
#include <QDebug>
#include <QTcpServer>
#include <QTcpSocket>

int Connect_Num = 0;

NetWork::NetWork (QObject *parent):QObject{parent}
{
    //来提供一个IP地址
    //QNetworkInterface 提供主机的IP地址和网络接口的列表
    //QNetworkInterface::allAddress()返回主机上找到的所有IP地址
    QList<QHostAddress> myaddresslist = QNetworkInterface::allAddresses();
    for(int i=0;i!=myaddresslist.length();i++){
        //quint32:无符号int类型定义。此类型在Qt支持的所有平台上保证为32位。
        if(myaddresslist.at(i)!=QHostAddress::LocalHost
                && myaddresslist.at(i).toIPv4Address()){
            my_address = myaddresslist.at(i).toString();
            break;
        }
    }

    if(my_address.isEmpty()){
        my_address = QHostAddress(QHostAddress::LocalHost).toString();
        myserver = NULL;
        client1 = NULL;
        client2 = NULL;
        client3 = NULL;
    }
}

QString NetWork::getLocalIP()
{
    return my_address;
}

void NetWork::openServer()
{
    myserver = new QTcpServer(this);
    //等待接受连接的最大数量
    myserver->setMaxPendingConnections(3);
    qDebug() << "Successfully opened";
    //告诉服务器监听地址地址和端口上的传入连接。如果端口为0，则自动选择一个端口。如果地址是QHostAddress::Any，服务器将监听所有网络接口。
    myserver->listen(QHostAddress::Any,PORT);
    if(!myserver->isListening()){
        exit(0);
    }
    connect(myserver,&QTcpServer::newConnection,this,
            &NetWork::server_New_Connect);
}

void NetWork::server_New_Connect()
{
    Connect_Num++;
    if(Connect_Num==1){
        //建立一个连接
        client1 = myserver->nextPendingConnection();
        //连接QTcpSocket的信号槽，以读取新数据
        connect(client1,&QTcpSocket::readyRead,this,[&](){
            connect(client1,&QTcpSocket::readyRead,[&](){
                QByteArray byteDate =  client1->readAll();
                emit sendInformation(byteDate);
            });
        });
        qDebug()<<"client1 connect!";
    }

    if(Connect_Num==2){
        client2 = myserver->nextPendingConnection();
        connect(client2,&QTcpSocket::readyRead,this,[&](){
            connect(client2,&QTcpSocket::readyRead,[&](){
                QByteArray byteDate =  client2->readAll();
                emit sendInformation(byteDate);
            });
        });
        qDebug()<<"client2 connect!";
    }

    if(Connect_Num==3){
        client3 = myserver->nextPendingConnection();
        connect(client3,&QTcpSocket::readyRead,this,[&](){
            connect(client1,&QTcpSocket::readyRead,[&](){
                QByteArray byteDate =  client1->readAll();
                emit sendInformation(byteDate);
            });
        });
        qDebug()<<"client3 connect!";
    }
}

void NetWork::openClient1(const QString ipaddress)
{
    client1 = new QTcpSocket(this);
    client1->connectToHost(QHostAddress(ipaddress),PORT);
    client1->waitForConnected(TIMEOUT);
}

void NetWork::openClient2(const QString ipaddress)
{
    client2 = new QTcpSocket(this);
    client2->connectToHost(QHostAddress(ipaddress),PORT);
    client2->waitForConnected(TIMEOUT);
}

void NetWork::openClient3(const QString ipaddress)
{
    client3 = new QTcpSocket(this);
    client3->connectToHost(QHostAddress(ipaddress),PORT);
    client3->waitForConnected(TIMEOUT);
}
