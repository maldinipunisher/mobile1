part of '../components.dart';

class CategoryContainer extends StatelessWidget {
  final double? width, height;
  final BorderRadius? borderRadius;
  final String? subtitle;
  final String title;
  final TextStyle? titleStyle, subtitleStyle;
  final List<Widget>? children;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  const CategoryContainer(
      {Key? key,
      this.width,
      this.height,
      this.borderRadius,
      this.subtitle,
      required this.title,
      this.children,
      this.padding,
      this.backgroundColor,
      this.titleStyle,
      this.subtitleStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: borderRadius ?? BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: titleStyle ??
                TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.sp,
                ),
          ),
          Text(
            subtitle ?? "",
            style: subtitleStyle ??
                TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w200,
                  fontSize: 24.sp,
                ),
          ),
          SizedBox(
            height: 20.h,
          ),
          if (children != null)
            Row(
              children: children!,
            ),
        ],
      ),
    );
  }
}
