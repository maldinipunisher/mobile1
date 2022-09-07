// ignore_for_file: avoid_function_literals_in_foreach_calls

part of 'screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();
  String searchQuery = "";
  List<String> result = [];
  List<String> data = [
    "video12",
    "documentA",
    "IMG15",
    "myfiles77",
  ];
  final PageController pageController = PageController();
  int page = 0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        page = (pageController.page ?? 0).toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    pageController.dispose();
    super.dispose();
  }

  Widget header() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Tam,",
                style: TextStyle(fontSize: 50.sp),
              ),
              Text(
                "Welcome back 👋",
                style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
          InkWell(
            splashColor: Colors.yellow,
            borderRadius: BorderRadius.circular(100.r),
            onTap: () {},
            child: Ink(
              height: 50.w,
              width: 50.w,
              decoration: BoxDecoration(
                color: accents.elementAt(2),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Icon(
                Icons.sort_outlined,
                color: accents.first,
              ),
            ),
          ),
        ],
      );

  Widget searchBar() => Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: accents.elementAt(3),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Column(
          children: [
            Container(
              height: 80.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: TextFormField(
                controller: searchController,
                onChanged: (text) {
                  result.clear();
                  setState(() => searchQuery = text);
                  data.forEach((element) {
                    if (element.contains(searchQuery.toLowerCase())) {
                      result.add(element);
                    }
                  });
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: "Search your files",
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Upgrade now for up to 2 TB of space, and get plenty of room for your files.",
                    style: TextStyle(
                      color: accents.first,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.resolveWith(
                                (states) =>
                                    states.contains(MaterialState.pressed)
                                        ? 10
                                        : 6),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ))),
                        child: Text("Find out more")),
                  ],
                )
              ],
            )
          ],
        ),
      );

  Widget searchResult(List<String> result) => Positioned(
        top: 360.h,
        left: 0,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 60.w),
            // height: result.isEmpty ? 50.h : null,
            width: ScreenUtil().screenWidth - 120.w,
            color: Colors.white,
            child: Column(
              children: List.generate(
                  result.length,
                  (index) => ListTile(
                        title: Text(result[index]),
                      )),
            ),
          ),
        ),
      );
  Widget get pageContent => Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: ListTile(
              visualDensity: VisualDensity(horizontal: 4, vertical: 4),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
              minVerticalPadding: 0,
              horizontalTitleGap: 0,
              leading: Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://img.freepik.com/premium-photo/vintage-camera-icon-floating-pink-background-memo-image-memory-travel-photography-concept-cartoon-minimal-symbol-copy-space-3d-render-illustration_598821-1072.jpg?w=2000",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Row(
                children: [
                  Text(
                    "Bento 3d Ilustration ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        child: Icon(
                          Icons.people_outline,
                          color: Colors.black,
                          size: 20.sp,
                        ),
                      )),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "7/22/20 11:12 pm",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0.w),
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: accents.elementAt(2),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.w),
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 55.w),
                            height: 40.w,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: accents.elementAt(4),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: const Center(
                                child: Text(
                              "+6",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.w),
                        height: 10.w,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: accents.elementAt(4),
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: Container(
              decoration: BoxDecoration(
                color: accents.elementAt(0).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: 4),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                minVerticalPadding: 0,
                horizontalTitleGap: 0,
                leading: Container(
                  width: 80.w,
                  height: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzjFPFHQ4gZK_TViultDm8o5Ukba0Rz8-xYg&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      "File Manager Android UI Kit ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                          color: Colors.white),
                    ),
                    // GestureDetector(
                    //     onTap: () {},
                    //     child: SizedBox(
                    //       child: Icon(
                    //         Icons.people_outline,
                    //         color: Colors.black,
                    //         size: 20.sp,
                    //       ),
                    //     )),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shared one month ago",
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.w),
                              height: 40.w,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: accents.elementAt(2),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30.w),
                              height: 40.w,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 55.w),
                              height: 40.w,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: accents.elementAt(4),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: const Center(
                                  child: Text(
                                "+6",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.w),
                          height: 10.w,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: accents.elementAt(4),
                  ),
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
          )
        ],
      );

  Widget body() => SizedBox(
        height: 630.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Quick Access",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              children: [
                SelectableContainer(
                  onTap: () {
                    pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  selected: page == 0,
                  backgroundColor: Colors.white,
                  selectedColor: accents.elementAt(0),
                  child: Text(
                    "Uploaded",
                    style: TextStyle(
                      color: page == 0 ? Colors.white : Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SelectableContainer(
                  onTap: () {
                    pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  selected: page == 1,
                  backgroundColor: const Color.fromARGB(26, 174, 174, 174),
                  selectedColor: accents.elementAt(0),
                  child: Text(
                    "Shared",
                    style: TextStyle(
                      color: page == 1 ? Colors.white : Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SelectableContainer(
                  onTap: () {
                    pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  selected: page == 2,
                  backgroundColor: const Color.fromARGB(26, 174, 174, 174),
                  selectedColor: accents.elementAt(0),
                  child: Text(
                    "Starred",
                    style: TextStyle(
                      color: page == 2 ? Colors.white : Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              // width: 300.w,
              height: 480.h,
              child: PageView(
                controller: pageController,
                pageSnapping: true,
                physics: const BouncingScrollPhysics(),
                children: List.generate(3, (index) => pageContent),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowIndicator();
                  return false;
                },
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    header(),
                    SizedBox(height: 50.h),
                    searchBar(),
                    SizedBox(height: 50.h),
                    body(),
                  ],
                ),
              ),
            ),
            if (searchQuery.isNotEmpty) searchResult(result)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        addFolderAction: () {},
        folderAction: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ManageFolderScreen()));
        },
        homeAction: () {},
        starredAction: () {},
        statsActions: () {},
      ),
    );
  }
}
