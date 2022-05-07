class Node<T> {
  T value;
  Node<T>? next;
  Node<T>? prev;

  Node({
    required this.value,
    this.next,
    this.prev,
  });

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}
