#ifndef VOXELVOLUME_H
#define VOXELVOLUME_H
#include <vector>
#include <string>
#include <gdcmImageReader.h>
using namespace std;
using namespace gdcm;

class VoxelVolume {
private:
    int Instances;
    int Rows;
    int Colmns;

    double SliceThickness;
    int LargestPixelValueInSeries;
    int SmallestPixelValueInSeries;
    float PixelSpacingRow, PixelSpacingCol, spacingTickness;

    // instance, row, colum
    vector<vector<vector<double>>> volume;
public:
    int GetRows() { return Rows; }
    int GetColumns() { return Colmns; }
    VoxelVolume(string PatientId, string StudyId, string SeriesId);

    vector<vector<vector<double>>>& getVolume() {return volume;}
private:

};

#endif // VOXELVOLUME_H
