import 'package:dart_box/queue/index.dart';

void main() {
  final queue = QueueList<String>();
  queue.enqueue('Ray');
  queue.enqueue('Brain');
  queue.enqueue('Eric');
  print(queue);

  queue.dequeue();
  print(queue);

  queue.peek;
  print(queue);
}
