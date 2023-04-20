/****************************************************************************
** Meta object code from reading C++ file 'QMLDicomImage.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.4.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../../QMLDicomImage.h"
#include <QtGui/qtextcursor.h>
#include <QScreen>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QMLDicomImage.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.4.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
namespace {
struct qt_meta_stringdata_QMLDicomImage_t {
    uint offsetsAndSizes[8];
    char stringdata0[14];
    char stringdata1[9];
    char stringdata2[8];
    char stringdata3[1];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_QMLDicomImage_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_QMLDicomImage_t qt_meta_stringdata_QMLDicomImage = {
    {
        QT_MOC_LITERAL(0, 13),  // "QMLDicomImage"
        QT_MOC_LITERAL(14, 8),  // "getImage"
        QT_MOC_LITERAL(23, 7),  // "QImage*"
        QT_MOC_LITERAL(31, 0)   // ""
    },
    "QMLDicomImage",
    "getImage",
    "QImage*",
    ""
};
#undef QT_MOC_LITERAL
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_QMLDicomImage[] = {

 // content:
      10,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   20,    3, 0x02,    1 /* Public */,

 // methods: parameters
    0x80000000 | 2,

       0        // eod
};

Q_CONSTINIT const QMetaObject QMLDicomImage::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_QMLDicomImage.offsetsAndSizes,
    qt_meta_data_QMLDicomImage,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_QMLDicomImage_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<QMLDicomImage, std::true_type>,
        // method 'getImage'
        QtPrivate::TypeAndForceComplete<QImage *, std::false_type>
    >,
    nullptr
} };

void QMLDicomImage::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<QMLDicomImage *>(_o);
        (void)_t;
        switch (_id) {
        case 0: { QImage* _r = _t->getImage();
            if (_a[0]) *reinterpret_cast< QImage**>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject *QMLDicomImage::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QMLDicomImage::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_QMLDicomImage.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int QMLDicomImage::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
