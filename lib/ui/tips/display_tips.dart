import 'package:flutter/material.dart';
import 'package:flutter_template/ui/common/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

import 'package:flutter_template/core/model/tip.dart';

class DisplayTipWidget extends StatelessWidget {
  final Tip tip;

  const DisplayTipWidget({
    required this.tip,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.network(
        tip.imageUrl,
        loadingBuilder: (
          BuildContext context,
          Widget child,
          ImageChunkEvent? loadingProgress,
        ) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              color: context.theme.colors.primary.shade100,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      );
}