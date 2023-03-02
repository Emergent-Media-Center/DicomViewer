#ifndef PATIENTMODELOBJECT_H
#define PATIENTMODELOBJECT_H

#include <QObject>

#include "PatientItemModel.h"

class PatientModelObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(PatientItemModel* model READ model)
public:
    explicit PatientModelObject(QObject* parent = 0);
    ~PatientModelObject();

    Q_INVOKABLE PatientItemModel* getModel() {return model;}

    Q_INVOKABLE void setModelData() { model->SetModelData();}
private:
    PatientItemModel* model;
};

#endif // PATIENTMODELOBJECT_H
