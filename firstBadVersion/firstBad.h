//
// Created by msi-user on 2022/9/24.
//

#ifndef FIRSTBADVERSION_FIRSTBAD_H
#define FIRSTBADVERSION_FIRSTBAD_H


#include <cstdio>

class firstBad {
bool isBadVersion(int n){
        if(n <= 3){
            return false;
        }
        return true;
    }
public:
    int firstBadVersionBack(int a,int b){
        if(b-a!=0){
            int mid =(a+b)/2;
            if(isBadVersion(mid)){
               return firstBadVersionBack(a,mid);
            }else{
                return firstBadVersionBack(mid+1,b);
            }
        }
        printf("123");
        return a;
    }
};


#endif //FIRSTBADVERSION_FIRSTBAD_H
