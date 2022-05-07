import 'package:dart_box/double_linked_list/index.dart';

void main() {
  push();
  append();
  startNodeAt();
  endNodeAt();

  final list = ConcreteDoubleLinkedList();
  list.push(1);
  list.push(2);
  list.push('sun');
  list.push(3);
  print('push: $list');

  print('\tInsert after');
  print('Before: $list');
  var node = list.startNodeAt(1);
  list.insertAfter(list.startNodeAt(1)!, 'world');
  print('After:  $list\n');

  print('\tInsert before');
  print('Before: $list');
  node = list.endNodeAt(3);
  list.insertBefore(node!, 'hello');
  print('After:  $list\n');

  print('\tRemove after');
  print('Before: $list');
  node = list.endNodeAt(2);
  list.removeAfter(node!);
  print('After:  $list\n');

  print('\tRemove before');
  print('Before: $list');
  node = list.startNodeAt(1);
  list.removeBefore(node!);
  print('After:  $list\n');

  print('\tUpdate at');
  print('Before: $list');
  node = list.endNodeAt(1);
  list.updateAt(node!, '3.2');
  print('After:  $list\n');

  print('List length: ${list.length}');
}

void push() {
  final list = ConcreteDoubleLinkedList();
  list.push(1);
  list.push(2);
  list.push('sun');
  list.push(3);
  print('push: $list');
}

void append() {
  final list = ConcreteDoubleLinkedList();
  list.append(1);
  list.append(2);
  list.append('sun');
  list.append(3);
  print('append: $list');
}

void startNodeAt() {
  final list = ConcreteDoubleLinkedList();
  list.push(1);
  list.push(2);
  list.push('sun');
  list.push(3);
  var node = list.startNodeAt(2);
  print('startNodeAt: $node');
}

void endNodeAt() {
  final list = ConcreteDoubleLinkedList();
  list.push(1);
  list.push(2);
  list.push('sun');
  list.push(3);
  var node = list.endNodeAt(2);
  print('endNodeAt: $node');
}
