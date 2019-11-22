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

#include "AnaliseDeSensores.h"
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
    posture.goToPosture("StandInit", 1.0f);
    
    //chamada da funcao//
    motion.rest();
    // cout << ss.str() << endl;
    // save(ss.str());
  }
  catch (const AL::ALError &e)
  {
    cerr << "Caught exception: " << e.what() << endl;
    return 1;
  }
  return 0;
}

