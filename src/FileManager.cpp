#include "FileManager.h"

using namespace std;

FileManager::FileManager()
{

}

void FileManager::save(string x)
{
	ofstream arquivoDeSaida("exemplo01.txt", ios::out); // cria objeto da classe ofstream para escrita de arquivos

	if (arquivoDeSaida) // verifica se o objeto foi criado
	{
		//arquivoDeSaida << "Escreve linha 1.\n"; // escreve na primeira linha do arquivo txt
		arquivoDeSaida << x << endl;
		arquivoDeSaida.close();
	} // fim do if
	else
		cout << "Nao foi poss韛el abrir o arquivo.\n";
}

void FileManager::read()
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
		cout << "Nao foi poss�vel abrir o arquivo.\n";
}