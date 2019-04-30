#include "fileio.h"
#include <QFile>
#include <QTextStream>
#include <unistd.h>
#include <QDebug>

FileIO::FileIO(QObject *parent) :
    QObject(parent)
{

}
QString FileIO::lab3zd2()
{
     system("xset q > /home/belka/lab/caps.txt");
      usleep(140000);
     QFile file("/home/belka/lab/caps.txt");
     QString fileContent;
     if ( file.open(QIODevice::ReadOnly) ) {
         QString line;
         QTextStream t( &file );
         int q =0;
          do {
             line = t.readLine();
             if(q == 3){ fileContent = line;}
             q++;
         } while (!line.isNull());
         file.close();
     }

     QString w = fileContent.mid(8,16);
     return w;
}

QString FileIO::lab3zd22()
{   usleep(80000);
    system("xset q > /home/belka/lab/caps.txt");
    QFile file("/home/belka/lab/caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w = fileContent.mid(32,16);
    return w;
}

QString FileIO::lab3zd3()
{
    system("xset q > /home/belka/lab/caps.txt");
    QFile file("/home/belka/lab/caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w11 = fileContent.mid(8,16);
    if (w11.startsWith("Caps Lock:  "))
        system("xdotool key Caps_Lock");
    QString w2 = fileContent.mid(32,16);
    if (w2.startsWith("Num Lock:  "))
        system("xdotool key Num_Lock");
    /*
    system("xset q > /home/belka/lab/caps.txt");
    usleep(140000);
    QFile file("/home/belka/lab/caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w = fileContent.mid(32,16);
    system("rm /home/belka/lab/caps.txt");
        system("xdotool key Caps_Lock");

        system("xdotool key Num_Lock");
        usleep(4000000);*/

QString w3 ="индикаторы переключены";
   return w3;
}

QString FileIO::lab3zd31()
{
    system("xset q > /home/belka/lab/caps.txt");
    QFile file("/home/belka/lab/caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w11 = fileContent.mid(8,16);
    if (w11 == "Caps Lock:   off")
        system("xdotool key Caps_Lock");
    QString w2 = fileContent.mid(32,16);
    if (w2 == "Num Lock:    off")
        system("xdotool key Num_Lock");
    usleep(400000);
    system("xset q > /home/belka/lab/caps.txt");
    QString fileContent1;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent1 = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w1 = fileContent1.mid(8,16);
    if (w1 == "Caps Lock:   on ")
        system("xdotool key Caps_Lock");
    QString w = fileContent1.mid(32,16);
    if (w == "Num Lock:    on ")
        system("xdotool key Num_Lock");
    usleep(233000);
    QString w3 ="индикаторы выключены";
       return w3;
}

QString FileIO::lab3zd1()
{
    system("xset q > /home/belka/lab/caps.txt");
    QFile file("/home/belka/lab/caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w11 = fileContent.mid(8,16);
        system("xdotool key Caps_Lock");
    QString w2 = fileContent.mid(32,16);

        system("xdotool key Num_Lock");  usleep(233000);
        QString w3 ="индикаторы переключены";
           return w3;
}

QString FileIO::read()
{
    if(mSource.isEmpty()){
        emit error("source is empty");
    return QString();
}

    QFile file(mSource);
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        do {
            line = t.readLine();QString txt="";
            if(line.startsWith("MemTotal")) {
                line.append(" (доступный объем оперативной памяти)");
            }
            if(line.startsWith("MemFree")) {
                line.append(" (объем не используемой и свободной памяти)");
            }
            if(line.startsWith("MemAvailable")) {
                line.append(" (доступный объем памяти для выделния процессам)");
            }
            if(line.startsWith("Buffers")) {
                line.append(" (область ОЗУ, занятая хранением данных)");
            }
            if(line.startsWith("Cached")) {
                line.append(" (объем, занятый под кэш чтения страниц с диска)");
            }
            if(line.startsWith("SwapCached")) {
                line.append(" (объем памяти, который был однажды помощен в область подкачки)");
            }
            if(line.startsWith("Active")) {
                line.append(" (область памяти, занятая часто используемыми страницами)");
            }
            if(line.startsWith("Inactive")) {
                line.append(" (объем памяти, зантяый не используемыми сейчас страницами)");
            }
            if(line.startsWith("Dirty")) {
                line.append(" (Измененные страницы ОЗУ,не сброшенные на диск)");
            }
            if(line.startsWith("Writeback")) {
                line.append(" (страницы памяти, которые сейчас сбрасываются на диск)");
            }
            fileContent += line + "\n";
        }while (!line.isNull());
        file.close();
    } else {
    emit error("Unable to open the file");
    return QString();
    }
    return fileContent;
}
    bool FileIO::write(const QString& data) {
    if (mSource.isEmpty())
        return false;
    QFile file(mSource);
    if (!file.open(QFile::WriteOnly | QFile::Truncate))
        return false;
    QTextStream out(&file);
    out << data;
    file.close();
    return true;
}



