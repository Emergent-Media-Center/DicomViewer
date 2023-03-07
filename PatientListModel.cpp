#include "PatientListModel.h"
#include "navigatorsystem.h"

PatientListModel::PatientListModel(QObject* parent) :
    QAbstractListModel(parent)
{

}

PatientListModel::~PatientListModel()
{

}

void PatientListModel::SetModelData()
{
    std::vector<string> patients = NavigatorSystem::Instance()->ListPatientIds();

    for(int i = 0; i < patients.size(); i++)
    {
        setData(index(i, 0), QString::fromStdString(patients[i]), roleNames()[NameRole].toInt());
    }
}

QHash<int, QByteArray> PatientListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NameRole] = "patientName";
    return roles;
}
