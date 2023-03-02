#ifndef PATIENTITEMMODEL_H
#define PATIENTITEMMODEL_H

#include <QtCore>
#include <QtGui>
#include <QStandardItemModel>

class PatientItemModel : public QStandardItemModel
{
    Q_OBJECT
public:
    explicit PatientItemModel(QObject* parent = 0);
    ~PatientItemModel();

    void SetModelData();

public slots:

private:
};

#endif // PATIENTITEMMODEL_H
