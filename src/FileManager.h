#ifndef _FILEMANAGER_H_
#define _FILEMANAGER_H_

#include <iostream> // permite que o programa gere entrada/saída de dados
#include <fstream>  // permite leitura/escrita de arquivos
#include <sstream>  // string Stream
#include <string>   // strings sem precisar do std::
#include <iomanip>  // setw()

using namespace std;

class FileManager
{
    private:
        ;
        
    public:
        FileManager();
        void save(string);
        void read();
};

#endif