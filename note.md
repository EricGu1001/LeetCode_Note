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

## 旋转数字

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

```C++，
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

```C++
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

## 在LR字符串中交换相邻字符

### 双指针移动+一点脑筋急转弯

```C++
class Solution {
public:
    bool canTransform(string start, string end) {
        int n = start.size();
        int i = 0, j = 0;
        while (true) {
            while (i < n && start[i] == 'X') ++i;
            while (j < n && end[j] == 'X') ++j;
            if (i == n && j == n) return true;
            if (i == n || j == n || start[i] != end[j]) return false;
            if (start[i] == 'L' && i < j) return false;
            if (start[i] == 'R' && i > j) return false;
            ++i;
            ++j;
        }
    }
};
```

## 检查二进制字符串字段

```C++
class Solution {
public:
    bool checkOnesSegment(string s) {
        int count = 0;
        for (int i = 0; i < s.size()-1; ++i) {
            if (s[i] != s[i+1])
                count++;
            if (count>1)
                return false;
        }
        return true;
    }
};

```

## 重建二叉树(前序和中序)

### 递归

![1664790869972](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1664790869972.png)

```c++
struct TreeNode {
     int val;
     TreeNode *left;
     TreeNode *right;
     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 };
class Solution {
private:
    unordered_map<int, int> index;

public:
    TreeNode* myBuildTree(const vector<int>& preorder, const vector<int>& inorder, int preorder_left, int preorder_right, int inorder_left, int inorder_right) {
        if (preorder_left > preorder_right) {
            return nullptr;
        }

        // 前序遍历中的第一个节点就是根节点
        int preorder_root = preorder_left;
        // 在中序遍历中定位根节点
        int inorder_root = index[preorder[preorder_root]];

        // 先把根节点建立出来
        TreeNode* root = new TreeNode(preorder[preorder_root]);
        // 得到左子树中的节点数目
        int size_left_subtree = inorder_root - inorder_left;
        // 递归地构造左子树，并连接到根节点
        // 先序遍历中「从 左边界+1 开始的 size_left_subtree」个元素就对应了中序遍历中「从 左边界 开始到 根节点定位-1」的元素
        root->left = myBuildTree(preorder, inorder, preorder_left + 1, preorder_left + size_left_subtree, inorder_left, inorder_root - 1);
        // 递归地构造右子树，并连接到根节点
        // 先序遍历中「从 左边界+1+左子树节点数目 开始到 右边界」的元素就对应了中序遍历中「从 根节点定位+1 到 右边界」的元素
        root->right = myBuildTree(preorder, inorder, preorder_left + size_left_subtree + 1, preorder_right, inorder_root + 1, inorder_right);
        return root;
    }

    TreeNode* buildTree(vector<int>& preorder, vector<int>& inorder) {
        int n = preorder.size();
        // 构造哈希映射，帮助我们快速定位根节点
        for (int i = 0; i < n; ++i) {
            index[inorder[i]] = i;
        }
        return myBuildTree(preorder, inorder, 0, n - 1, 0, n - 1);
    }
};
```

## 从中序与后序遍历序列构造二叉树

### 与上题思路一致，可作上题的练手

```C++
class Solution {
private:
    unordered_map<int,int> index;
public:
    TreeNode* buildMyTree(const vector<int>& inorder,const vector<int>& postorder,int inorder_left,int inorder_right,int postorder_left,int postoder_right){
        if (postorder_left>postoder_right)
            return nullptr;
        int postorder_root = postorder[postoder_right];
        int inorder_root = index[postorder_root];
        TreeNode* root = new TreeNode(inorder[inorder_root]);
        int left_subtree = inorder_root - inorder_left;
        root -> left = buildMyTree(inorder,postorder,inorder_left,inorder_left + left_subtree-1,postorder_left,postorder_left + left_subtree-1);
        root -> right = buildMyTree(inorder,postorder,inorder_root+1,inorder_right,postorder_left+left_subtree,postoder_right-1);
        return root;
    }
    TreeNode* buildTree(vector<int>& inorder, vector<int>& postorder) {
        int n = inorder.size();
        for (int i = 0; i < n; ++i) {
            index[inorder[i]] = i;
        }
        return buildMyTree(inorder,postorder,0,n-1,0,n-1);
    }
};
```

