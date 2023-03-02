#ifndef PATIENTITEMMODEL_H
#define PATIENTITEMMODEL_H

#include <QtCore>
#include <QtGui>
#include <QStandardItemModel>

class PatientItemModel : public QStandardItemModel
{
    Q_OBJECT
    Q_PROPERTY(QString patientName READ patientName CONSTANT)
public:
    explicit PatientItemModel(QObject* parent = 0);
    ~PatientItemModel();

    void SetModelData();

    QString patientName() {return s_patientName;}

public slots:

private:

    QString s_patientName;
};

#endif // PATIENTITEMMODEL_H
