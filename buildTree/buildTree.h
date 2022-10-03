//
// Created by msi-user on 2022/10/3.
//


 struct TreeNode {
    int val;
     TreeNode *left;
     TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 };

#ifndef BUILDTREE_BUILDTREE_H
#define BUILDTREE_BUILDTREE_H
#include "vector"
#include "unordered_map"
using namespace std;
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


#endif //BUILDTREE_BUILDTREE_H