## 子域名访问计数

### 思路不难，记住stirng的常用成员函数，以及答案的输出方式

```C++
class Solution {
public:
    vector<string> subdomainVisits(vector<string>& cpdomains) {
        unordered_map<string,int> map;
        vector<string> ans;
        for(auto &&cpdomain:cpdomains){
            int space = cpdomain.find(' ');
            int count = stoi(cpdomain.substr(0,space));
            string domain = cpdomain.substr(space+1);
            map[domain] += count;
            for (int i = 0; i < domain.size(); ++i) {
                if(domain[i] == '.'){
                    string subdomain = domain.substr(i+1);
                    map[subdomain] += count;
                }
            }
        }
        for (auto &&[subdomain,count] : map) {
            ans.emplace_back(to_string(count) + " " + subdomain);
        }
        return ans;
    }
};
```

## 反转链表

### 迭代

```C++
class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        ListNode* prev = nullptr;
        ListNode* curr = head;
        while (curr) {
            ListNode* next = curr->next;
            curr->next = prev;
            prev = curr;
            curr = next;
        }
        return prev;
    }
};
```

### 递归(理解)

```C++
class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        if(!head ||!head->next)
            return head;
        ListNode* temp = reverseList(head->next);
        head->next->next = head;
        head->next = nullptr;
        return temp;
    }
};
```

## 最大升序子数组和

```C++
class Solution {
public:
    int maxAscendingSum(vector<int>& nums) {
        int n = nums.size();
        if(n == 1)
            return nums[0];
        int maxAns = 0;
        int curAnswer = nums[0];
        for (int i = 1; i < n; ++i) {
            if (nums[i] > nums[i-1]){
                curAnswer += nums[i];
                maxAns = max (maxAns,curAnswer);
            } else{
                maxAns = max (maxAns,curAnswer);
                curAnswer = nums[i];
            }
        }
        return maxAns;
    }
};
```

## 三数之和

### 排序+双指针

```C++
class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        int n = nums.size();
        sort(nums.begin(), nums.end());
        vector<vector<int>> ans;
        // 枚举 a
        for (int first = 0; first < n; ++first) {
            // 需要和上一次枚举的数不相同
            if (first > 0 && nums[first] == nums[first - 1]) {
                continue;
            }
            // c 对应的指针初始指向数组的最右端
            int third = n - 1;
            int target = -nums[first];
            // 枚举 b
            for (int second = first + 1; second < n; ++second) {
                // 需要和上一次枚举的数不相同
                if (second > first + 1 && nums[second] == nums[second - 1]) {
                    continue;
                }
                // 需要保证 b 的指针在 c 的指针的左侧
                while (second < third && nums[second] + nums[third] > target) {
                    --third;
                }
                // 如果指针重合，随着 b 后续的增加
                // 就不会有满足 a+b+c=0 并且 b<c 的 c 了，可以退出循环
                if (second == third) {
                    break; 
                }
                if (nums[second] + nums[third] == target) {
                    ans.push_back({nums[first], nums[second], nums[third]});
                }
            }
        }
        return ans;
    }
};
```

## 电话号码的数字组合

### 循环做不了，回溯

