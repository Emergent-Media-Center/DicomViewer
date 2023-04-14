# Dicom Viewer

A simple DICOM viewer that can read and display DICOM files.

- [x] Read DICOM files
- [x] Display DICOM files
- [x] Windowing
- [ ] GPU-based image processing
- [ ] Zooming
- [ ] Panning
- [ ] DICOM file information
- [ ] DICOM file metadata
- [ ] Raycasting
- [ ] 3D Segmentation
- [ ] 3D rendering
- [ ] 3D Reconstruction


# Credits
Created by: [Dillon Drummond](https://github.com/dillondrum70), [Angus Goucher](https://github.com/gusg21), [Zach Rouhana](https://github.com/Zacrous12), and [Alexandre Tolstenko](https://github.com/tolstenko)

## Contributions
- Zach: Worked on UI implementation and general functionality of window and viewing for the Dicom Viewer. Built a scalable UI for a number of devices and screen sizes.
- Angus:
- Dillon: 

# Requirements

- [CMake](https://cmake.org/)
- [QT](https://www.qt.io/)

# Build

In order for you build the project, you need to have CMake and QT installed on your system and available in your PATH.

```bash
qt-cmake ./ -G Ninja -B ./build
cmake --build ./build --parallel
```

If build via bash is not working, try to build via qt-creator. Or via any other IDE, such as CLion. But in either case, you need to have make qt and cmake available in your PATH. In my case, I set QT6_DIR to the path where I installed QT to the specific version I am using. Ex.: `/Users/tolstenko/Qt/6.4.3/macos`, or `C:\Qt\6.4.3\msvc2019_64`.

