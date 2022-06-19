import 'package:dart_box/avl_tree/avl_tree.dart';

void main(List<String> args) {
  final tree = AvlTree<int>();
  tree.insert(15);
  tree.insert(10);
  tree.insert(16);
  tree.insert(18);
  print(tree);
  tree.remove(10);
  print(tree);
}
