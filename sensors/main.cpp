/*
COMO COMPILAR E TESTAR OS CODIGOS USANDO NAOQI:
0: Garanta que o robo esteja no ssh e no modo naoqi:
          ssh nao@nao0x.local
            senha: nao
          ./data/disable (após esse comando, o robo reiniciará no modo naoqi)

1: na pasta do projeto - >  qibuild make -c rinobot-robot

Se nao tiver erros de codigo, o executavel (".exe") está em: build-rinobot-robot/sdk/bin/sensors

2: Envia o executavel para o robo - > scp build-rinobot-robot/sdk/bin/sensors nao@nao0x.local:~/

3: Conecta com o robô via ssh - > ssh nao@nao0x.local
                                  senha: nao

4: Execute o código no robo (janela do ssh) -> ./sensors

5: Para obter os arquivos que foram salvos no robo: (de um terminal fora do ssh):
                                                scp nao@nao0x.local:~/arquivo.txt . (o ponto indica que será salvo na pasta q o terminal estiver)

*/

#include <iostream>
#include <iomanip>
#include <qi/os.hpp>
#include <alerror/alerror.h>
#include <alcommon/almodule.h>
#include <alvalue/alvalue.h>
#include <alproxies/almemoryproxy.h>
#include <alproxies/almotionproxy.h>
#include <alproxies/alrobotpostureproxy.h>
#include <vector>
#include <string>
#include <fstream>
#include <sstream>

#include "Timer.h"

using namespace std;
//void read();
// void save(string s);
// void read();

void save(string x)
{
	ofstream arquivoDeSaida("data.txt", ios::out); // cria objeto da classe ofstream para escrita de arquivos

	if (arquivoDeSaida) // verifica se o objeto foi criado
	{
		//arquivoDeSaida << "Escreve linha 1.\n"; // escreve na primeira linha do arquivo txt
		arquivoDeSaida << x << endl;
		arquivoDeSaida.close();
	} // fim do if
	else
		cout << "Nao foi possivel abrir o arquivo.\n";
}

void read()
{
	string linha;

	ifstream arquivoDeEntrada("data.txt", ios::in); // cria objeto da classe ifstream para leitura de arquivos

	if (arquivoDeEntrada) // verifica se o objeto foi criado
	{
		while (getline(arquivoDeEntrada, linha))
		{
			cout << linha << '\n';
		} // fim do while
		arquivoDeEntrada.close();
	} // fim do if
	else
		cout << "Nao foi possivel abrir o arquivo.\n";
}

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
    //posture.goToPosture("StandInit", 1.0f);
    posture.goToPosture("Crouch", 1.0f);

    ss << "Ax"<< setw(15) << "Ay"<< setw(15)<< "Az"<< setw(15)<< "Gx"<< setw(15)<< "Gy"<< setw(15)<< "AnX"<< setw(15)<< "AnY"<< setw(15)<< "AnZ"<< setw(15)<< endl;
    
    int interacoes = 20000;
    int contador = 0;
    int waitTime = 25;
    for(int i = 0; i < interacoes; i++)
    {
      cout << i << "/" << interacoes << " ";
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
    save(ss.str());
  }
  catch (const AL::ALError &e)
  {
    cerr << "Caught exception: " << e.what() << endl;
    return 1;
  }
  return 0;
}


