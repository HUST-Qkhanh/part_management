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
    std::vector<std::string> decodeData(const std::string& input, char delim);

signals:
    void listChanged();

public slots:
    void callMe();


private:
    QStringList m_list;
    QStringListModel m_model;

};

class MyListModel : public QAbstractListModel {
    Q_OBJECT

public:
    enum Roles {
        PartIDRole = Qt::UserRole + 1,
        PartNameRole,
        UnitRole,
        QuantityRole
    };

    MyListModel(QObject *parent = nullptr) : QAbstractListModel(parent) {}

    int rowCount(const QModelIndex &parent = QModelIndex()) const override {
        Q_UNUSED(parent)
        return m_data.size();
    }

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override {
        if (!index.isValid() || index.row() >= m_data.size())
            return QVariant();

        const auto &item = m_data.at(index.row());

        switch (role) {
        case PartIDRole:
            return item.partID;
        case PartNameRole:
            return item.partName;
        case UnitRole:
            return item.unit;
        case QuantityRole:
            return item.quantity;
        default:
            return QVariant();
        }
    }

    QHash<int, QByteArray> roleNames() const override {
        QHash<int, QByteArray> roles;
        roles[PartIDRole] = "partID";
        roles[PartNameRole] = "partName";
        roles[UnitRole] = "unit";
        roles[QuantityRole] = "quantity";
        return roles;
    }

    Q_INVOKABLE void addItem(const QString &partID, const QString &partName, const QString &unit, const QString &quantity) {
        beginInsertRows(QModelIndex(), m_data.size(), m_data.size());
        m_data.append({partID, partName, unit, quantity});
        endInsertRows();
    }

private:
    struct Item {
        QString partID;
        QString partName;
        QString unit;
        QString quantity;
    };

    QVector<Item> m_data;
};


#endif // BACKEND_H
