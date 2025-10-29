import 'package:flutter/cupertino.dart';

class CommonListView extends StatelessWidget {
  final int itemCount;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int) itemBuilder;
  const CommonListView(
      {super.key,
      required this.itemCount,
      required this.itemBuilder,
      this.padding,
      this.scrollDirection = Axis.vertical});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      scrollDirection: scrollDirection,
      padding: padding,
    );
  }
}
