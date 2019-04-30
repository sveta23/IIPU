#ifndef FILEIO_H
#define FILEIO_H

#include <QObject>

class FileIO : public QObject
{
    Q_OBJECT
public:
    Q_PROPERTY(QString source READ source WRITE setSource)
    explicit FileIO(QObject *parent = 0);
    Q_INVOKABLE QString read();
    Q_INVOKABLE bool write(const QString& data);
    Q_INVOKABLE QString lab3zd2();
    Q_INVOKABLE QString lab3zd22();
    Q_INVOKABLE QString lab3zd3();
     Q_INVOKABLE QString lab3zd31();
    Q_INVOKABLE QString lab3zd1();

    QString source() {
        return mSource;
    };

public slots:

    void setSource(const QString& source) {
    mSource = source;
};
    signals:
    void error(const QString& msg);

private:
    QString mSource;
};

#endif // FILEIO_H
