part of 'screen.dart';

class ManageFolderScreen extends StatefulWidget {
  const ManageFolderScreen({Key? key}) : super(key: key);

  @override
  State<ManageFolderScreen> createState() => _ManageFolderScreenState();
}

class _ManageFolderScreenState extends State<ManageFolderScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Widget categoriesContent() => Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                CustomCard(
                    width: 220.w,
                    height: 360.h,
                    title: "Photos & Videos",
                    subtitle: "268 items",
                    image:
                        const AssetImage("assets/images/manage_folder/3d1.jpg"),
                    onAction: () {}),
                SizedBox(
                  width: 40.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: CustomCard(
                      width: 220.w,
                      height: 360.h,
                      title: "Downloads",
                      subtitle: "40 items",
                      image: const AssetImage(
                          "assets/images/manage_folder/human1.jpg"),
                      onAction: () {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                CustomCard(
                    width: 220.w,
                    height: 360.h,
                    title: "Babe♥",
                    subtitle: "108 items",
                    image: const AssetImage(
                        "assets/images/manage_folder/woman1.jpg"),
                    onAction: () {}),
                SizedBox(
                  width: 40.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: CustomCard(
                      width: 220.w,
                      height: 360.h,
                      title: "GIF",
                      subtitle: "12 items",
                      image: const AssetImage(
                          "assets/images/manage_folder/3d2.jpg"),
                      onAction: () {}),
                ),
              ],
            ),
          ),
        ],
      );

  Widget searchBar() => Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 235, 235),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: TextFormField(
            controller: searchController,
            onChanged: (text) {},
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderSide: BorderSide.none),
              hintText: "Search anything",
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 30.sp,
              ),
            ),
          ),
        ),
      );

  PreferredSizeWidget appBar() => AppBar(
        leading: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.chevron_left, size: 52.sp, color: Colors.black)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 30.h),
          child: const Text(
            "Manage Folders",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
            child: InkWell(
              onTap: () {},
              splashColor: accents.elementAt(1),
              borderRadius: BorderRadius.circular(100.r),
              child: Ink(
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: accents.elementAt(2),
                ),
                child: Icon(
                  Icons.add_outlined,
                  color: accents.elementAt(0),
                  size: 24.sp,
                ),
              ),
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            appBar(),
            SizedBox(height: 60.h),
            SizedBox(
              // width: ScreenUtil().screenWidth,
              height: 230.h,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 30.w),
                  CategoryContainer(
                    title: "Photos & Videos",
                    subtitle: "280 items",
                    backgroundColor: accents.elementAt(1).withOpacity(0.3),
                    titleStyle: TextStyle(
                      color: accents.elementAt(1),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitleStyle: TextStyle(
                      color: accents.elementAt(1),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w200,
                    ),
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/manage_folder/human1.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/manage_folder/woman1.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Ink(
                          width: 80.w,
                          height: 80.w,
                          decoration: BoxDecoration(
                            color: accents.elementAt(1),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Center(
                            child: Icon(Icons.add_outlined,
                                color: Colors.white, size: 24.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  CategoryContainer(
                    title: "3D & 2D",
                    subtitle: "100 items",
                    subtitleStyle: TextStyle(
                      color: accents.elementAt(0),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w200,
                    ),
                    titleStyle: TextStyle(
                      color: accents.elementAt(0),
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: accents.elementAt(3).withOpacity(0.5),
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/manage_folder/3d1.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/manage_folder/3d2.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20.r),
                        child: Ink(
                          width: 80.w,
                          height: 80.w,
                          decoration: BoxDecoration(
                            color: accents.elementAt(0),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Center(
                            child: Icon(Icons.add_outlined,
                                color: Colors.white, size: 24.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50.w,
                          height: 50.w,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(100.r),
                            child: Icon(Icons.grid_3x3_outlined, size: 24.sp),
                          ),
                        ),
                        SizedBox(width: 30.w),
                        SizedBox(
                          width: 50.w,
                          height: 50.w,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(100.r),
                            child: Icon(Icons.menu_outlined, size: 24.sp),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            searchBar(),
            categoriesContent(),
          ],
        ),
      ),
    );
  }
}
