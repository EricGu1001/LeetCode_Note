//
// Created by msi-user on 2022/10/26.
//

#ifndef MINPATHSUM_MINPATHSUM_H
#define MINPATHSUM_MINPATHSUM_H
#include "vector"
#include "algorithm"
using namespace std;
class Solution {
public:
    int m,n;
    int min_step = INT_MAX;
    vector<int> path;
    vector<vector<int>> ans;
    vector<vector<int>> dirs = {{1,0},{0,1}};
    void dfs(vector<vector<int>>& grid,int row,int column,vector<int> path,vector<vector<int>> ans){
        if (row == m-1 && column == n-1) {
            path.push_back(grid[row][column]);
            ans.push_back(path);
            int step = 0;
            for (int i = 0; i < path.size(); ++i) {
                step += path[i];
            }
            min_step = min(min_step,step);
            return;
        }
        if (row == m -1){
            path.push_back(grid[row][column]);
            dfs(grid,row,column+1,path,ans);
            path.pop_back();
        }
        if (column == n -1){
            path.push_back(grid[row][column]);
            dfs(grid,row,column+1,path,ans);
            path.pop_back();
        }
        if(row <m-1&&column<n-1) {
            //选择向下走
            path.push_back(grid[row][column]);
            dfs(grid,row+1,column,path,ans);
            path.pop_back();
            path.push_back(grid[row][column]);
            dfs(grid,row,column+1,path,ans);
            path.pop_back();
        }

    }
    int minPathSum(vector<vector<int>>& grid) {
        m = grid.size();
        n = grid[0].size();

        dfs(grid,0,0,path,ans);
        return min_step;
    }
};


#endif //MINPATHSUM_MINPATHSUM_H
