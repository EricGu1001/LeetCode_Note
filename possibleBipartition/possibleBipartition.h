//
// Created by msi-user on 2022/10/16.
//

#ifndef POSSIBLEBIPARTITION_POSSIBLEBIPARTITION_H
#define POSSIBLEBIPARTITION_POSSIBLEBIPARTITION_H

#include "vector"
#include "unordered_map"
using namespace std;
class Solution {
public:
    // 存储分组类型
    vector<int> color;
    // 存储不喜欢人列表
    vector<vector<int>> count;
    bool possibleBipartition(int n, vector<vector<int>>& dislikes) {
        color = vector<int>(n + 1, 0);
        count = vector<vector<int>>(n + 1);
        // 用二维数组存储每个人不喜欢的人的列表
        for(auto& dislike : dislikes) {
            count[dislike[0]].push_back(dislike[1]);
            count[dislike[1]].push_back(dislike[0]);
        }
        // 遍历每个人
        for(int i = 1; i <= n; i ++) {
            // 如果没分组且分组后有冲突
            if(color[i] == 0 && !dfs(i, 1)) {
                return false;
            }
        }
        return true;
    }

    bool dfs(int cur, int cur_color) {
        // 分组
        color[cur] = cur_color;
        // 遍历不喜欢人列表
        for(auto& node : count[cur]) {
            // 如果分组并且和当前不喜欢的人在一组，冲突
            if(color[node] && color[node] == cur_color) {
                return false;
            }
            // 如果未分组且分组后有冲突
            if(!color[node] && !dfs(node, 3 ^ cur_color)) {
                return false;
            }
        }
        return true;
    }
};
#endif //POSSIBLEBIPARTITION_POSSIBLEBIPARTITION_H
