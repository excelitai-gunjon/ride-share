part of widgets;

class SplashLogo extends StatefulWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.network(
          //   'https://assets2.lottiefiles.com/packages/lf20_jowhefc2/new car riding animation svg/data.json',
          //   fit: BoxFit.cover,
          //   //width: 250.w,
          // ),
          // Lottie.asset('assets/data.json'),

          // Lottie.network(
          //     'https://assets2.lottiefiles.com/packages/lf20_jowhefc2/new car riding animation svg/data.json'),

          Text.rich(
            TextSpan(
              text: 'Ei',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: mainColor,
                  ),
              children: const [
                TextSpan(
                  text: ' Khali',
                  style: TextStyle(color: primaryFontColor),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 24.h,
          ),
          Text(
            'Ride Sharing',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: secondaryFontColor,
                  letterSpacing: 3,
                ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Excel IT AI',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: const Color(0xfffc7835),
                  letterSpacing: 3,
                ),
          ),
        ],
      ),
    );
  }
}
