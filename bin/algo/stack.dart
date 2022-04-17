void main(List<String> arguments) {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);
  final element = stack.pop();
  print('Popped $element');

  const list = [
    'B',
    'S',
    'X',
    '_',
    'M',
    'A',
    'R',
    'S',
  ];
  final listStack = Stack.of(list);
  print(listStack);
  final listElement = listStack.pop();
  print('Popped $listElement');
  print(listStack);
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  @override
  String toString() {
    return '---TOP ---\n'
        '${_storage.reversed.join('\n')}'
        '\n--------------';
  }

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => _storage.isNotEmpty;
}
