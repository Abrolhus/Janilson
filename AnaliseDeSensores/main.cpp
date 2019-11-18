
#include <iostream>
#include <qi/os.hpp>
#include <alerror/alerror.h>
#include <alcommon/almodule.h>
#include <alvalue/alvalue.h>
#include <alproxies/almemoryproxy.h>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>
#include <vector>
#include <string>

#include "Timer.h"

using namespace std;

int main(int argc, char *argv[])
{
  stringstream ss;
  string s;
  Timer t;
  AL::ALValue sensors = AL::ALValue::array(0);
  try
  {
    AL::ALMotionProxy motion("127.0.0.1", 9559);
    AL::ALRobotPostureProxy posture("127.0.0.1", 9559);
    AL::ALMemoryProxy memory("127.0.0.1", 9559);

    motion.wakeUp();
    posture.goToPosture("StandInit", 1.0f);
    cout << "AccelerometerZ" << endl;
    
    for(int i = 0; i < 20; i++)
    {
      ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerX/Sensor/Value") << setw(15);
      ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerY/Sensor/Value") << setw(15);
      ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value") << setw(15) << endl;
    //   ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value");
    //   ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value");
    //   ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value");
    //   ss << memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value");
      cout << ss << endl;
      t.Wait(100);  
    }
    motion.rest();
  }
  catch (const AL::ALError &e)
  {
    cerr << "Caught exception: " << e.what() << endl;
    return 1;
  }
  return 0;
}

