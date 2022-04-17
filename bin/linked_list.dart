import 'package:dart_box/linked_list/index.dart';

void main() {
  push();
  append();
  insertAfter();
  pop();
  removeLast();
  removeAfter();
  listIterable();
}

void push() {
  final list = LinkedList<int>();
  list.push(4);
  list.push(5);
  list.push(6);
  print(list);
}

void append() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.append(7);
  list.append(8);
  list.append(9);
  print(list);
}

void insertAfter() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(10);
  list.push(11);
  list.push(12);
  print('Before $list');

  var midNode = list.nodeAt(1)!;
  list.insertAfter(midNode, 42);
  print('After $list');
}

void pop() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(13);
  list.push(14);
  list.push(15);
  print('Before $list');
  final poppedValue = list.pop();
  print('After $list');
  print('Popped $poppedValue');
}

void removeLast() {
  print('-' * 10);
  final list = LinkedList<int>();
  list.push(16);
  list.push(17);
  list.push(18);
  print('Before $list');
  final removeLastValue = list.pop();
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

void listIterable() {
  final numbers = [22, 23, 24];
  for (final number in numbers) {
    print('number $number');
  }

  final list = LinkedList<int>();
  list.push(25);
  list.push(26);
  list.push(27);

  for (final element in list) {
    print('element $element');
  }
}
