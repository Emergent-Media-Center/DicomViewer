#ifndef PATIENTITEMMODEL_H
#define PATIENTITEMMODEL_H

#include <QtCore>
#include <QtGui>
#include <QAbstractListModel>
#include <QHash>

class PatientListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum PatientRoles {
        NameRole = Qt::UserRole
    };

    explicit PatientListModel(QObject* parent = 0);
    ~PatientListModel();

    void setModelData();

    QHash<int, QByteArray> roleNames() const override;

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    Q_INVOKABLE void openFolder(QVariant path);

public slots:

private:

    std::vector<std::string> m_patients;
};

#endif // PATIENTITEMMODEL_H
