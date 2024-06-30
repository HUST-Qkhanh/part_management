#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QStringList>
#include <QStringListModel>
#include <string>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList list READ list WRITE setList NOTIFY listChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);
    Q_INVOKABLE QStringList splitString(const QString &str, const QString &delimiter);

    QStringList list() const;
    void setList(const QStringList &list);

    void addItem(const QString &item);
    void removeItem(int index);
    // void callMe();
    // std::vector<std::string> decodeData(const std::string& input, char delim);

    QStringList getImportedList();

signals:
    void listChanged();
    void updateList(const QString &partId, const QString &partName, const QString &unit, QString quantity, const QString &date);

public slots:
    void callMe();
    void importData();

private:
    QStringList m_list;
    // QStringListModel m_model;
    QStringList importedList;
};


#endif // BACKEND_H
