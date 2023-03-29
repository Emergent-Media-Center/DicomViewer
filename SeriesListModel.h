#ifndef SERIESLISTMODEL_H
#define SERIESLISTMODEL_H

#include <QtCore>
#include <QtGui>
#include <QAbstractListModel>
#include <QHash>
#include <QImage>

class SeriesListModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum SeriesRoles {
        PatientRole = Qt::UserRole + 1,
        StudyRole,
        SeriesRole
    };

    explicit SeriesListModel(QObject* parent = 0);
    ~SeriesListModel();

    Q_INVOKABLE void setModelData(QVariant patientId, QVariant studyId);

    QHash<int, QByteArray> roleNames() const override;

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    //bool setData(const QModelIndex& index, const QVariant &value, int role) override;

    //Q_INVOKABLE void openFolder(QVariant path);

    Q_INVOKABLE void clearModelData();

    Q_INVOKABLE void createVoxelVolume(QString patient, QString study, QString id);

    Q_INVOKABLE QImage getImage() {return img;}

public slots:

private:
    std::string m_patient;
    std::string m_study;
    std::vector<std::string> m_series;

    QImage img;
};

#endif // SERIESLISTMODEL_H
