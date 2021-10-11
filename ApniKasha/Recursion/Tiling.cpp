//count the number of paths possible in a maze
#include<iostream>
using namespace std;

int countPathMaze(int n, int i, int j){
    if( i == n-1 && j == n-1){
        return 1;
    }
    if(i>=n || j>=n){
        return 0;
    }
    return countPathMaze(n,i+1,j) + countPathMaze(n,i,j+1);
}
int main(){
    int n,s,e;
    cout<<"Enter Grid size[Square maze]: ";
    cin>>n;
    cout<<"Starting Point: ";
    cin>>s;
    cout<<"Ending Point: ";
    cin>>e;
    cout<<"So Total number of possible paths are: "<<countPathMaze(n,s,e)<<endl; //countPathMaze(number of grid{square shape},starting point , ending point)
    return 0;
}