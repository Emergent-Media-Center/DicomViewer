/*#include "PatientModelObject.h"
#include "navigatorsystem.h"

PatientModelObject::PatientModelObject(QObject* parent) :
    QObject(parent)
{
    //model = new PatientItemModel();
}

PatientModelObject::~PatientModelObject()
{

}

void PatientModelObject::openFile(QVariant path)
{
    QString str = path.toString();
    NavigatorSystem::Instance()->BuildDB(str.toStdString());
    model->SetModelData();
}*/
