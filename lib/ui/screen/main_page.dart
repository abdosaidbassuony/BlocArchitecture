import 'package:flutter/material.dart';

import 'package:fanoos/base/widget/base_stateful_widget.dart';

class MainPage extends BaseStatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _MainPageState();
}

class _MainPageState extends BaseState<MainPage> {
  @override
  Widget baseBuild(BuildContext context) {
    return Container();
  }
}
