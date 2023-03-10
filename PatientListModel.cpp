#include "PatientListModel.h"
#include "navigatorsystem.h"

PatientListModel::PatientListModel(QObject* parent) :
    QAbstractListModel(parent)
{

}

PatientListModel::~PatientListModel()
{

}

void PatientListModel::setModelData()
{
    std::vector<string> patients = NavigatorSystem::Instance()->ListPatientIds();

    beginInsertRows(QModelIndex(), m_patients.size(), m_patients.size());
    for(int i = 0; i < patients.size(); i++)
    {
        //setData(index(i, 0), QString(patients[i].c_str()), roleNames()[NameRole].toInt());
        m_patients.push_back(patients[i]);
    }
    endInsertRows();

    //qDebug() << m_patients[0].toStdString().c_str();
    //qDebug() << data(index(0, 0), NameRole).toString().toStdString().c_str();

    //emit QAbstractListModel::dataChanged(createIndex(0, 0), createIndex(m_patients.size(), 0));
}

QHash<int, QByteArray> PatientListModel::roleNames() const
{
    QHash<int, QByteArray> roles
    {
        {NameRole, "patientName"}
    };

    return roles;
}

int PatientListModel::rowCount(const QModelIndex &parent) const
{
    if(parent.isValid())
        return 0;

    return m_patients.size();
}

QVariant PatientListModel::data(const QModelIndex &index, int role) const
{
    //qDebug() << "PatientListModel.data called";
    if(!index.isValid())
        return QVariant();

    const QString &name = QString::fromStdString(m_patients[index.row()]);
    if(role == NameRole)
        return name;
    else
        return QVariant();
}

bool PatientListModel::setData(const QModelIndex& index, const QVariant &value, int role)
{
    if(data(index, role) != value)
    {
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }

    return false;
}

void PatientListModel::openFolder(QVariant path)
{
    QString qstr = path.toString();
    std::string str = qstr.toStdString();

    //Remove file name and extraneous extension on front of path
    str = str.substr(8, str.length());
    NavigatorSystem::Instance()->BuildDB(str);
    setModelData();
}
