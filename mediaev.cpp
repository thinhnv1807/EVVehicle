#include "mediaev.h"

MediaEV::MediaEV(QObject *parent) : QObject(parent)
{
    m_pathSytemMusic = QStandardPaths::locate(QStandardPaths::MusicLocation, QString(), QStandardPaths::LocateDirectory);
    setListMusic(m_pathSytemMusic);
}

QStringList MediaEV::getListMusic()
{
    return  m_ListMusic;
}

void MediaEV::setListMusic(QString data)
{
    QDir dir(data);
    dir.setFilter(QDir::Files);
    QFileInfoList list = dir.entryInfoList();
    for (int i = 0; i < list.size(); ++i) {
        QFileInfo fileInfo =  list.at(i);
        m_ListMusic << fileInfo.fileName();
    }
   // emit listMusicChanged();
}

