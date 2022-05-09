import '../double_linked_list/index.dart';

abstract class Queue<E> {
  bool enqueue(E element);
  void dequeue();
  bool get isEmpty;
  E? get peek;
}

class QueueLinkedList<E> implements Queue<E> {
  final _list = ConcreteDoubleLinkedList<E>();

  @override
  bool enqueue(E element) {
    _list.append(element);
    return true;
  }

  @override
  void dequeue() => _list.pop();

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => _list.head?.value;

  @override
  String toString() => _list.toString();
}
