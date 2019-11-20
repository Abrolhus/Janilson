// Aula 06 Saida 01: saida01.cpp
// Escreve um arquivo de texto

#include <iostream> // permite que o programa gere entrada/sa韉a de dados
#include <fstream>  // permite leitura/escrita de arquivos
#include <sstream>
#include <string>
#include <iomanip>

using namespace std;
void save(string);
void read();

// a funcão main inicia a execucão do programa
int main()
{
	stringstream ss;
	cout << "Rinobot" << setw(15) << "Team" << endl;
	for(int i = 0; i < 20 ; i++)
	{
		ss << setw(5) << i << setw(15) <<  i+1 <<endl;
	}
	cout << ss.str() << endl;
	string s = ss.str();
	save(s);
	//read();
	return 0;  // indica terminacão bem-sucedida

} // fim de main

void save(string x)
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
		cout << "Nao foi poss�vel abrir o arquivo.\n";
}