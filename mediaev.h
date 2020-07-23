#ifndef MEDIAEV_H
#define MEDIAEV_H
#include <QDir>
#include <QList>
#include <QDebug>
#include <QFileInfo>
#include <QObject>
#include <QStandardPaths>

#define DIR_MUSIC "/storage/emulated/0/Music/"

class MediaEV: public QObject
{
    Q_OBJECT



public:
    explicit MediaEV(QObject *parent = nullptr);

    QStringList getListMusic();
    void        setListMusic(QString data);
public slots:

signals:
    void listMusicChanged();
private:
    QStringList m_ListMusic;
    QString m_pathSytemMusic = QStandardPaths::locate(QStandardPaths::MusicLocation, QString(), QStandardPaths::LocateDirectory);
};

#endif // MEDIAEV_H
