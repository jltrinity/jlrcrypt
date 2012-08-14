/* jlrcrypt.h */
/* @jlr	*/

#include<string>
#include<fstream>
#define LIMITE 62

using namespace std;

static const char lettercase[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'};

int letter(char c);

string encryption(string c,int d);
string decryption(string c,int d);

void ShowPasswords(void);

