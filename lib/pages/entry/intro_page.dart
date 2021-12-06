part of pages;

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  final List<IntroModel> _data = IntroModel.data;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _activeIndex = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  // Image.asset(
                  //   _data[index].imagePath!,
                  //   height: 1000.h,
                  // ),
                  Lottie.network(
                    _data[index].imagePath!,
                    height: 1000.h,
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 900.h),
            child: SliderIndicator(
              length: _data.length,
              activeIndex: _activeIndex,
              indicator: Icon(
                Icons.remove,
                color: sliderColor,
                size: 90.w,
              ),
              activeIndicator: Icon(
                Icons.remove,
                color: mainColor,
                size: 90.w,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 700.h),
            child: Text(
              _data[_activeIndex].title!,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: primaryFontColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 400.h),
            child: SizedBox(
              height: 200.h,
              child: Text(
                _data[_activeIndex].description!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: introDesColor, height: 4.h),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 180.w, vertical: 120.h),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        if ((_activeIndex + 1) >= _data.length) {
                          Navigator.pushReplacementNamed(context, kRouteLogin1);
                          return;
                        }
                        _pageController.animateToPage(_activeIndex + 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeIn);
                      },
                      // style: ElevatedButton.styleFrom(
                      //   primary: mainColor,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40),
                      //   ),
                      //   padding: const EdgeInsets.all(15),
                      // ),
                      style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.all(kButtonPadding),
                        minimumSize: Size(double.infinity, kButtonPadding),
                      ),
                      child: const Text('Get Started')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
