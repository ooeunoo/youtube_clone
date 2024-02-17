import 'package:clone_flutter_youtube/src/model/asset/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    switch (asset.path.split('.').last.toLowerCase()) {
      case 'svg':
        return SvgPicture.asset(
          asset.path,
          width: size,
          height: size,
          fit: fit,
          alignment: alignment,
          colorFilter: useDefaultColorFilter
              ? null
              : ColorFilter.mode(
                  Theme.of(context).iconTheme.color!, BlendMode.srcIn),
        );
      case 'png':
        return Image.asset(
          asset.path,
          width: size,
          height: size,
          fit: fit,
          alignment: alignment,
          color:
              useDefaultColorFilter ? Theme.of(context).iconTheme.color : null,
        );
      default:
        throw UnsupportedError('Unsupported asset file type. ${asset.path}');
    }
  }
}
