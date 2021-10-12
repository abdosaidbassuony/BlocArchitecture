import 'package:flutter/material.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return baseBuild(context);
  }

  Widget baseBuild(BuildContext context);
}
