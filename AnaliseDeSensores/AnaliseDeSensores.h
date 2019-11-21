// AnaliseDeSensores.h
#ifndef AnaliseDeSensores_H
#define AnaliseDeSensores_H

#include "timer.h"
#include <string>
#include <fstream>
#include <sstream>
struct Sensor
{
    string name;
    string path; // "/devices/.../..."
    int dataRate; // fenquencia em Hz

};

class AnaliseDeSensores
{
    private:
        int waitTime = 25; //ms




    public:
    AnaliseDeSensores(Sensor s1, ...);
    void GetData2txtLoop(int nInteracoes, Sensor s1, ...)
    ~AnaliseDeSensores();
};


#endif