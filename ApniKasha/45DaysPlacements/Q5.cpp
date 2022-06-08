class Solution{
    public:
    long long findMinDiff(vector<long long> a, long long n, long long m){
    //code
        int diff=0;
        int mindiff=INT_MAX;
        sort(a.begin(),a.end());
        
        if(n!=m){
            for(int i=0; i<=n-m;++i){
                diff = a[i+m-1]-a[i];
                mindiff = min(diff,mindiff);
            }
        }
        else{
            mindiff= a[n-1]-a[0];
        }
        
        return mindiff;
    }   
};