//
// Created by msi-user on 2022/10/21.
//

#ifndef STOCKSPANNER_STOCKSPANNER_H
#define STOCKSPANNER_STOCKSPANNER_H

#include <climits>
#include "stack"

using namespace std;
class StockSpanner {
public:
    StockSpanner() {
        this->stk.emplace(-1, INT_MAX);
        this->idx = -1;
    }

    int next(int price) {
        idx++;
        while (price >= stk.top().second){
            stk.pop();
        }
        int ret = idx - stk.top().first;
        stk.emplace(pair<int,int>(idx,price));
        return ret;
    }

private:
    stack<pair<int, int>> stk;
    int idx;
};

/**
 * Your StockSpanner object will be instantiated and called as such:
 * StockSpanner* obj = new StockSpanner();
 * int param_1 = obj->next(price);
 */

#endif //STOCKSPANNER_STOCKSPANNER_H
