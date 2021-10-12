import 'package:fanoos/base/loading_manager.dart';
import 'package:flutter/material.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  const BaseStatefulWidget({
    Key? key,
  }) : super(key: key);

  @override
  BaseState createState() {
    return baseCreateState();
  }

  BaseState baseCreateState();
}

mixin BaseState<W extends BaseStatefulWidget>
    implements State<W>, LoadingManager {
  @override
  Widget build(BuildContext context) {
    return baseWidget();
  }

  Widget baseWidget() {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [baseBuild(context), loadingManagerWidget()],
      ),
    );
  }

  void changeState() {
    setState(() {});
  }

  @override
  void runChangeState() {
    changeState();
  }

  Widget baseBuild(BuildContext context);
}
