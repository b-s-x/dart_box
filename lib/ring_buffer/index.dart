class RingBuffer<E> {
  RingBuffer(int length) : _list = List.filled(length, null, growable: false);
  final List<E?> _list;
  int _readIdx = 0;
  int _writeIdx = 0;
  int _size = 0;

  bool get isFull => _size == _list.length;
  bool get isEmpty => _size == 0;
  E? get peek => isEmpty ? null : _list[_readIdx];

  void write(E data) {
    if (isFull) throw Exception('Buffer is full');
    _list[_writeIdx] = data;
    _writeIdx = _checkNextIndex(_writeIdx);
    _size++;
  }

  int _checkNextIndex(idx) {
    return isFull ? 0 : idx + 1;
  }

  E? read() {
    if (isFull) return null;
    final value = _list[_readIdx];
    _readIdx = _checkNextIndex(_readIdx);
    _size--;
    return value;
  }

  @override
  String toString() {
    final text = StringBuffer();
    text.write('[');
    int index = _readIdx;
    while (index != _writeIdx) {
      if (index != _readIdx) {
        text.write(', ');
      }
      text.write(_list[index % _list.length]);
      index++;
    }
    text.write(']');
    return text.toString();
  }
}
