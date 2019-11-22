#include "NAO.h"

using namespace std;
using namespace AL;


NAO::NAO(string nao_ip) : almotion(nao_ip), alposture(nao_ip)
{
	timer.Restart();
}

void NAO::WakeUp()
{
	almotion.wakeUp();
}

void NAO::Rest()
{
	almotion.rest();
}

void NAO::GoToPosture(string posture)
{
	alposture.goToPosture(posture, 1.0f);
}
int NAO::analisaSensores(int nInteracoes, int waitTime, string post){
	stringstream ss;
	Timer t;
	FileManager f;
	AL::ALValue sensors = AL::ALValue::array(0);
	try
	{
		AL::ALMotionProxy motion("127.0.0.1", 9559);
    	AL::ALRobotPostureProxy posture("127.0.0.1", 9559);
    	AL::ALMemoryProxy memory("127.0.0.1", 9559);

		motion.wakeUp();
		posture.goToPosture(post, 1.0f);
		//posture.goToPosture("Crouch", 1.0f);

		ss << "Ax"<< setw(15) << "Ay"<< setw(15)<< "Az"<< setw(15)<< "Gx"<< setw(15)<< "Gy"<< setw(15)<< "AnX"<< setw(15)<< "AnY"<< setw(15)<< "AnZ"<< setw(15)<< endl;

		int contador = 0;
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
		posture.goToPosture("Crouch", 1.0f);
		motion.rest();
		cout << ss.str() << endl;
		f.save(ss.str());

		return 0;
	}	
	catch (const AL::ALError &e)
  	{
    	cerr << "Caught exception: " << e.what() << endl;
		// posture.goToPosture("Crouch", 1.0f);
		// motion.rest();
    	return 1;
  	}
}
