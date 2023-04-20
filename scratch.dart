import 'dart:io';

void main() {
  performTasks();
}

void performTasks() {
  task1();
  print(task2());
  // String task2Data = task2();
  // task3(task2Data);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration second = Duration(seconds: 5);
  String result = "";
  await Future.delayed(second, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
