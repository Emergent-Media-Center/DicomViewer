#ifndef CUSTOMTREEVIEW_H
#define CUSTOMTREEVIEW_H

#include <QWidget>
#include <QTreeView>

class CustomTreeView : public QTreeView
{
    Q_OBJECT
public:
    explicit CustomTreeView(QWidget *parent = nullptr);

signals:

};

#endif // CUSTOMTREEVIEW_H
