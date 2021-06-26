#include "imageprocessing.h"
#include <cmath>

// Вычисление средней освещенности изображения
int calculateExposure(const QImage& image)
{
    int64_t sum=0;
    int64_t count=0;
    for (int x=0; x < image.width(); x++)
        for (int y=0; y < image.height(); y++)
        {
            sum += image.pixelColor(x, y).red();
            count++;
        }
    return sum/count;
}

// Вычисление контсраста изображения
double calculateContrast(const QImage& image, int mean)
{
    double sum_c = 0;
    for (int x=0; x < image.width(); x++)
        for (int y=0; y < image.height(); y++)
            sum_c += pow(((double)image.pixelColor(x, y).red()/256.0)-((double)mean/256.0), 2);
    return sqrt(sum_c/(double)(image.width()*image.height()));
}

ImageCharacteristics processImage(const QImage& image)
{
    ImageCharacteristics imgChar;

    imgChar.exposure = calculateExposure(image);
    imgChar.contrast = calculateContrast(image, imgChar.exposure);

    return imgChar;
}

Histogram getImageHistogram(const QImage& image)
{
    Histogram hist{0};
    for (int x=0; x < image.width(); x++)
        for (int y=0; y < image.height(); y++)
            hist[image.pixelColor(x, y).red()]++;
    return hist;
}