```C++
class Solution {
public:
    vector<string> letterCombinations(string digits) {
        vector<string> combinations;
        if (digits.empty()) {
            return combinations;
        }
        unordered_map<char, string> phoneMap{
            {'2', "abc"},
            {'3', "def"},
            {'4', "ghi"},
            {'5', "jkl"},
            {'6', "mno"},
            {'7', "pqrs"},
            {'8', "tuv"},
            {'9', "wxyz"}
        };
        string combination;
        backtrack(combinations, phoneMap, digits, 0, combination);
        return combinations;
    }

    void backtrack(vector<string>& combinations, const unordered_map<char, string>& phoneMap, const string& digits, int index, string& combination) {
        if (index == digits.length()) {
            combinations.push_back(combination);
        } else {
            char digit = digits[index];
            const string& letters = phoneMap.at(digit);
            for (const char& letter: letters) {
                combination.push_back(letter);
                backtrack(combinations, phoneMap, digits, index + 1, combination);
                combination.pop_back();
            }
        }
    }
};
```

### 深搜

## 括号的分数

### 栈的运用

我的代码

```C++
class Solution {
public:
    int scoreOfParentheses(string s) {
        stack<char> stack;
        int res;
        for (auto ch:s) {
            res = 0;
            if(ch == '('){
                stack.push(ch);
            }

            else{
                if(stack.top() == '('){
                    stack.pop();
                    stack.push('1');
                }
                else{
                    while (stack.top() != '('){
                        res += stack.top()-'0';
                        stack.pop();
                    }
                    res = res*2;
                    char b = (char)res;
                    stack.pop();
                    stack.push(b);
                }
            }
        }
        res = 0;
        while (!stack.empty()){
            res += stack.top() - '0';
            stack.pop();
        }
        return res;
    }
};

```

问题：int转char的时候，如果是两位数有问题

标答

```C++
class Solution {
public:
    int scoreOfParentheses(string s) {
        stack<int> st;
        st.push(0);
        for (auto c : s) {
            if (c == '(') {
                st.push(0);
            } else {
                int v = st.top();
                st.pop();
                st.top() += max(2 * v, 1);
            }
        }
        return st.top();
    }
};
```

## 删除链表的倒数第 N 个结点

### 求解链表的长度然后遍历

```C++
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        if(!head)
            return nullptr;
        int count = 1;
        ListNode * curNode = head;
        ListNode * curNode_2 = head;
        while (head->next){
                head = head ->next;
                count++;
        }
        if(count-n == 0){
            if(curNode->next){
                curNode =curNode->next;
                return curNode;
            }
            return nullptr;
        } else{
            for (int i = 0; i < count - n-1; ++i) {
                curNode_2 = curNode_2->next;
            }
            curNode_2->next = curNode_2->next->next;
        }
        return curNode;
    }
};
```

### 利用栈，逆序输出想到用栈

```C++
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        ListNode* dummy = new ListNode(0, head);
        stack<ListNode*> stk;
        ListNode* cur = dummy;
        while (cur) {
            stk.push(cur);
            cur = cur->next;
        }
        for (int i = 0; i < n; ++i) {
            stk.pop();
        }
        ListNode* prev = stk.top();
        prev->next = prev->next->next;
        ListNode* ans = dummy->next;
        delete dummy;
        return ans;
    }
};
```

### 双指针

```C++
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        ListNode* dummy = new ListNode(0, head);
        ListNode* first = head;
        ListNode* second = dummy;
        for (int i = 0; i < n; ++i) {
            first = first->next;
        }
        while (first) {
            first = first->next;
            second = second->next;
        }
        second->next = second->next->next;
        ListNode* ans = dummy->next;
        delete dummy;
        return ans;
    }
};
```

## 括号生成



## 下一个排列

### 怎样尽量小的增大数字

```C++
class Solution {
public:
    void nextPermutation(vector<int>& nums) {
        int n = nums.size();
        for (int i = n-2; i >= 0; --i) {
            if (nums[i] < nums[i+1]){
                for (int j = n-1; j >= 0 ; --j) {
                    if(nums[j] > nums[i]){
                        swap(nums[i],nums[j]);
                        reverse(nums.begin()+i+1,nums.end());
                        return;
                    }
                }
            }
        }
        reverse(nums.begin(),nums.end());
        return;
    }
};
```

