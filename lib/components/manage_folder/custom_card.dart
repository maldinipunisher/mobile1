part of '../components.dart';

class CustomCard extends StatelessWidget {
  final double? width, height;
  final ImageProvider image;
  final String? title, subtitle;
  final BorderRadius? borderRadius;
  final VoidCallback onAction;
  final Color? backgroundColor;
  final TextStyle? titleStyle, subtitleStyle;

  const CustomCard(
      {Key? key,
      this.width,
      this.height,
      required this.image,
      this.title,
      this.subtitle,
      this.borderRadius,
      required this.onAction,
      this.backgroundColor,
      this.titleStyle,
      this.subtitleStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: borderRadius ?? BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Container(
            width: width ?? double.infinity,
            height: width ?? 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(image: image, fit: BoxFit.cover),
              borderRadius: borderRadius ?? BorderRadius.circular(20.r),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title ?? "",
                  style: titleStyle ??
                      TextStyle(
                          color: Colors.black,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.bold),
                ),
                InkWell(
                    onTap: onAction,
                    child: Icon(
                      Icons.more_horiz_outlined,
                      size: 23.sp,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                subtitle ?? "",
                style: subtitleStyle ??
                    TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
