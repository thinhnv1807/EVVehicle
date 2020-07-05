QT += quick

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        clockev.cpp \
        inforsystem.cpp \
        main.cpp \
        themeclass.cpp

RESOURCES += qml.qrc \
    Image.qrc \

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    clockev.h \
    inforsystem.h \
    themeclass.h

DISTFILES += \
    music/Cam-Nang-Suni-Ha-Linh-RTee.mp3 \
    music/Cam-Nang-Suni-Ha-Linh-RTee.mp3 \
    music/Cam-Nang-Suni-Ha-Linh-RTee.mp3 \
    music/Da-Lo-Yeu-Em-Nhieu-JustaTee.mp3 \
    music/Da-Lo-Yeu-Em-Nhieu-JustaTee.mp3 \
    music/Da-Lo-Yeu-Em-Nhieu-JustaTee.mp3 \
    music/Hon-Ca-Yeu-Duc-Phuc.mp3 \
    music/Hon-Ca-Yeu-Duc-Phuc.mp3 \
    music/Hon-Ca-Yeu-Duc-Phuc.mp3 \
    music/Mot-Dem-Say-X-Thinh-Suy.mp3 \
    music/Mot-Dem-Say-X-Thinh-Suy.mp3 \
    music/Mot-Dem-Say-X-Thinh-Suy.mp3 \
    music/Nay-Em-Oi-Minh-Yeu-Thoi-The-Bao-NamKun.mp3 \
    music/Nay-Em-Oi-Minh-Yeu-Thoi-The-Bao-NamKun.mp3 \
    music/Nay-Em-Oi-Minh-Yeu-Thoi-The-Bao-NamKun.mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU (1).mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU.mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU.mp3 \
    music/Nguoi-Em-Thich-La-Anh-TYU.mp3 \
    music/Nguoi-Yeu-Toi-Khong-Biet-Nau-An-Kim-Trung-Gold-K.mp3 \
    music/Nguoi-Yeu-Toi-Khong-Biet-Nau-An-Kim-Trung-Gold-K.mp3 \
    music/Nguoi-Yeu-Toi-Khong-Biet-Nau-An-Kim-Trung-Gold-K.mp3 \
    music/Thay-La-Yeu-Thuong-OnlyC-Lou-Hoang.mp3 \
    music/Thay-La-Yeu-Thuong-OnlyC-Lou-Hoang.mp3 \
    music/Thay-La-Yeu-Thuong-OnlyC-Lou-Hoang.mp3 \
    music/Thich-Duoc-Khong-Khanh-Chi-Nhun-Nhun.mp3 \
    music/Thich-Duoc-Khong-Khanh-Chi-Nhun-Nhun.mp3 \
    music/Thich-Duoc-Khong-Khanh-Chi-Nhun-Nhun.mp3 \
    music/Thu-Ngo-14C-T2K4.mp3 \
    music/Thu-Ngo-14C-T2K4.mp3 \
    music/Thu-Ngo-14C-T2K4.mp3 \
    music/Yeu-Em-Moi-Thu-Rick.mp3 \
    music/Yeu-Em-Moi-Thu-Rick.mp3 \
    music/Yeu-Em-Moi-Thu-Rick.mp3 \
    music/Yeu-Nhieu-Ghen-Nhieu-Thanh-Hung.mp3 \
    music/Yeu-Nhieu-Ghen-Nhieu-Thanh-Hung.mp3 \
    music/Yeu-Nhieu-Ghen-Nhieu-Thanh-Hung.mp3
