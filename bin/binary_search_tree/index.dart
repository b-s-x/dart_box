import 'package:dart_box/binary_search_tree/index.dart';

void main() {
  // final tree = BinarySearchTree<int>();

  // for (var i = 0; i < 5; i++) {
  //   tree.insert(i);
  // }

  // print(tree);

  // final tree = buildExampleTree();
  // print(tree);

  // treeSearch();
  removeNode();
}

BinarySearchTree<int> buildExampleTree() {
  var tree = BinarySearchTree<int>();
  tree.insert(3);
  tree.insert(1);
  tree.insert(4);
  tree.insert(0);
  tree.insert(2);
  tree.insert(5);
  return tree;
}

void treeSearch() {
  final tree = buildExampleTree();
  if (tree.contains(5)) {
    print("Found 5");
  } else {
    print('not find 5');
  }
}

void removeNode() {
  final tree = buildExampleTree();
  print('tree before removal:');
  print(tree);
  tree.remove(3);
  print('tree after removing root:');
  print(tree);
}
