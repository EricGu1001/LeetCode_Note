//
// Created by msi-user on 2022/11/2.
//

#include "bestCoordinate.h"
int main(){
    vector<vector<int>> towers = {{0,1,2},{2,1,2},{1,0,2},{1,2,2}};
    int radius = 2;
    Solution s;
    s.bestCoordinate(towers,radius);
    return 0;
}