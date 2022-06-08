// https://www.geeksforgeeks.org/search-an-element-in-a-sorted-and-pivoted-array/

class Solution{
    public:
    int search(int A[], int l, int h, int key){
        //complete the function here
        for(int i=0;i<h;++i){
            if(A[i]==key){
                return i;
            }
        }
        return -1;
    }
};