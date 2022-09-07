part of '../components.dart';

class SelectableContainer extends StatelessWidget {
  final VoidCallback onTap;
  final double? width, height;
  final BorderRadius? borderRadius;
  final Color? selectedColor;
  final Color? backgroundColor;
  final Color? splashColor;
  final bool selected;
  final Widget? child;
  final EdgeInsetsGeometry? margin, padding;

  const SelectableContainer(
      {Key? key,
      required this.onTap,
      this.width,
      this.height,
      this.borderRadius,
      this.selectedColor,
      this.backgroundColor,
      this.splashColor,
      required this.selected,
      this.child,
      this.margin,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.symmetric(vertical: 30.h),
      child: InkWell(
        onTap: onTap,
        splashColor: splashColor,
        borderRadius: borderRadius ?? BorderRadius.circular(100.r),
        child: Ink(
          width: width,
          height: height,
          padding: padding ?? EdgeInsets.all(15.w),
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(100.r),
            color: !selected
                ? backgroundColor ?? Colors.white
                : selectedColor ?? accents.elementAt(0),
          ),
          child: child,
        ),
      ),
    );
  }
}
