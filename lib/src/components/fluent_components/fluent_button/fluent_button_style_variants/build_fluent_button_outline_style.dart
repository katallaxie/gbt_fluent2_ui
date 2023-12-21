part of '../fluent_button.dart';

ButtonStyle _buildFluentButtonOutlineStyle(
  FluentButtonStyle fluentButtonStyle,
  BuildContext context,
) {
  final FluentButtonSize size = fluentButtonStyle.size;
  final MaterialStateProperty<Color?>? backgroundColor =
      fluentButtonStyle.backgroundColor;
  final Color? strokeRestColor = FluentColors.neutralStroke1Rest;
  final Color? strokePressedColor = FluentColors.neutralStroke1Pressed;
  final Color? strokeFocusedColor = FluentColors.neutralStrokeFocus2Rest;
  final Color strokeDisabledColor = FluentColors.neutralStrokeDisabledRest;

  return ButtonStyle(
    backgroundColor: backgroundColor ?? MaterialStateProperty.all(Colors.transparent),
    shape: MaterialStateProperty.resolveWith(
      (states) {
        if (states.length == 1) {
          return switch (states.single) {
            MaterialState.pressed => strokePressedColor != null
                ? RoundedRectangleBorder(
                    side: BorderSide(
                      color: strokePressedColor,
                    ),
                    borderRadius: BorderRadius.circular(
                      size == FluentButtonSize.large
                          ? FluentCornerRadius.xLarge.value
                          : FluentCornerRadius.large.value,
                    ),
                  )
                : null,
            MaterialState.focused => strokeFocusedColor != null
                ? RoundedRectangleBorder(
                    side: BorderSide(
                        color: strokeFocusedColor,
                        width: FluentStrokeThickness.strokeWidth20.value),
                    borderRadius: BorderRadius.circular(
                      size == FluentButtonSize.large
                          ? FluentCornerRadius.xLarge.value
                          : FluentCornerRadius.large.value,
                    ),
                  )
                : null,
            MaterialState.disabled => RoundedRectangleBorder(
                side: BorderSide(
                  color: strokeDisabledColor,
                ),
                borderRadius: BorderRadius.circular(
                  size == FluentButtonSize.large
                      ? FluentCornerRadius.xLarge.value
                      : FluentCornerRadius.large.value,
                ),
              ),
            _ => null,
          };
        }
        return strokeRestColor != null
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: strokeRestColor,
                ),
                borderRadius: BorderRadius.circular(
                  size == FluentButtonSize.large
                      ? FluentCornerRadius.xLarge.value
                      : FluentCornerRadius.large.value,
                ),
              )
            : null;
      },
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return FluentColors.neutralForegroundDisabled1;
        }
        return FluentColors.neutralForeground1Rest;
      },
    ),
    shadowColor: MaterialStateProperty.all(Colors.transparent),
    surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  ).merge(_fluentButtonDefaultStyle(
      fluentButtonStyle: fluentButtonStyle, context: context));
}
