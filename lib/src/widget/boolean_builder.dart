import 'package:flutter/material.dart';


abstract class CaseBuilderWidget extends StatelessWidget{
  const CaseBuilderWidget({Key? key,}) : super(key: key);
}

abstract class BooleanBuilderWidget extends StatelessWidget{
  const BooleanBuilderWidget({Key? key,}) : super(key: key);
}

class ContainerBooleanBuilder extends BooleanBuilderWidget {
  final bool check;
  final Widget
  ? ifTrue;
  final Widget
  ? ifFalse;

  const ContainerBooleanBuilder({
    Key? key,
    this.check = true,
    this.ifTrue,
    this.ifFalse
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(check) return Container(child: ifTrue,);
    return Container(child: ifFalse,);
  }
}

class BooleanBuilder extends BooleanBuilderWidget {
  final bool check;
  final Widget ifTrue;
  final Widget ifFalse;

  const BooleanBuilder({
    Key? key,
    this.check = true,
    required this.ifTrue,
    required this.ifFalse
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(check) return ifTrue;
    return ifFalse;
  }
}

class CaseBuilder extends CaseBuilderWidget{
  final Enum status;
  const CaseBuilder({
    Key? key,
    required  this.status,
  }) : assert(status is Enum, "status must be an Enum"), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        switch(status){
          //case status.values[0]:
        }
        return Container();
      }
    );
  }

}
