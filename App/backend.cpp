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

std::vector<std::string> BackEnd::decodeData(const std::string& input, char delim)
{
    std::vector<std::string> tokens;
    std::string token;
    qDebug() << "Input string:" << input;
    return tokens;
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

    return tokens;
}
