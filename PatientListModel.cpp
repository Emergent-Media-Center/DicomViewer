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
    clearModelData();

    std::vector<string> patients = NavigatorSystem::Instance()->ListPatientIds();

    beginInsertRows(QModelIndex(), 0, patients.size() - 1);
    for(int i = 0; i < patients.size(); i++)
    {
        m_patients.push_back(patients[i]);
    }
    endInsertRows();
}

QHash<int, QByteArray> PatientListModel::roleNames() const
{
    QHash<int, QByteArray> roles
    {
        {NameRole, "patientId"}
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

/*bool PatientListModel::setData(const QModelIndex& index, const QVariant &value, int role)
{
    if(data(index, role) != value)
    {
        emit dataChanged(index, index, QVector<int>() << role);
        return true;
    }

    return false;
}*/


void PatientListModel::openFile(QVariant path)
{
    QString qstr = path.toString();
    std::string str = qstr.toStdString();

    //Remove file name and extraneous extension on front of path
    str = str.substr(8, str.length());

    QFileInfo fileInfo(str.c_str());

    if(fileInfo.isFile())
    {
        std::vector<std::string> files;
        files.push_back(str);

        qDebug() << "isFile\n";

        NavigatorSystem::Instance()->BuildDB(files);
    }
    else
    {
        NavigatorSystem::Instance()->BuildDB(str);
    }

    setModelData();
}


void PatientListModel::clearModelData()
{
    beginResetModel();
    m_patients.clear();
    endResetModel();
}
