//the whole code for "PARENTHESIS CHECKER"
#include<iostream>
#include<string>
#include<stack>
using namespace std;
 //Function to check if brackets are balanced or not
bool bracket(string exp)
{
//crearting a stack to store the opening brackets
stack<char>s;
//for loop for traversing in the string exp
for(int i=0;i<exp.length();i++){
//if stack is empty then push the exp[i] into it
   if(s.empty()){
     s.push(exp[i]);
}
/*  if closing brackets occur in the string exp after              
//pushing exp[i] into stack then check whether the      
//closing brackets occur.
     If yes then pop from the stack.*/
    else if((s.top()=='(' && exp[i]==')') || (s.top()=='['     && exp[i]==']') || (s.top()=='{' && exp[i]=='}') ){
          s.pop();
     }

//else push into the stack the exp[i].

    else

           {

                s.push(exp[i]);
           }

}

 

//returning whether the parenthesis are balanced by //bool type.

     if(s.empty())

               return true;

     return false;

}

 

int main()

{

string exp="({}[]{})";

bracket(exp);

return 0;

}