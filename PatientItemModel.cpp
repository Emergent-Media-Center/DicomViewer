#include "PatientItemModel.h"
#include "navigatorsystem.h"

PatientItemModel::PatientItemModel(QObject* parent) :
    QStandardItemModel(parent)
{

}

PatientItemModel::~PatientItemModel()
{

}

void PatientItemModel::SetModelData()
{
    std::vector<string> patients = NavigatorSystem::Instance()->ListPatientIds();

    for(int i = 0; i < patients.size(); i++)
    {
        setData(index(i, 0), QString::fromStdString(patients[i]));
    }
}