## 用栈操作构建数组

### 较简单

```C++
class Solution {
public:
    vector<string> buildArray(vector<int>& target, int n) {
        vector<string> ans;
        if (target[0] != 1){
            for (int i = 0; i < target[0]-1; ++i) {
                ans.push_back("Push");
                ans.push_back("Pop");
            }
            ans.push_back("Push");
        } else{
            ans.push_back("Push");
        }
        for (int i = 1; i < target.size(); ++i) {
            //元素发生间隔
            if (target[i] != target[i-1]+1){
                for (int j = 0; j < target[i]-target[i-1]-1; ++j) {
                    ans.push_back("Push");
                    ans.push_back("Pop");
                }
                ans.push_back("Push");
            } else{
             ans.push_back("Push");   
            }
        }
        return ans;
    }
};
```

# 搜索旋转排序数组

### 二分查找

对于两个局部有序的数组，通过二分查找一定可以将数组分为完全有序的一半以及部分有序的另外一半

```C++
class Solution {
public:
    int search(vector<int>& nums, int target) {
        int n = (int)nums.size();
        if (!n) {
            return -1;
        }
        if (n == 1) {
            return nums[0] == target ? 0 : -1;
        }
        int l = 0, r = n - 1;
        while (l <= r) {
            int mid = (l + r) / 2;
            if (nums[mid] == target) return mid;
            if (nums[0] <= nums[mid]) {//这部分数组为有序
                if (nums[0] <= target && target < nums[mid]) {
                    r = mid - 1;
                } else {
                    l = mid + 1;
                }
            } else {
                if (nums[mid] < target && target <= nums[n - 1]) {//这部分数组为有序，且target在范围内
                    l = mid + 1;
                } else {
                    r = mid - 1;
                }
            }
        }
        return -1;
    }
};
```

## 可能的二分法

### 深度优先搜索（详细注释）

```C++
class Solution {
public:
  //存储分组的类型
    vector<int> color;
    //存储每个人dislike的人
    vector<vector<int>> count;
    bool possibleBipartition(int n,vector<vector<int>>& dislikes){
        //初始化每一个人的初始分组为0
        color = vector<int>(n+1,0);
        count = vector<vector<int>>(n+1);
        for(auto& dislike:dislikes){
            count[dislike[0]].push_back(dislike[1]);
            count[dislike[1]].push_back(dislike[0]);
        }
   		//开始遍历每个人
        for(int i=1;i<=n;i++){
			//如果没分组且分组后有冲突
            if(color[i] == 0 && !dfs(i,1)){
                return false;
            }
        }
        return true;
    }
    bool dfs(int color,int cur_color){
        //分组
        color[cur] = cur_color;
        //遍历不喜欢的人
        for(auto& node:count[color]){
            //如果分了组且和当前不喜欢的人在一组，发生冲突
            if(color[node] && color[node] == curcolor){
                return false;
            }
            //如果未分组且分组后有冲突
            if(!color[node] && !dfs(node,3 ^ cur_color)){
                return false;
            }
        }
        return true;W
    }
};
```

## 在排序数组中查找元素的第一个和最后一个位置

## 二分查找

```c++
class Solution { 
public:
    int binarySearch(vector<int>& nums, int target, bool lower) {
        int left = 0, right = (int)nums.size() - 1, ans = (int)nums.size();
        while (left <= right) {
            int mid = (left + right) / 2;
            if (nums[mid] > target || (lower && nums[mid] >= target)) {
                right = mid - 1;
                ans = mid;
            } else {
                left = mid + 1;
            }
        }
        return ans;
    }

    vector<int> searchRange(vector<int>& nums, int target) {
        int leftIdx = binarySearch(nums, target, true);
        int rightIdx = binarySearch(nums, target, false) - 1;
        if (leftIdx <= rightIdx && rightIdx < nums.size() && nums[leftIdx] == target && nums[rightIdx] == target) {
            return vector<int>{leftIdx, rightIdx};
        } 
        return vector<int>{-1, -1};
    }
};
```

