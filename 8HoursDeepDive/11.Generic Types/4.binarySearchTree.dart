class TreeNode<T> {
  T data;
  TreeNode<T>? left;
  TreeNode<T>? right;

  TreeNode(this.data);
}

class BinaryTree<T> {
  TreeNode<T>? root;

  void insert(T data) {
    root = _insert(root, data);
  }

  TreeNode<T>? _insert(TreeNode<T>? node, T data) {
    if (node == null) {
      return TreeNode<T>(data);
    }

    if (data.hashCode <= node.data.hashCode) {
      node.left = _insert(node.left, data);
    } else {
      node.right = _insert(node.right, data);
    }

    return node;
  }

  List<T> printer = [];

  void inorderTraversal() {
    _inorderTraversal(root);
    print(printer);
    printer = [];
  }

  void _inorderTraversal(TreeNode<T>? node) {
    if (node != null) {
      _inorderTraversal(node.left);
      printer.add(node.data);
      _inorderTraversal(node.right);
    }
  }
}

void main() {
  BinaryTree<int> tree = BinaryTree<int>();

  tree.insert(10);
  tree.insert(5);
  tree.insert(15);
  tree.insert(3);
  tree.insert(7);

  print("Inorder Traversal:");
  tree.inorderTraversal();
}
