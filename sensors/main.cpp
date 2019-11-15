/*
COMO COMPILAR E TESTAR OS CODIGOS USANDO NAOQI:
0: Garanta que o robo esteja no ssh e no modo naoqi:
          ssh nao@nao0x.local
            senha: nao
          ./data/disable (após esse comando, o robo reiniciará no modo naoqi)

1: na pasta do projeto - > qibuild configure -c rinobot-robot
                           qibuild make -c rinobot-robot

Se nao tiver erros de codigo, o executavel (".exe") está em: build-rinobot-robot/sdk/bin/sensors

2: Envia o executavel para o robo - > scp build-rinobot-robot/sdk/bin/sensors nao@nao0x.local:~/

3: Conecta com o robô via ssh - > ssh nao@nao0x.local
                                  senha: nao

4: Execute o código no robo (janela do ssh) -> ./sensors

5: Para obter os arquivos que foram salvos no robo: (de um terminal fora do ssh):
                                                scp nao@nao0x.local:~/arquivo.txt . (o ponto indica que será salvo na pasta q o terminal estiver)

*/

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
  stringstream data;
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
    
    for(int i = 0; i < 5; i++)
    {
      sensors[0] = memory.getData("Device/SubDeviceList/InertialSensor/AccelerometerZ/Sensor/Value");
      cout << sensors[0] << endl;
      t.Wait(1000);  
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

