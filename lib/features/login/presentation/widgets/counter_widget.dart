
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:task_1/features/counter/presentation/cubit/cubit.dart';
import 'package:task_1/features/counter/presentation/cubit/states.dart';


class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return CounterCubit();
      },
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).decrement();
                    },
                    child: const Icon(FontAwesomeIcons.minus),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${CounterCubit.get(context)
                        .counter}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      CounterCubit.get(context).increment();
                    },
                    child: const Icon(FontAwesomeIcons.plus),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
