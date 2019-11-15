#include "SimpleTimer.h"
#include <iostream>
using namespace std;

int main(int argc, char *argv[])
{
    SimpleTimer t;
    float seconds;
    while (t.Seconds() < 10)
    {
        cout << t.Seconds() << endl;
        t.Wait(200);
    }
    return 0;
}