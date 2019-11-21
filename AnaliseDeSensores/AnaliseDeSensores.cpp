// AnaliseDeSensores.cpp
#include "AnaliseDeSensores.h"

class AnaliseDeSensores
{
private:

public:
    AnaliseDeSensores::AnaliseDeSensores(/* args */) {}
    AnaliseDeSensores::~AnaliseDeSensores(){}
    void AnaliseDeSensores::GetData2txtLoop(int nInteracoes){
        stringstream ss;
        string s;
        Timer t;
        ss << "Ax"<< setw(15) << "Ay"<< setw(15)<< "Az"<< setw(15)<< "Gx"<< setw(15)<< "Gy"<< setw(15)<< "AnX"<< setw(15)<< "AnY"<< setw(15)<< "AnZ"<< setw(15)<< endl;
    
        int contador = 0;
        int waitTime = 25;
        for(int i = 0; i < nInteracoes; i++)
        {
        cout << i << "/" << nInteracoes << " ";
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerX/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerY/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/GyroscopeX/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/GyroscopeY/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AngleX/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AngleY/Sensor/Value") << setw(15);
        ss << memory.getData("Device/SubDeviceList/InertialSensor/AngleZ/Sensor/Value");
        
        ss << endl;
        
        cout<< contador << endl;
        contador += waitTime;
        t.Wait(waitTime);
        }    
        cout << ss.str() << endl;
        save(ss.str());
    }
};