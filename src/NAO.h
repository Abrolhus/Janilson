#ifndef _NAO_H_
#define _NAO_H_

#include <iostream>
#include <string>
#include <iomanip>

#include <qi/os.hpp>
#include <alerror/alerror.h>
#include <alcommon/almodule.h>
#include <alvalue/alvalue.h>
#include <alproxies/almemoryproxy.h>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>

#include "src/Timer.h"
#include "src/FileManager.h" //save e read para txt;

using namespace std;


class NAO
{
private:
  AL::ALMotionProxy almotion;
  AL::ALRobotPostureProxy alposture;
  //FileManager fileMng;

public:
  NAO(string nao_ip);
  Timer timer;

  void WakeUp();
  void Rest();
  void GoToPosture(string);
  int analisaSensores(int nInteracoes, int waitTime, string post);
  void getDataAmostra(int nInteracoes, string path);

};

#endif