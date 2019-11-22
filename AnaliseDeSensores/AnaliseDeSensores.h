// AnaliseDeSensores.h
#ifndef ANALISEDESENSORES_H
#define ANALISEDESENSORES_H

#include "Timer.h"
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>
using namespace std;

struct Sensor
{
    string name;
    string path; // "/devices/.../..."
    int dataRate; // fenquencia em Hz

};

class AnaliseDeSensores
{
    private:
        int defautWaitTime; //ms
        int nInteracoes;
    public:
        AnaliseDeSensores();
        void analisarSensores(int nInteracoes);
        void analisarSensores(int nInteracoes, int waitTime);
        void analisarSensoresSemLoop(int nInteracoes, int waitTime);
        ~AnaliseDeSensores();
        //void addSensor(Sensor sen);

};


#endif