#include <iostream>
#include <memory>
using namespace std;
struct PER {
    string nombre;
    PER(string s) {
        nombre = s;
    }
};
int main() {
/*
    unique_ptr<PER> pablo(new PER("Pablo"));

    cout << pablo->nombre << endl;

    unique_ptr<PER> ana(new PER("Ana"));

    pablo.swap(ana);

    cout << pablo->nombre << endl;*/

    double a = 23.897;
    float b = a;

    cout << b << endl;

    return 0;
}
