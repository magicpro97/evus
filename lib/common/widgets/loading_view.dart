import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingView extends StatelessWidget {
  final RxBool isLoading;
  final Widget child;

  const LoadingView({
    Key key,
    @required this.isLoading,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
          children: [
            if (child != null) child,
            Visibility(
              visible: isLoading.value,
              child: Positioned.fill(
                child: Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                  color: Colors.black.withOpacity(.3),
                ),
              ),
            ),
          ],
        ));
  }
}