## 无法吃午餐的学生数量

### 模拟

```C++
class Solution {
public:
    int countStudents(vector<int>& students, vector<int>& sandwiches) {
        int s1 = accumulate(students.begin(), students.end(), 0);
        int s0 = students.size() - s1;
        for (int i = 0; i < sandwiches.size(); i++) {
            if (sandwiches[i] == 0 && s0 > 0) {
                s0--;
            } else if (sandwiches[i] == 1 && s1 > 0) {
                s1--;
            } else {
                break;
            }
        }
        return s0 + s1;
    }
};
```

## 第K个语法符号

### 递归

```C++
class Solution {
public:
    int kthGrammar(int n, int k) {
        if(n == 1 && k == 1)
            return 0;
        if(k%2 == 1){
            return kthGrammar(n-1,(k+1)/2);
        } else {
            return kthGrammar(n-1,k/2) == 0?1:0;
        }
    }
};
```

## 在排序数组中查找元素的第一个和最后一个位置

### 二分

和在排序数组中查找元素第一个和最后一个位置一样

```C++
class Solution {
    int twoDivideSearch(vector<int>& nums, int target, bool flag)
    {
        int left = 0, right = nums.size() - 1, mid, res = -1;
        while(left <= right)
        {
            mid = left + (right - left) / 2;
            if(nums[mid] == target)
            {
                res = mid;
                if(flag)
                    right = mid - 1; //flag为真，求左区间
                else
                    left = mid + 1; //flag为假，求右区间
            }
            else if(nums[mid] < target)
                left = mid + 1;
            else
                right = mid - 1;
        }

        return res;
    }
public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int left = twoDivideSearch(nums, target, true);
        int right = twoDivideSearch(nums, target, false);
        if(nums.empty() || (left == -1 && right == -1))
            return vector<int>{-1, -1};
        else if(left == -1)
            left = right;
        else if(right == -1)
            right = left;
        else
            ;

        return vector<int>{left, right};
    }
};
```

## 股票价格跨度

### 单调栈

 求「上/下 」一个更 「大/小」 元素，立即推 -> 单调栈 

单调栈即维护一个栈中元素单调下降或者单调上升的栈，用于求第一个比当前数小或大的数

```C++
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
```

## 组合总和

### 深搜回溯

```C++
class Solution {
public:
class Solution {
public:
    void dfs(vector<int>& candidates,int target,vector<vector<int>>& ans,vector<int>& combine,int idx){
        if (idx == candidates.size()){
            return;
        }
        if (target == 0){
            ans.emplace_back(combine);
            return;
        }
        //跳过当前数
        dfs(candidates,target,ans,combine,idx+1);
        if (target - candidates[idx] >= 0){
            combine.emplace_back(candidates[idx]);
            dfs(candidates,target-candidates[idx],ans,combine,idx);
        }
    }
    vector<vector<int>> combinationSum(vector<int>& candidates, int target) {
        vector<vector<int>> ans;
        vector<int> combine;
        dfs(candidates,target,ans,combine,0);
        return ans;
    }
};
```



## 全排列

### 深搜回溯

```C++
class Solution {
public:
    void dfs(vector<vector<int>>& ans,vector<int>& path,vector<int>& nums,vector<int> flag){
        if (path.size() == nums.size()) {
            ans.push_back(path);
            return;
        }
        for (int i = 0; i < nums.size(); ++i) {
            if (flag[i] == 1)
                continue;
            path.push_back(nums[i]);
            flag[i] = 1;
            dfs(ans,path,nums,flag);
            path.pop_back();
            flag[i] = 0;
        }
    }
    vector<vector<int>> permute(vector<int>& nums) {
        vector<int> path;
        vector<vector<int>> ans;
        int n = nums.size();
        vector<int> flag(n,0);
        dfs(ans,path,nums,flag);
        return ans;
    }
};
```

