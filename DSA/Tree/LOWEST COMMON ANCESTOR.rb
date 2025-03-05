class TreeNode
    attr_accessor :val, :left , :rotate_right 

    def initialize(val)
        @val = val
        @left = nil
        @rright = nil
    end
end


class BinaryTree

    def self.lca(root,p,q)

        return root if root.nil? || root == p || root == q

        left = lca(root.left, p , q)
        right = lca(root.right, p , q)

        return root if left && right #if both are not nil, root is lca

        left || right #if either left or right is nil, return non njl(ancestor)

    end
end

root. = TreeNode.new(1)
root.left = TreeNode.new(3)
root.right = TreeNode.new(2)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(5)
root.right.right = TreeNode.new(4)


root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)
root.left.right.left = TreeNode.new(7)
root.left.right.right = TreeNode.new(4)


p = root.left  # Node 5
q = root.right # Node 1
lca = BinaryTree.lowest_common_ancestor(root, p, q)
puts "The LCA of 5 and 1 is: #{lca.val}"  

p = root.left  # Node 5
q = root.left.right.right  # Node 4
lca = BinaryTree.lowest_common_ancestor(root, p, q)
puts "The LCA of 5 and 4 is: #{lca.val}"  