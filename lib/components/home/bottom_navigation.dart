part of '../components.dart';

class BottomNavigation extends StatelessWidget {
  final VoidCallback homeAction,
      folderAction,
      addFolderAction,
      statsActions,
      starredAction;

  const BottomNavigation(
      {Key? key,
      required this.homeAction,
      required this.folderAction,
      required this.addFolderAction,
      required this.statsActions,
      required this.starredAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20.h),
          width: ScreenUtil().screenWidth,
          height: 65.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.r),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 90.w,
              height: 90.w,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.r),
                  onTap: homeAction,
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 90.w,
              height: 90.w,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.r),
                  onTap: folderAction,
                  child: Icon(
                    Icons.folder_outlined,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100.r),
                border: Border.all(width: 1, color: accents.elementAt(0)),
              ),
              child: SizedBox(
                width: 70.w,
                height: 70.w,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100.r),
                    onTap: addFolderAction,
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 24.sp,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 90.w,
              height: 90.w,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.r),
                  onTap: statsActions,
                  child: Icon(
                    Icons.auto_graph_outlined,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 90.w,
              height: 90.w,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.r),
                  onTap: starredAction,
                  child: Icon(
                    Icons.star_outline,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
