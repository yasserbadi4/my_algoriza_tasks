import 'package:flutter/material.dart';
import 'package:task_1/features/login/presentation/widgets/counter_widget.dart';


class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CounterWidget(),
    );
  }
}
