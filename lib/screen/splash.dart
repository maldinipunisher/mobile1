part of 'screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: accents.elementAt(0),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: 550.w,
                height: 550.w,
                margin: EdgeInsets.symmetric(vertical: 140.h),
                decoration: BoxDecoration(
                  // color: accents.elementAt(2),
                  border: Border.all(
                      width: 0.5, color: Colors.white.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(550.r),
                ),
              ),
              SizedBox(
                width: ScreenUtil().screenWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 300.w,
                            height: 300.w,
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: BoxDecoration(
                              // color: accents.elementAt(2),
                              border: Border.all(
                                  width: 1,
                                  color: Colors.white.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(450.r),
                            ),
                          ),
                          Container(
                            width: 450.w,
                            height: 450.w,
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: BoxDecoration(
                              // color: accents.elementAt(2),
                              border: Border.all(
                                  width: 0.5,
                                  color: Colors.white.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(450.r),
                            ),
                          ),
                          Container(
                            width: 250.w,
                            height: 250.w,
                            margin: EdgeInsets.symmetric(vertical: 40.h),
                            decoration: BoxDecoration(
                              color: accents.elementAt(2),
                              borderRadius: BorderRadius.circular(300.r),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 100.h),
                            child: Lottie.asset(
                              'assets/lottie/folder-upload.json',
                              fit: BoxFit.scaleDown,
                              width: 300.w,
                              height: 300.w,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Upload Folders _",
                        style: titleStyles.elementAt(0),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Brings your files and\ncloud content together.",
                            style: subtitleStyles.elementAt(0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            style: buttonStyles.first,
                            child: const Text("Get Started"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
