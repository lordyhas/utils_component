import 'package:flutter/material.dart';

abstract class CaseBuilderWidget extends StatelessWidget {
  const CaseBuilderWidget({
    Key? key,
  }) : super(key: key);
}

abstract class BooleanBuilderWidget extends StatelessWidget {
  const BooleanBuilderWidget({
    Key? key,
  }) : super(key: key);
}

class ContainerBooleanBuilder extends BooleanBuilderWidget {
  //final bool check;
  final bool condition;
  final Widget? ifTrue;
  final Widget? ifFalse;

  ContainerBooleanBuilder(
      {Key? key,
      this.condition = true,
      @Deprecated("use condition instead") bool check = true,
      this.ifTrue,
      this.ifFalse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return Container(
        child: ifTrue,
      );
    }
    return Container(
      child: ifFalse,
    );
  }
}

class BooleanBuilder extends BooleanBuilderWidget {
  @Deprecated("use condition instead")
  final bool check;
  final bool condition;
  final Widget ifTrue;
  final Widget ifFalse;

  BooleanBuilder({
    Key? key,
    required this.condition,
    required this.ifTrue,
    required this.ifFalse,
    @Deprecated("use condition instead")
    this.check = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition || check) return ifTrue;
    return ifFalse;
  }
}

class CaseBuilder extends CaseBuilderWidget {
  const CaseBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