## 合并区间

### 先排下序

```C++
class Solution {
public:
    vector<vector<int>> merge(vector<vector<int>>& intervals) {
        if (intervals.size() == 0) {
            return {};
        }
        sort(intervals.begin(), intervals.end());
        vector<vector<int>> merged;
        for (int i = 0; i < intervals.size(); ++i) {
            int L = intervals[i][0], R = intervals[i][1];
            if (!merged.size() || merged.back()[1] < L) {
                merged.push_back({L, R});
            }
            else {
                merged.back()[1] = max(merged.back()[1], R);
            }
        }
        return merged;
    }
};
```

自己写的解法过于繁琐

## 交替合并字符串

### 简单双指针

```C++
class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        string ans = "";
        int minLen = min(word1.length(),word2.length());
        for (int i = 0; i < minLen; ++i) {
            ans+=word1[i];
            ans+=word2[i];
        }
        if (word1.length() == word2.length())
            return ans;
        if (word1.length() < word2.length()){
            for (int i = minLen; i < word2.length(); ++i) {
                ans += word2[i];
            }
        } else {
            for (int i = minLen; i < word1.length(); ++i) {
                ans += word1[i];
            }
        }
        return ans;
    }
};
```

## 不同路径

### 动态规划

```C++
class Solution {
public:
    int uniquePaths(int m, int n) {
        vector<vector<int>> f(m, vector<int>(n));
        for (int i = 0; i < m; ++i) {
            f[i][0] = 1;
        }
        for (int j = 0; j < n; ++j) {
            f[0][j] = 1;
        }
        for (int i = 1; i < m; ++i) {
            for (int j = 1; j < n; ++j) {
                f[i][j] = f[i - 1][j] + f[i][j - 1];
            }
        }
        return f[m - 1][n - 1];
    }
};
```

## 分割数组

### 模拟

从左向右遍历分界点。当「左边数组的最大值」小于等于「右边数组的最小值」时，该分界点即为答案。

提前算出每个分界点右边数组的最小值，存在数组 Rmin 中。这样在遍历分界点时，可以 O(1) 时间得到该分界点右边数组的最小值。

```C++
class Solution {
public:
    int partitionDisjoint(vector<int>& nums) {
        int n = nums.size();
        int res = 0;

        // Rmin[i] 为区间 [i, n] 中的最小值
        vector<int> Rmin(n);
        Rmin[n - 1] = nums[n - 1];
        for (int i = n - 2; i >= 0; i--) {
            Rmin[i] = min(Rmin[i + 1], nums[i]);
        }

        int Lmax = 0;
        for (int i = 0; i < n - 1; i++) {
            Lmax = max(Lmax, nums[i]);
            // 当「左边数组的最大值」小于等于「右边数组的最小值」时返回
            if (Lmax <= Rmin[i + 1]) {
                res = i;
                break;
            }
        } 
        return res + 1; 
    }
};
```

## 最短的桥

### DFS+BFS

![1666666766879](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1666666766879.png)

