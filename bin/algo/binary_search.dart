void main(List<String> arguments) {
  const numbers = [1, 3, 56, 66, 68, 80, 99, 105, 450];

  var x = binarySearch(68, numbers);
  print(x);
}

int binarySearch(int value, List<int> list) {
  if (list.isEmpty) return -1;

  final mid = list.length ~/ 2;
  if (value == list[mid]) return value;
  var start = 0;
  var end = list.length - 1;

  value > list[mid] ? start = mid : end = mid;

  for (var i = start; i < end; i++) {
    if (value == list[i]) return value;
  }

  return -1;
}
