#ifndef VOXELVOLUME_H
#define VOXELVOLUME_H
#include <vector>
#include <string>
using namespace std;
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
    vector<vector<vector<int>>> volume;
public:
    VoxelVolume(string PatientId, string StudyId, string SeriesId);
private:
//    seriesIsComplete();
};

#endif // VOXELVOLUME_H
