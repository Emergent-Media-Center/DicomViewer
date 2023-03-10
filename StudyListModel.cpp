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
    std::vector<string> studies = NavigatorSystem::Instance()->ListStudiesFromPatientId(patientId.toString().toStdString());

    beginInsertRows(QModelIndex(), m_studies.size(), m_studies.size());
    for(int i = 0; i < studies.size(); i++)
    {
        m_studies.push_back(studies[i]);
    }
    endInsertRows();
}

QHash<int, QByteArray> StudyListModel::roleNames() const
{
    QHash<int, QByteArray> roles
    {
        {NameRole, "studyId"}
    };

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

    const QString &name = QString::fromStdString(m_studies[index.row()]);
    if(role == NameRole)
        return name;
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
