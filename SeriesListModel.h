#ifndef SERIESLISTMODEL_H
#define SERIESLISTMODEL_H

#include <QtCore>
#include <QtGui>
#include <QAbstractListModel>
#include <QHash>
#include <QImage>

#include "QMLDicomImage.h"

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

    //Q_INVOKABLE void SetMinRange(int min) { lowerRange = min;}
    //Q_INVOKABLE void SetMaxRange(int max) { upperRange = max;}

    Q_INVOKABLE void setModelData(QVariant patientId, QVariant studyId);

    QHash<int, QByteArray> roleNames() const override;

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    //bool setData(const QModelIndex& index, const QVariant &value, int role) override;

    //Q_INVOKABLE void openFolder(QVariant path);

    Q_INVOKABLE void clearModelData();

    Q_INVOKABLE void createVoxelVolume(QString patient, QString study, QString id);

public slots:

private:
    std::string m_patient;
    std::string m_study;
    std::vector<std::string> m_series;

    QMLDicomImage dicomImg;
};

#endif // SERIESLISTMODEL_H
