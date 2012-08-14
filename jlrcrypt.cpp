/* jlrcrypt.cpp */
/* @jlr	*/

#include<string>
#include"jlrcrypt.h"

using namespace std;



string encryption(string c,int d){

	string st=c;
	
	for(size_t i=0; i < c.size(); i++){
		st[i] = lettercase[((letter(c[i]) + d) % LIMITE)];
	}
	
	return st;

}

string decryption(string c,int d){

	string st=c;
	
	for(size_t i=0; i < c.size(); i++){
		st[i] = lettercase[((letter(c[i]) - d) % LIMITE)];
	}
	
	
	return st;


}

int letter(char c){

	bool search=false;
	int i=0;

	while(i < LIMITE && search==false){
		
		if(c == lettercase[i]){
			return i;
		}
		
		i++;
	}
	return i;
}
