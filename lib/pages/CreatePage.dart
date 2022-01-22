import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  int _index = 0; // Initial step set to 5.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stepper(
          type: StepperType.horizontal,
          controlsBuilder: (context, btns) {
            return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  if (_index != 0)
                    Expanded(
                        child: TextButton(
                      onPressed: btns.onStepCancel,
                      child: Text('НАЗАД'),
                    )),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: btns.onStepContinue,
                    child: Text('ДАЛЬШЕ'),
                  )),
                ],
              ),
            );
          },
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
            final isLastStep = _index == getSteps().length - 1;
            if (!isLastStep) {
              setState(() {
                _index += 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          steps: getSteps()),
    ));
  }

  List<Step> getSteps() => [
        Step(
            isActive: _index >= 0,
            state: _index >= 1 ? StepState.complete : StepState.indexed,
            title: Text(''),
            content: Container(
              child: Text('first'),
            )),
        Step(
            isActive: _index >= 1,
            state: _index >= 2 ? StepState.complete : StepState.indexed,
            title: Text(''),
            content: Container(
              child: Text('2'),
            )),
        Step(
            isActive: _index >= 2,
            state: _index >= 3 ? StepState.complete : StepState.indexed,
            title: Text(''),
            content: Container(
              child: Text('3'),
            )),
        Step(
            isActive: _index >= 3,
            state: _index >= 4 ? StepState.complete : StepState.indexed,
            title: Text(''),
            content: Container(
              child: Text('4'),
            ))
      ];
}
