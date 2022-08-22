// Given a dictionary consisting of N words, and a query word S, auto-suggest the best word from the dictionary that is closest to S.
// Two words are first compared by their Levenshtein distance to the word S. If two words have the same Levenshtein distance, then the lexicographically smaller word is given priority.
#include<bits/stdc++.h>
using namespace std;

string levenshteinDistance(int N, vector<string> words, string s){
    int min = INT_MAX;
    string ans;
    for(int i=0;i<N;i++){
        int dist = 0;
        for(int j=0;j<s.length();j++){
            if(words[i][j] != s[j]){
                dist++;
            }
        }
        if(dist < min){
            min = dist;
            ans = words[i];
        }
        else if(dist == min){
            if(words[i] < ans){
                ans = words[i];
            }
        }
    }
    return ans;
}

int main(){
    ios::sync_with_stdio(0);
    cin.tie(0);
    int N;
    cin>>N;
    vector<string> words(N);
    for(int i=0;i<N;i++){
        cin>>words[i];
    }
    string s;
    cin>>s;
    cout<<levenshteinDistance(N,words,s);
}