```C++
class Solution {
public:
    void dfs(int x, int y, vector<vector<int>>& grid, queue<pair<int, int>> &qu) {
        if (x < 0 || y < 0 || x >= grid.size() || y >= grid[0].size() || grid[x][y] != 1) {
            return;
        }
        qu.emplace(x, y);
        grid[x][y] = -1;
        dfs(x - 1, y, grid, qu);
        dfs(x + 1, y, grid, qu);
        dfs(x, y - 1, grid, qu);
        dfs(x, y + 1, grid, qu);
    }

    int shortestBridge(vector<vector<int>>& grid) {
        int n = grid.size();
        vector<vector<int>> dirs = {{-1, 0}, {1, 0}, {0, 1}, {0, -1}};

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (grid[i][j] == 1) {
                    queue<pair<int, int>> qu;
                    dfs(i, j, grid, qu);
                    int step = 0;
                    while (!qu.empty()) {
                        int sz = qu.size();
                        for (int i = 0; i < sz; i++) {
                            auto [x, y] = qu.front();
                            qu.pop();
                            for (int k = 0; k < 4; k++) {
                                int nx = x + dirs[k][0];
                                int ny = y + dirs[k][1];
                                if (nx >= 0 && ny >= 0 && nx < n && ny < n) {
                                    if (grid[nx][ny] == 0) {
                                        qu.emplace(nx, ny);
                                        grid[nx][ny] = -1;
                                    } else if (grid[nx][ny] == 1) {
                                        return step;
                                    }
                                }
                            }
                        }
                        step++;
                    }
                }
            }
        }
        return 0;
    }
};
```

## 最小路径和

## 动态规划

```C++
class Solution {
public:
    int minPathSum(vector<vector<int>>& grid) {
        int m=grid.size();
        int n=grid[0].size();
        for(int i=1;i<m;i++){
            grid[i][0]+=grid[i-1][0];
        }
        for(int i=1;i<n;i++){
            grid[0][i]+=grid[0][i-1];
        }
        for(int i=1;i<m;i++){
            for(int j=1;j<n;j++){
                grid[i][j]+=min(grid[i-1][j],grid[i][j-1]);
            }
        }
        return grid[m-1][n-1];
    }
};
```

## 数组元素积的符号

### 遍历

```C++
class Solution {
public:
    int count_2 = 0;
    int arraySign(vector<int>& nums) {
        for (int i = 0; i < nums.size(); ++i) {
            if (nums[i] == 0)
                return 0;
            if (nums[i] < 0)
                count_2 ++;
        }
        if (count_2%2 == 1)
            return -1;
        return 1;
    }

};
```

## 从尾到头打印链表

```C++
class Solution {
public:
    vector<int> reversePrint(ListNode* head) {
        vector<int> ans;
        while (head){
            ans.push_back(head->val);
            head = head -> next;
        }
        vector<int> reans;
        for (auto it = ans.rbegin();it != ans.rend();it++) {
            reans.push_back(*it);
        }
        return reans;
    }
};
```

## 子数组的最小值之和

### 单调栈

```C++
class Solution {
public:
    int sumSubarrayMins(vector<int>& arr) {
        vector<int> allSubs;
        int n = arr.size();
        stack<int> upStack;
        vector<int> left(n),right(n);
        for (int i = 0; i < n; i++) {
            while (!upStack.empty() && arr[i] <= arr[upStack.top()]){
                upStack.pop();
            }
            left[i] = i - (upStack.empty()?-1:upStack.top());
            upStack.push(i);
        }
        while(!upStack.empty()) upStack.pop();
        for (int i = n-1; i >= 0; --i) {
            while (!upStack.empty() && arr[i] < arr[upStack.top()]){
                upStack.pop();
            }
            right[i] = (upStack.empty()?n:upStack.top()) - i;
            upStack.push(i);
        }
        long long ans = 0;
        long long mod = 1e9 + 7;
        for (int i = 0; i < n; i++) {
            ans = (ans + (long long)left[i] * right[i] * arr[i]) % mod;
        }
        return ans;
    }
};
```

## 字母大小写全排列

### 深搜+回溯

```C++
class Solution {
public:
    void dfs(vector<string>& ans,string s,string path,int id){
        if (path.size() == s.length() || id == s.length()){
            ans.push_back(path);
            return;
        }
        if (('a'<= s[id] && 'z' >= s[id])||('A' <= s[id] && 'Z'>= s[id])){
            //大写该字母
            string temp = path;
            path += toupper(s[id]);
            dfs(ans,s,path,id+1);
            path = temp;
            //不大写该字母
            path += tolower(s[id]);
            dfs(ans,s,path,id+1);
        } else {
            path +=s[id];
            dfs(ans,s,path,id+1);
        }
    }
    vector<string> letterCasePermutation(string s) {
        vector<string> ans;
        string path;
        dfs(ans,s,path,0);
        return ans;
    }
};
```

