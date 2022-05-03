import 'package:dart_box/linked_list/index.dart';

void main() {
  // push();
  // append();
  // nodeAt(2);
  // insertAfter();
  // pop();
  // removeLast();
  // removeAfter();
}

void push() {
  final list = LinkedList<int>();
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);
  print('push $list');
}

void append() {
  final list = LinkedList<int>();
  list.append(4);
  list.append(5);
  list.append(6);
  print('append $list');
}

void nodeAt(int index) {
  final list = LinkedList<int>();
  list.push(4);
  list.push(3);
  list.push(2);
  list.push(1);
  var node = list.nodeAt(index);
  print('nodeAt $node');
}

void insertAfter() {
  final list = LinkedList<int>();
  list.push(1);
  list.push(4);
  list.push(3);
  print('insertAfter: Before $list');
  var node = list.nodeAt(1)!;
  var insertNode = list.insertAfter(node, 42);
  print('insertAfter: After $list');
  print('insertAfter: After $insertNode');
}

void pop() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(13);
  list.push(14);
  list.push(15);
  print('pop: Before $list');
  final poppedValue = list.pop();
  print('pop: After $list');
  print('pop: Popped $poppedValue');
}

void removeLast() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(16);
  list.push(17);
  list.push(18);
  print('Before $list');
  final removeLastValue = list.removeLast();
  print('After $list');
  print('Removed $removeLastValue');
}

void removeAfter() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(19);
  list.push(20);
  list.push(21);
  print('Before $list');
  final firstNode = list.nodeAt(0);
  final removeLastAfterValue = list.removeAfter(firstNode!);
  print('After $list');
  print('Removed $removeLastAfterValue');
}
