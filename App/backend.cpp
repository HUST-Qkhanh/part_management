#include "backend.h"
#include <QDebug>
#include <sstream>

BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
{}

QStringList BackEnd::list() const {
    return m_list;
}

void BackEnd::setList(const QStringList &list) {
    if (m_list != list) {
        m_list = list;
        emit listChanged();
    }
}

void BackEnd::addItem(const QString &item) {
    m_list.append(item);
    emit listChanged();
}

void BackEnd::removeItem(int index) {
    if (index >= 0 && index < m_list.size()) {
        m_list.removeAt(index);
        emit listChanged();
    }
}

void BackEnd::callMe(){
    qDebug() << "backend is being called: ";
}

void BackEnd::importData(){
    qDebug() << "Import button clicked!";
    QString partId1 = importedList[0];
    QString partName = importedList[1];
    QString unit = importedList[2];
    QString quantity = importedList[3];
    QString date  = importedList[4];
    emit updateList(partId1, partName, unit, quantity, date);
}

QStringList BackEnd::splitString(const QString &str, const QString &delim)
{
    QStringList tokens;
    std::string s = str.toStdString();
    char del = delim.toStdString()[0];

    std::string token;
    std::stringstream ss(s);

    while (std::getline(ss, token, del)) {
        tokens.append(QString::fromStdString(token));
    }
    if (tokens.size() == 5){
        importedList = tokens;
    }

    return tokens;
}

QStringList BackEnd::getImportedList(){
    return importedList;
}

void BackEnd::togglePopup(const QString &info_){
    if(info_ != ""){
        qDebug() << "toggle popup";
        emit popupToggle(info_);
    }
    else{
        qDebug() << "disable popup";
        emit popupDisable();
    }
}
