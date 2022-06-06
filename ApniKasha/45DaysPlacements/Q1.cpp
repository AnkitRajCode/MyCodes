pair<long long, long long> getMinMax(long long a[], int n) {
     pair<long long, long long > p;
    int tempmin=INT_MAX;
    int tempmax=INT_MIN;
    for(int i=0; i<n ;i++){
        int x=a[i];
        tempmin = min(tempmin,x);
        tempmax = max(tempmax,x);
    }
    p={tempmin,tempmax};
    return p;
}