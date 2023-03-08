/*#ifndef PATIENTMODELOBJECT_H
#define PATIENTMODELOBJECT_H

#include <QObject>

#include "PatientListModel.h"

class PatientModelObject : public QObject
{
    Q_OBJECT
    Q_PROPERTY(PatientListModel* model READ model)
public:
    explicit PatientModelObject(QObject* parent = 0);
    ~PatientModelObject();

    Q_INVOKABLE PatientListModel* getModel() {return model;}

    Q_INVOKABLE void setModelData() { model->SetModelData();}

    Q_INVOKABLE void openFile(QVariant path);
private:
    PatientListModel* model;
};

#endif // PATIENTMODELOBJECT_H*/
