## 两数之和

### 暴力求解

C

```c
int* twoSum(int* nums, int numsSize, int target) {
    int i,j;
    int *result=NULL;
    for(i=0;i<numsSize-1;i++)
    {
        for(j=i+1;j<numsSize;j++)
        {
            if(nums[i]+nums[j]==target)
            {
                 result=(int*)malloc(sizeof(int)*2);
                 result[0]=i;
                 result[1]=j;
                 return result;
            }
        }	
    }
    return result;
}
```

C++

```c++
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        int n = nums.size();
        for (int i = 0; i < n; ++i) {
            for (int j = i + 1; j < n; ++j) {
                if (nums[i] + nums[j] == target) {
                    return {i, j};
                }
            }
        }
        return {};
    }
};
```

### 哈希

思路：

遇到元素是否出现过考虑用哈希

```c++
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        std::unordered_map <int,int> map;
        for(int i = 0; i < nums.size(); i++) {
            // 遍历当前元素，并在map中寻找是否有匹配的key
            auto iter = map.find(target - nums[i]);//在容器中寻找值为k的元素，返回该元素的迭代器。否则，返回map.end()
            if(iter != map.end()) {//map.end指向的元素是容器中最后一个元素之后的元素，是一个 理论上的元素 ，实际并不存在
                return {iter->second, i};//iter->second对应的value
            }
            // 如果没找到匹配对，就把访问过的元素和下标加入到map中
            map.insert(pair<int, int>(nums[i], i)); 
        }
        return {};
    }
};
```

 ![图片说明](https://img-ask.csdn.net/upload/201708/05/1501913707_8138.png) 

## 有效的括号

### 栈的应用

```c++
class Solution {
public:
    unordered_map<char, char> pairs = {
            {')', '('},
            {']', '['},
            {'}', '{'}
    };
    bool isValid(string s) {
        if(s.size()%2!=0){
            return false;
        }
        std::stack <char> stack;
        for(char ch: s){
            if(ch=='('||ch=='['||ch=='{'){
                stack.push(ch);
                continue;
            }
            else{
                if(stack.empty()){
                    return false;
                }
                if(stack.top() == pairs[ch]){
                    stack.pop();
                    continue;
                }
                else{
                    return false;
                }
            }
        }
        return stack.empty();
    }
};
```

注意：pairs的顺序，谁在前 谁在后 以及 如果第一个就是右括号时判空

力扣题解

```c++
class Solution {
public:
    bool isValid(string s) {
        int n = s.size();
        if (n % 2 == 1) {
            return false;
        }

        unordered_map<char, char> pairs = {
            {')', '('},
            {']', '['},
            {'}', '{'}
        };
        stack<char> stk;
        for (char ch: s) {
            if (pairs.count(ch)) {
                if (stk.empty() || stk.top() != pairs[ch]) {
                    return false;
                }
                stk.pop();
            }
            else {
                stk.push(ch);
            }
        }
        return stk.empty();
    }
};
```

## 合并两个有序链表

创建一个新的链表

注意：哨兵指针的模板写法

```C++
//普通创建一个新链表保存
class Solution {
public:
    ListNode* mergeTwoLists(ListNode* list1, ListNode* list2) {
        ListNode* preHead = new ListNode(-1);
        ListNode* prev = preHead;
        while (list1 != nullptr && list2 != nullptr){
        if(list1 == nullptr){
            return list2;
        }
        if(list2 == nullptr){
            return list1;
        } else if(list1->val <= list2->val){
            prev->next=list1;
            list1= list1->next;
        } else{
            prev->next=list2;
            list2 = list2->next;
        }
        prev = prev->next;
        }
        prev->next = list1 == nullptr ? list2 : list1;
        return preHead->next;
    }
};
```

通过递归，不需要新创建一个链表

```c++
class  Solution2{
public:
    ListNode* mergeTwoLists_2(ListNode* list1, ListNode* list2){
        if(list1 == nullptr){
            return list2;
        }
        if(list2 == nullptr){
            return list1;                                                                 
        } else if(list1->val < list2->val){
        list1->next=mergeTwoLists_2(list1->next,list2);
        return list1;
        }
        else{
            list2->next=mergeTwoLists_2(list2->next,list1);
            return list2;
        }
    }
};
```

## 买卖股票的最佳时机

动态规划 前i天的最大收益 = max{前i-1天的最大收益，第i天的价格-前i-1天中的最小价格}

```c++
class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int inf = 1e9;
        int minprice = inf, maxprofit = 0;
        for (int price: prices) {
            maxprofit = max(maxprofit, price - minprice);
            minprice = min(price, minprice);
        }
        return maxprofit;
    }
};
```

## 验证回文串

主要考察字符串的相关操作以及双指针

```c++
class Solution {
public:
    bool isPalindrome(string s) {
        string sgood;
        for (char ch: s) {
            if (isalnum(ch)) {//判断字符串中所有的数字和字母
                sgood += tolower(ch);//+=比用+时间消耗和空间消耗好很多
            }
        }
        string sgood_rev(sgood.rbegin(), sgood.rend());
        return sgood == sgood_rev;
    }
};
```

```c++
class Solution {
public:
    bool isPalindrome(string s) {
        string sgood;
        for (char ch: s) {
            if (isalnum(ch)) {
                sgood += tolower(ch);
            }
        }
        int n = sgood.size();
        int left = 0, right = n - 1;
        while (left < right) {
           if (sgood[left] != sgood[right]) {
                return false;
            }
            ++left;
            --right;
        }
        return true;
    }
};
```



## 翻转二叉树

注意不能只是做结点值的交换，如果出现空指针会报错，应该做指针的交换

```C++
struct TreeNode{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0),left(nullptr),right(nullptr){};
    TreeNode(int x) : val(x),left(nullptr),right(nullptr);
    TreeNode(int x,TreeNode* left,TreeNode* right) : val(x),left(left),right(right){}
};
class Solution {
public:
    TreeNode* invertTree(TreeNode* root) {
        if (root == nullptr) {
            return nullptr;
        }
        TreeNode* left = invertTree(root->left);
        TreeNode* right = invertTree(root->right);
        root->left = right;
        root->right = left;
        return root;
    }
};
```



## 有效的字母异位词

### 利用unordered_map

```C++
class Solution {
public:
    bool isAnagram(string s, string t) {
        if (s.length() != t.length())
            return false;
        unordered_map<char ,int> map_s,map_t;
        for (int i = 0; i <s.length(); ++i) {
            if (map_s.find(s[i]) != map_s.end()){
                map_s.find(s[i])->second++;
            } else{
                map_s.insert(pair<char,int>(s[i],1));
            }
        }
        for (int i = 0; i <t.length(); ++i) {
            if (map_t.find(t[i]) != map_t.end()){
                map_t.find(t[i])->second++;
            } else{
                map_t.insert(pair<char,int>(t[i],1));
            }
        }
        for (auto iter = map_s.begin(); iter != map_s.end() ; ++iter) {
            if(map_t.find(iter->first) != map_t.end() && map_t.find(iter->first)->second == iter -> second){

            } else{
                return false;
            }
        }
        return true;
    }
};
```

 t是 s 的异位词等价于「两个字符串排序后相等」 

```C++
class Solution {
public:
    bool isAnagram(string s, string t) {
        if (s.length() != t.length()) {
            return false;
        }
        sort(s.begin(), s.end());
        sort(t.begin(), t.end());
        return s == t;
    }
};
```

### 利用哈希的思路，只需要一个表，时间比上面第一个快很多

```C++
class Solution {
public:
    bool isAnagram(string s, string t) {
        if (s.length() != t.length()) {
            return false;
        }
        vector<int> table(26, 0);
        for (auto& ch: s) {
            table[ch - 'a']++;
        }
        for (auto& ch: t) {
            table[ch - 'a']--;
            if (table[ch - 'a'] < 0) {
                return false;
            }
        }
        return true;
    }
};
```

## 二分查找

```C++
class Solution {
public:
    int search(vector<int>& nums, int target) {
    int n = nums.size();
        int i=0,j=n-1;
        while (i <= j){
            if (target == nums[i])
                return i;
            if (target == nums[j])
                return j;
            else if (target == nums[(i+j)/2])
                return (i+j)/2;
            else if (target > nums[(i+j)/2]){
                i = (i+j)/2+1;
            } else{
                j = (i+j)/2-1;
            }
        }
        return -1;
    }
};
```



## 图像渲染

### 基于队列实现广度优先搜索

```C++
class Solution {
public:
    const int dx[4] = { 1, 0, 0, -1 };
    const int dy[4] = { 0, 1, -1, 0 };
    vector<vector<int>> floodFill(vector<vector<int>>& image, int sr, int sc, int color) {
        int currColor = image[sr][sc];
        if (currColor == color) {
            return image;
        }
        int n = image.size(), m = image[0].size();
        queue<pair<int, int>> que;
        que.emplace(sr, sc);
        image[sr][sc] = color;
        while (!que.empty()) {
            int x = que.front().first, y = que.front().second;
            que.pop();
            for (int i = 0; i < 4; i++) {
                int mx = x + dx[i], my = y + dy[i];
                if (mx >= 0 && mx < n && my >= 0 && my < m && image[mx][my] == currColor) {
                    que.emplace(mx, my);
                    image[mx][my] = color;
                }
            }
        }
        return image;
    }
};
```

### 深度优先搜索

```C++
class Solution {
public:
    const int dx[4] = {1, 0, 0, -1};
    const int dy[4] = {0, 1, -1, 0};
    void dfs(vector<vector<int>>& image, int x, int y, int currColor, int color) {
        if (image[x][y] == currColor) {
            image[x][y] = color;
            for (int i = 0; i < 4; i++) {
                int mx = x + dx[i], my = y + dy[i];
                if (mx >= 0 && mx < image.size() && my >= 0 && my < image[0].size()) {
                    dfs(image, mx, my, currColor, color);
                }
            }
        }
    }

    vector<vector<int>> floodFill(vector<vector<int>>& image, int sr, int sc, int color) {
        int currColor = image[sr][sc];
        if (currColor != color) {
            dfs(image, sr, sc, currColor, color);
        }
        return image;
    }
};
```



## 最大子数组和

### 贪心

只要当前数字之前的序列和为负数则直接舍弃

```C++
class Solution {
public:
  int maxSubArray(vector<int>& nums) {
        int preSum=0; int maxAns = nums[0];
        for (const auto &x:nums) {
            if (preSum <= 0){
                preSum = x;
            }
            else{
                preSum = preSum +x ;
            }
            maxAns = max(maxAns,preSum);
        }
        return maxAns;
    }
};
```



### 动态规划

 *f*(*i*)=max{*f*(*i*−1)+*nums*[*i*],*nums*[*i*]} 

```c++
class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int pre = 0, maxAns = nums[0];
        for (const auto &x: nums) {
            pre = max(pre + x, x);
            maxAns = max(maxAns, pre);
        }
        return maxAns;
    }
};
```

### 分治

![1663383562028](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1663383562028.png)

```C++
class Solution_3 {
public:
    struct Status {
        int lSum, rSum, mSum, iSum;
    };

    Status pushUp(Status l, Status r) {
        int iSum = l.iSum + r.iSum;
        int lSum = max(l.lSum, l.iSum + r.lSum);
        int rSum = max(r.rSum, r.iSum + l.rSum);
        int mSum = max(max(l.mSum, r.mSum), l.rSum + r.lSum);
        return (Status) {lSum, rSum, mSum, iSum};
    };

    Status get(vector<int> &a, int l, int r) {
        if (l == r) {
            return (Status) {a[l], a[l], a[l], a[l]};
        }
        int m = (l + r) >> 1;  //值右移1位，相当l+r的值除以2取整
        Status lSub = get(a, l, m);
        Status rSub = get(a, m + 1, r);
        return pushUp(lSub, rSub);
    }

    int maxSubArray(vector<int>& nums) {
        return get(nums, 0, nums.size() - 1).mSum;
    }
};
```



## 二叉搜索树的最近公共祖先

### 递归

![1663408264090](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1663408264090.png)

```C++
class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
    TreeNode* ans;
    bool dfs(TreeNode* root, TreeNode* p, TreeNode* q){
        if(root == nullptr) return false;
        bool lson = dfs(root->left,p,q);
        bool rson = dfs(root->right,p,q);
        if(lson && rson || (root->val == p->val || root->val == q->val) && (lson || rson)){
            ans = root;
        }
        return lson || rson || (root->val == p->val || root->val == q->val);
    }
        TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
            dfs(root, p, q);
            return ans;
        }
    }
};
```

![1663416070329](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1663416070329.png)

```C++
class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        if(root == nullptr || root == p || root == q) return root;
        TreeNode *left = lowestCommonAncestor(root->left, p, q);
        TreeNode *right = lowestCommonAncestor(root->right, p, q);
        if(left == nullptr) return right;
        if(right == nullptr) return left;
        return root;
    }
};
```

## 两个相同字符之间的最长子字符串

```C++
class Solution {
public:
    int maxLengthBetweenEqualCharacters(string s) {
        vector<int> firstIndex(26, -1);
        int maxLength = -1;
        for (int i = 0; i < s.size(); i++) {
            if (firstIndex[s[i] - 'a'] < 0) {
                firstIndex[s[i] - 'a'] = i;
            } else {
                maxLength = max(maxLength, i - firstIndex[s[i] - 'a'] - 1);
            }
        }
        return maxLength;
    }
};
```

我的复杂解法。。。

```C++
class Solution {
public:
    int maxLengthBetweenEqualCharacters(string s){
        unordered_map<char,int> map;
        int maxAns=0;
        int a[26]={0};
        for (int i=0;i<s.size();i++) {
            a[s[i]-'a']++;
            if(map.find(s[i]) == map.end()){
                map.insert(pair<char,int>(s[i],i));
            }
            maxAns =max(i-map.find(s[i])->second-1,maxAns);
        }
        sort(a,a+26);
        if(a[25]<=1)
            return -1;
        return maxAns;
    }
};
```

## 划分为k个相等的子集

相当于遍历+回溯+剪枝

```C++
class Solution {
public:
    bool reverse(vector<int> &nums,int numSize,int target,int k,vector<int> &tempArr,int index){
        if(index == numSize){
            for (int i = 0; i < k; ++i) {
                if (tempArr[i] != target){
                    return false;
                }
            }
            return true;
        }
        for (int i = 0; i < k; ++i) {
            if(tempArr[i]+ nums[index] > target){
                continue;
            }
            if (i>0 && tempArr[i] == tempArr[i-1])
                continue;
            tempArr[i] += nums[index];
            if(reverse(nums,numSize,target,k,tempArr,index+1)){
                return true;
            }
            tempArr[i] -= nums[index];
            if (tempArr[i] == 0){
                break;
            }
        }
        return false;
    }
    bool canPartitionKSubsets(vector<int> &nums,int k){
        int sum = accumulate(nums.begin(),nums.end(),0);
        int numSize = nums.size();
        if(sum % k != 0)
            return false;
        int target = sum / k;
        vector<int> tempArr(k,0);
        sort(nums.rbegin(), nums.rend());
        return reverse(nums,numSize,target,k,tempArr,0);
    }
};

```



## 环形链表

一般思路unordered_set，unorderedset可以将对象本身作为键

### 快慢指针

```C++
class Solution {
public:
    bool hasCycle(ListNode* head) {
        if (head == nullptr || head->next == nullptr) {
            return false;
        }
        ListNode* slow = head;
        ListNode* fast = head->next;
        while (slow != fast) {
            if (fast == nullptr || fast->next == nullptr) {
                return false;
            }
            slow = slow->next;
            fast = fast->next->next;
        }
        return true;
    }
};
```

## 用栈实现队列

### 双栈实现

```C++
	class MyQueue {
private:
    stack<int> stackin,stackout;
    void in2out(){
        while (!stackin.empty()) {
            stackout.push(stackin.top());
            stackin.pop();
                }
            }
public:
    MyQueue() {  
    }
    
    void push(int x) {
        stackin.push(x);
    }
    
    int pop() {
        if(stackout.empty()){
            in2out();
        }
       int y = stackout.top();
       stackout.pop();
       return y;
    }
    
    int peek() {
        if(stackout.empty()){
            in2out();
        }
        return stackout.top();
    }
    
    bool empty() {
        return stackin.empty()&&stackout.empty();
    }
};

```

### 旋转数字

```c++
class Solution {
public:
    int pairs(int i){
        if (i == 1)
            return 1;
        if (i == 0)
            return 0;
        if (i == 8)
            return 8;
        if (i == 2)
            return 5;
        if (i == 5)
            return 2;
        if (i == 6)
            return 9;
        if (i == 9)
            return 6;
        return 0;
    };
    int reverseNum(int n){
        string a =to_string(n);
        vector<int> num;
        int sum = 0;
        for (int i = 0; i < a.size(); ++i) {
            num.push_back(int(a[i]-'0'));
            if(!(num[i] == 1 || num[i] == 0 || num[i] == 2 || num[i] == 5 || num[i] == 6 || num[i] == 9 || num[i] == 8)){
                return 0;
            }
            sum = sum + pairs(num[i])*pow(10,a.size()-1-i);
        }
        return sum;
    }
    int rotatedDigits(int n) {
        int count = 0;
        for (int i = 0; i <= n; ++i) {
            if((reverseNum(i) != 0)&& reverseNum(i) != i )
                count++;
        }
        return count;
    }
};

```

## 赎金信

简单，字符遍历

```
class Solution {
public:
    bool canConstruct(string ransomNote, string magazine) {
        if (ransomNote.size() > magazine.size()) {
            return false;
        }
        vector<int> cnt(26);
        for (auto & c : magazine) {
            cnt[c - 'a']++;
        }
        for (auto & c : ransomNote) {
            cnt[c - 'a']--;
            if (cnt[c - 'a'] < 0) {
                return false;
            }
        }
        return true;
    }
};
```

## 爬楼梯

```C++
class Solution {
public:
    int climbStairs(int n) {
        int p = 0, q = 0, r = 1;
        for (int i = 1; i <= n; ++i) {
            p = q; 
            q = r; 
            r = p + q;
        }
        return r;
    }
};
```

## 最长回文串

## 丑数

动态规划

```
class Solution {
public:
    int nthUglyNumber(int n) {
        vector<int> numList(n);
        numList[0] = 1;
        int p2 = 0,p3 = 0, p5 = 0;
        for(int i = 1;i < n; i++){
            numList[i] = min(min(numList[p2]*2,numList[p3]*3),numList[p5]*5);
            if(numList[i] == numList[p2]*2)
                p2++;
            if(numList[i] == numList[p3]*3)
                p3++;
             if(numList[i] == numList[p5]*5)
                p5++;                   
        }
        return numList[n-1];
    }
};
```

## 第K个数

动态规划，与丑数类似

![1664365428544](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1664365428544.png)

```C++
class Solution {
public:
    int getKthMagicNumber(int k) {
        vector<int> numList(k);
        numList[0] = 1;
        int p3 = 0,p5 = 0,p7 = 0;
        for (int i = 1; i < k; ++i) {
            numList[i] = min(min(numList[p3]*3,numList[p5]*5),numList[p7]*7);
            if (numList[i] == numList[p3]*3)
                p3++;
            if (numList[i] == numList[p5]*5)
                p5++;
            if (numList[i] == numList[p7]*7)
                p7++;
        }
        return numList[k-1];
    }
};
```

## 二维数组中的查找

![1664369000434](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1664369000434.png)

```C++
class Solution {
public:
    bool findNumberIn2DArray(vector<vector<int>>& matrix, int target) {
        int i = matrix.size() - 1, j = 0;
        while(i >= 0 && j < matrix[0].size())
        {
            if(matrix[i][j] > target) i--;
            else if(matrix[i][j] < target) j++;
            else return true;
        }
        return false;
    }
};
```

