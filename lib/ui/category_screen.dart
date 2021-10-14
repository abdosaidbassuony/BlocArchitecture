import 'package:flutter/material.dart';

import 'package:fanoos/base/widget/base_stateful_widget.dart';

class CategoryScreen extends BaseStatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _CategoryScreenState();
}

class _CategoryScreenState extends BaseState<CategoryScreen> {
  @override
  Widget baseBuild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category Screen"),
      ),
      body: Center(
        child: Text(
          "Category Screen",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
