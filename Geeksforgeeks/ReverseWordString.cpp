string reverseWords(string S){ 
    // code here 
    int n = S.size();
    string x="",y="";
    int i=n-1;
    while(i>=0){
        if(S[i]=='.'){
            x+=y+".";
            y="";
        }else{
            y=S[i]+y;
        }
        i--;
    }
    x+=y;
    return x;
} 