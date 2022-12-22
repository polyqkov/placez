import 'package:flutter/material.dart';

import '../../common/app_color_scheme_helper.dart';
import '../../common/app_offset_box.dart';
import '../../common/app_text_styles.dart';

class AppCategoryChip extends StatefulWidget {
  const AppCategoryChip({
    Key? key,
    required this.title,
    required this.emojiDescription,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  final String title;
  final String emojiDescription;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  @override
  State<AppCategoryChip> createState() => _AppCategoryChipState();
}

class _AppCategoryChipState extends State<AppCategoryChip> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onSelected?.call(!widget.selected),
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: widget.selected
                ? AppColorSchemeHelper.getColorScheme(context).primary
                : AppColorSchemeHelper.getColorScheme(context).secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: Row(
              children: [
                Text(widget.emojiDescription, style: AppTextStyle.bodyMedium),
                AppOffsetBox.widthSmallBox,
                Text(
                  widget.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.subheadMedium.copyWith(
                    color: widget.selected
                        ? AppColorSchemeHelper.getColorScheme(context).onPrimary
                        : AppColorSchemeHelper.getColorScheme(context).primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
