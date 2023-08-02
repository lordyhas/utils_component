//import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  const ContainerBooleanBuilder(
      {Key? key,
      this.condition = true,
      //@Deprecated("use condition instead") bool check = true,
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
  @Deprecated("use condition instead, will be remove in the next version")
  final bool check;
  final bool Function() condition;
  final Widget ifTrue;
  final Widget ifFalse;

  const BooleanBuilder({
    Key? key,
    required this.condition,
    required this.ifTrue,
    required this.ifFalse,
    //@Deprecated("use condition instead")
    this.check = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition()) return ifTrue;
    return ifFalse;
  }
}

@Deprecated("Don't use CaseBuilder")
class CaseBuilder<T> extends CaseBuilderWidget {

  final int Function() condition;
  final List<Widget> children;
  const CaseBuilder({
    Key? key,
    required this.condition,
    required this.children,
  }) : assert(children.length <= 0, "children can't be empty"), super(key: key);
  @override
  Widget build(BuildContext context) {
    int index = condition();
    return Container(
      child: children[index],
    );
  }
}
