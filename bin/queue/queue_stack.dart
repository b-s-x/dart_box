import 'package:dart_box/queue/queue_stack.dart';

void main() {
  final queue = QueueStack<String>()
    ..enqueue('Ray')
    ..enqueue('Brian')
    ..enqueue('Eric');
  print(queue);

  queue.dequeue();
  print(queue);

  queue.peek;
  print(queue);
}
