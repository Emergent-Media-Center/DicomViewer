#ifndef VOXELVOLUME_H
#define VOXELVOLUME_H
#include <vector>
#include <string>
#include <gdcmImageReader.h>
using namespace std;
using namespace gdcm;

class VoxelVolume {
private:
    int instances;
    int rows;
    int colmns;
    double distanceBetweenInstances;
    int maxIntensity;
    int minIntensity;
    float spacingCol, spacingRow, spacingTickness;

    // instance, row, colum
    vector<vector<vector<double>>> volume;
public:
    VoxelVolume(string PatientId, string StudyId, string SeriesId);
private:

};

#endif // VOXELVOLUME_H
