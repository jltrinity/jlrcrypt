#include<iostream>
#include<string>
#include"jlrcrypt.h"
#include <cstdlib> 

using namespace std;

int main(int argc, char* argv[]){
	
	/************ 
	[1-2] - [encryption-decryption]
	[pass]
	[int number]
	*************/


	if(argc <= 3){
	cout << "Error, please give the arguments" << endl;
	}
	else{

		if((atoi(argv[1])) == 1){
		cout << encryption(argv[2],atoi(argv[3])) << endl;
		}
		if((atoi(argv[1])) == 2){
		cout << decryption(argv[2],atoi(argv[3])) << endl;
		}

	}

return 0;
}
