#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QSurfaceFormat>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    QSurfaceFormat format;
    format.setRenderableType(QSurfaceFormat::OpenGL);
    format.setProfile(QSurfaceFormat::CoreProfile);
    format.setVersion(3,3);

    

    glWidget = new GLWidget(this);
    glWidget->setFormat(format);

    ui->setupUi(this);
    ui->openglArea->setWidget(glWidget);
    ui->openglArea->setWidgetResizable(true);
    ui->openglArea->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    ui->openglArea->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    ui->openglArea->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
    
    QStringList list;
    list << "none" << "surface" << "normal";
    ui->comboBox->addItems(list);
    ui->comboBox->setCurrentIndex(1);
    QFileSystemModel *model = new QFileSystemModel(this);
    QStringList filters;
    filters << "*.swp";
    model->setNameFilters(filters);
    // model->index("./");
    model->setRootPath(QDir::currentPath()+"/swp"); //设置根目录
    ui->swpFileList->setModel(model);
    ui->swpFileList->setRootIndex(model->index(QDir::currentPath()+"/swp"));
    
    QObject::connect(glWidget,SIGNAL(setRotateSing(int)),this,SLOT(setRotate(int)));
    QObject::connect(ui->xrotSlide,SIGNAL(valueChanged(int)), this,SLOT(xrotate(int)));
    QObject::connect(ui->yrotSlide,SIGNAL(valueChanged(int)), this,SLOT(yrotate(int)));
    QObject::connect(ui->zrotSlide,SIGNAL(valueChanged(int)), this,SLOT(zrotate(int)));


}

MainWindow::~MainWindow()
{
    delete ui;
}
void MainWindow::xrotate(int)
{
    glWidget->xrot = ui->xrotSlide->value();
}
void MainWindow::yrotate(int)
{
    glWidget->yrot = ui->yrotSlide->value();
}
void MainWindow::zrotate(int)
{
    glWidget->zrot = ui->zrotSlide->value();
}
void MainWindow::setRotate(int)
{
    // qDebug()<<"setting";
    ui->xrotSlide->setValue(glWidget->xrot);
    ui->yrotSlide->setValue(glWidget->yrot);
    ui->zrotSlide->setValue(glWidget->zrot);
    ui->depthSlide->setValue(glWidget->depth);
    // printf("%d %d", &ui->zrotSlide->value(),&ui->yrotSlide->value());
//    update();
}

void MainWindow::on_shadeButton_clicked(bool checked)
{
    glWidget->shaded = checked;
}


void MainWindow::on_swpFileList_doubleClicked(const QModelIndex &index)
{
    QString name = index.data().toString();
    name = "swp/"+name;
        char*  ch;
        QByteArray ba = name.toLatin1(); // must
        ch=ba.data();
        char *t[20];
        t[1] = ch;
        glWidget->loadObjects(2,t);
        glWidget->recordVertices();


        // free(glWidget);
        // glWidget = new GLWidget(this , ch);
        // ui->openglArea->setWidget(glWidget);

}
void MainWindow::on_depthSlide_valueChanged(int value)
{
    glWidget->depth = value;
    // glWidget->camera.DistanceZoom(lastPos.x(),glWidget->depth);
}


void MainWindow::on_comboBox_activated(int index)
{
    glWidget->gSurfaceMode = index;
}