## 神奇字符串

双指针

```C++
class Solution {
public:
    int magicalString(int n) {
        if (n < 4) {
            return 1;
        }
        string s(n, '0');
        s[0] = '1', s[1] = '2', s[2] = '2';
        int res = 1;
        int i = 2;
        int j = 3;
        while (j < n) {
            int size = s[i] - '0';
            int num = 3 - (s[j - 1] - '0');
            while (size > 0 && j < n) {
                s[j] = '0' + num;
                if (num == 1) {
                    ++res;
                }
                ++j;
                --size;
            }
            ++i;
        }
        return res;
    }
};
```

## 整数拆分

### 动态规划

![1667387517095](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1667387517095.png)

状态转移方程

![1667387496484](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1667387496484.png)

```C++
class Solution {
public:
    int integerBreak(int n) {
        vector <int> dp(n + 1);
        for (int i = 2; i <= n; i++) {
            int curMax = 0;
            for (int j = 1; j < i; j++) {
                curMax = max(curMax, max(j * (i - j), j * dp[i - j]));
            }
            dp[i] = curMax;
        }
        return dp[n];
    }
};
```

## 最大重复子串

### 动态规划

```C++

```

## 数值的整数次方

### 快速幂

```C++
class Solution {
public:
    double quickMul(double x, long long N) {
        if (N == 0) {
            return 1.0;
        }
        double y = quickMul(x, N / 2);
        return N % 2 == 0 ? y * y : y * y * x;
    }

    double myPow(double x, int n) {
        long long N = n;
        return N >= 0 ? quickMul(x, N) : 1.0 / quickMul(x, -N);
    }
};
```

## 分发糖果

### 贪心，两次遍历

![1667566246056](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1667566246056.png)

```C++
class Solution {
public:
    int candy(vector<int>& ratings) {
        int n = ratings.size();
        vector<int> left(n);
        for (int i = 0; i < n; i++) {
            if (i > 0 && ratings[i] > ratings[i - 1]) {
                left[i] = left[i - 1] + 1;
            } else {
                left[i] = 1;
            }
        }
        int right = 0, ret = 0;
        for (int i = n - 1; i >= 0; i--) {
            if (i < n - 1 && ratings[i] > ratings[i + 1]) {
                right++;
            } else {
                right = 1;
            }
            ret += max(left[i], right);
        }
        return ret;
    }
};
```

## 模糊坐标

### 遍历枚举

![1667819347019](C:\Users\msi-user\AppData\Roaming\Typora\typora-user-images\1667819347019.png)

```C++
class Solution {
public:
    vector<string> getPos(string s) {
        vector<string> pos;
        if (s[0] != '0' || s == "0") pos.push_back(s);
        for (int p = 1; p < s.size(); ++p) {
            if ((p != 1 && s[0] == '0') || s.back() == '0') continue;
            pos.push_back(s.substr(0, p) + "." + s.substr(p));
        }
        return pos;
    }
    vector<string> ambiguousCoordinates(string s) {
        int n = s.size() - 2;
        vector<string> res;
        s = s.substr(1, s.size() - 2);
        for (int l = 1; l < n; ++l) {
            vector<string> lt = getPos(s.substr(0, l));
            if (lt.empty()) continue;
            vector<string> rt = getPos(s.substr(l));
            if (rt.empty()) continue;
            for (auto& i : lt) {
                for (auto& j : rt) {
                    res.push_back("(" + i + ", " + j + ")");
                }
            }
        }
        return res;
    }
};
```

