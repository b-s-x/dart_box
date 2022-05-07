import 'node.dart';

abstract class DoubleLinkedList<E> {
  void push(E value);
  void append(E value);
  Node<E>? startNodeAt(int index);
  Node<E>? endNodeAt(int index);
  void insertAfter(Node node, E value);
  void insertBefore(Node node, E value);
  void pop();
  void removeLast();
  void removeAfter(Node<E> node);
  void removeBefore(Node<E> node);
  void updateAt(Node<E> node, E newValue);
}

class ConcreteDoubleLinkedList<E> implements DoubleLinkedList<E> {
  Node<E>? head;
  Node<E>? tail;
  bool get isEmpty => head == null;
  int length = 0;

  @override
  void push(E value) {
    head = Node(value: value, next: head);
    head?.next?.prev = head;
    tail ??= head;
    length += 1;
  }

  @override
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value: value, prev: tail);
    tail = tail!.next;
    length += 1;
  }

  @override
  Node<E>? startNodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  @override
  Node<E>? endNodeAt(int index) {
    var currentNode = tail;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.prev;
      currentIndex += 1;
    }

    return currentNode;
  }

  @override
  void insertAfter(Node node, E value) {
    if (tail == node) {
      append(value);
      return;
    }
    final newNode = Node(value: value, next: node.next, prev: node);
    node.next = newNode;
    newNode.next?.prev = newNode;
    length += 1;
  }

  @override
  void insertBefore(Node node, E value) {
    if (head == node) {
      push(value);
      return;
    }

    var newNode = Node(value: value, next: node, prev: node.prev);
    node.prev = newNode;
    newNode.prev?.next = newNode;
    length += 1;
  }

  @override
  void pop() {
    head = head?.next;
    head?.prev = null;

    if (isEmpty) tail = null;
    length -= 1;
  }

  @override
  void removeLast() {
    tail = tail?.prev;
    tail?.next = null;

    if (isEmpty) head = null;
    length -= 1;
  }

  @override
  void removeAfter(Node<E> node) {
    if (node.next == tail) {
      tail = node;
    }

    var nextAfterRemoveItem = node.next?.next;
    node.next = nextAfterRemoveItem;
    nextAfterRemoveItem?.prev = node;
    length -= 1;
  }

  @override
  void removeBefore(Node<E> node) {
    if (node.prev == head) {
      head = node;
    }

    var prevBeforeRemoveItem = node.prev?.prev;
    node.prev = prevBeforeRemoveItem;
    prevBeforeRemoveItem?.next = node;
    length -= 1;
  }

  @override
  void updateAt(Node<E> node, E newValue) {
    var nextItem = node.next;
    var previousItem = node.prev;

    node = Node(value: newValue, next: nextItem, prev: previousItem);

    nextItem?.prev = node;
    previousItem?.next = node;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
