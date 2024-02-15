import 'package:clone_flutter_youtube/src/models/asset/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui' as ui;

class CustomIcon extends StatelessWidget {
  final Asset asset;
  final bool isActive;
  final double? size;
  final BoxFit fit;
  final IconThemeData? style;
  final Alignment alignment;
  final bool useDefaultColorFilter;

  const CustomIcon(this.asset,
      {super.key,
      this.isActive = false,
      this.fit = BoxFit.contain,
      this.size,
      this.alignment = Alignment.center,
      this.style,
      this.useDefaultColorFilter = false});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(asset.uploadIcon,
        width: size, // size가 널이면 해당 매개변수 자체를 전달하지 않음
        height: size,
        fit: fit,
        alignment: alignment,
        colorFilter: useDefaultColorFilter
            ? null
            : ColorFilter.mode(
                Theme.of(context).iconTheme.color!, BlendMode.srcIn)
        // 다른 매개변수들도 직접 전달
        );
  }
}
