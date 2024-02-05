import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomSheetController {
  void Function() open = () {};
  void Function() close = () {};
}

BottomSheetController useBottomSheet(BuildContext context,
    {required Widget Function(BuildContext, BottomSheetController) builder,
    bool isDismissible = true,
    bool enableDrag = false}) {
  final controller = BottomSheetController();

  useEffect(() {
    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        enableDrag: enableDrag,
        isDismissible: isDismissible,
        barrierColor: Colors.grey.withOpacity(0.8),
        isScrollControlled: true,
        useSafeArea: true,
        scrollControlDisabledMaxHeightRatio: 1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
        ),
        builder: (BuildContext context) => builder(context, controller),
      );
    }

    controller.open = showBottomSheet;
    controller.close = () {
      Navigator.of(context).pop();
    };

    return () {
      // 필요한 정리 작업 수행
    };
  }, []);

  return controller;
}
