import 'package:dart_box/tree/index.dart';

void main() {
  treeImplementation();
  depthFirstTraversal();
  makeBeverageTree();
  search();
}

void treeImplementation() {
  final beverages = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  beverages.add(hot);
  beverages.add(cold);
}

void depthFirstTraversal() {
  final tree = makeBeverageTree();
  tree.forEachDepthFirst((node) => print(node.value));
}

TreeNode<String> makeBeverageTree() {
  final tree = TreeNode('beverages');
  final hot = TreeNode('hot');
  final cold = TreeNode('cold');
  final tea = TreeNode('tea');
  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('chocolate');
  final blackTea = TreeNode('blackTea');
  final greenTea = TreeNode('greenTea');
  final chaiTea = TreeNode('chaiTea');
  final soda = TreeNode('soda');
  final milk = TreeNode('milk');
  final gingerAle = TreeNode('gingerAle');
  final bitterLemon = TreeNode('bitter lemon');

  tree.add(hot);
  tree.add(cold);

  hot.add(tea);
  hot.add(coffee);
  hot.add(chocolate);

  cold.add(soda);
  cold.add(milk);

  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);

  soda.add(gingerAle);
  soda.add(bitterLemon);

  return tree;
}

void levelOrderTraversal() {
  final tree = makeBeverageTree();
  tree.forEachLevelOrder((node) => print(node.value));
}

void search() {
  final tree = makeBeverageTree();

  final searcResult1 = tree.search('gingerAle');
  print(searcResult1?.value);

  final searcResult2 = tree.search('water');
  print(searcResult2?.value);
}
