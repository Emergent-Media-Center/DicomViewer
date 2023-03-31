#include "StudyListModel.h"
#include "navigatorsystem.h"

StudyListModel::StudyListModel(QObject* parent) :
    QAbstractListModel(parent)
{

}

StudyListModel::~StudyListModel()
{

}

void StudyListModel::setModelData(QVariant patientId)
{
    clearModelData();

    m_patient = patientId.toString().toStdString();
    std::vector<string> studies = NavigatorSystem::Instance()->ListStudiesFromPatientId(m_patient);

    beginInsertRows(QModelIndex(), 0, studies.size() - 1);
    for(int i = 0; i < studies.size(); i++)
    {
        m_studies.push_back(studies[i]);
    }
    endInsertRows();
}

QHash<int, QByteArray> StudyListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[PatientRole] = "patientId";
    roles[StudyRole] = "studyId";

    return roles;
}

int StudyListModel::rowCount(const QModelIndex &parent) const
{
    if(parent.isValid())
        return 0;

    return m_studies.size();
}

QVariant StudyListModel::data(const QModelIndex &index, int role) const
{
    //qDebug() << "PatientListModel.data called";
    if(!index.isValid())
        return QVariant();


    if(role == PatientRole)
    {
        const QString &patient = QString::fromStdString(m_patient);
        return patient;
    }
    else if(role == StudyRole)
    {
        const QString &study = QString::fromStdString(m_studies[index.row()]);
        return study;
    }
    else
        return QVariant();
}

/*bool PatientListModel::setData(const QModelIndex& index, const QVariant &value, int role)
{
    if(data(index, role) != value)
    {
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }

    return false;
}*/

/*void StudyListModel::openFolder(QVariant path)
{
    QString qstr = path.toString();
    std::string str = qstr.toStdString();

    //Remove file name and extraneous extension on front of path
    str = str.substr(8, str.length());
    NavigatorSystem::Instance()->ListStudiesFromPatientId()
    setModelData();
}*/

void StudyListModel::clearModelData()
{
    m_patient = "";

    beginResetModel();
    m_studies.clear();
    endResetModel();
}
