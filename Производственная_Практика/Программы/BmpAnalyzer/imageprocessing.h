#ifndef IMAGEPROCESSING_H
#define IMAGEPROCESSING_H

#include <QImage>
#include <array>

// Структура с характеристиками изображения
struct ImageCharacteristics
{
    // Средняя освещенность изображения (от 0 до 255)
    int exposure;
    // Контраст изображения (от 0 до 0.5)
    double contrast;
};

// Обработка изображения на выходе которой получается структура с его характеристиками
ImageCharacteristics processImage(const QImage& image);

// Гистограмма
typedef std::array<int, 256> Histogram;

// Получение гистограммы изображения
Histogram getImageHistogram(const QImage& image);


#endif // IMAGEPROCESSING_H
