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
        NameRole = Qt::UserRole + 1
    };

    explicit PatientListModel(QObject* parent = 0);
    ~PatientListModel();

    void SetModelData();

    QHash<int, QByteArray> roleNames() const;

public slots:

private:
};

#endif // PATIENTITEMMODEL_H
