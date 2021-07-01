#include <iostream>
#include <climits>
using namespace std;

int main(){
    //largest word in a sentence
    int n;//no of words in a sentence
    cin >> n;
    cin.ignore();
    char arr[n+1];

    cin.getline(arr, n); //we use get line because as we use space in input it is consider as new line or new sentence(here)
    cin.ignore(); //this is use to clear the buffer of the input

    int i=0;
    int currLength = 0, maxLength = 0;
    int st = 0, maxSt =0;
    while(1)
    {
        if(arr[i] == ' ' || arr[i] == '\0'){
            if(currLength > maxLength){
                maxLength = currLength;
                maxSt = st;
            }
            currLength =0;
            st = i+1;
        }
        else{
            currLength++;
        }

        if(arr[i] == '\0'){
            break;
        }
        i++;
    }

    cout << maxLength << endl;
    for(int i=0; i<maxLength; i++){
        cout << arr[i+maxSt];
    }
    return 0;
}