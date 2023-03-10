#ifndef STUDYLISTMODEL_H
#define STUDYLISTMODEL_H

#include <QtCore>
#include <QtGui>
#include <QAbstractListModel>
#include <QHash>

class StudyListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum PatientRoles {
        NameRole = Qt::UserRole + 1
    };

    explicit StudyListModel(QObject* parent = 0);
    ~StudyListModel();

    Q_INVOKABLE void setModelData(QVariant patientId);

    QHash<int, QByteArray> roleNames() const override;

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    //bool setData(const QModelIndex& index, const QVariant &value, int role) override;

    //Q_INVOKABLE void openFolder(QVariant path);

public slots:

private:

    std::vector<std::string> m_studies;
};

#endif // STUDYLISTMODEL_H
