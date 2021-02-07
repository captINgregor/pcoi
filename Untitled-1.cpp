#include <iostream>
#include <string>
using namespace std;
#define pass (void)0
int main() {
    string oreo, bruh;
    int h = 0;
    cin >> oreo;
    for (int i = 0; i < oreo.length(); i++) {
        bruh = oreo[i];
        
        if (bruh == "E") {
            cout << "1";
            h += 1;
            if (i == oreo.length() - 1) {
                pass;
            }
            else {
                cout << "+";
            }
        }
        if (bruh == "O") {
            cout << "100";
            h += 100;
            if (i == oreo.length() - 1) {
                pass;
            }
            else {
                cout << "+";
            }
        }
    }
    cout << "=" << h << "\n";
    return 0;
}