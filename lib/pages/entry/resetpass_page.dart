part of pages;

class PassResetPage extends StatelessWidget {
  const PassResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteLogin2);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Color(0xfffe8550),
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const LoginRegistrationHeader(
            //   centerText: true,
            //   title: "Reset Password",
            //   subTitle:
            //       "Please enter your email to receive a link\nto create new password via email",
            // ),
            const Text(
              "Reset Password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Can't sign in to your Account? Enter you\nnumber that you are login with",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              //textAlign: TextAlign.center,
            ),
            SizedBox(height: kVerticalPadding * 2),
            const Text(
              "Phone Number",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: kVerticalPadding / 2),
            // const TextField(
            //   style: TextStyle(color: primaryFontColor),
            //   keyboardType: TextInputType.phone,
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.arrow_drop_down),
            //     labelText: '+880 Enter your number',
            //     isCollapsed: true,
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.flagUsa,
                        //color: Colors.black,
                        size: 15,
                      ),
                      onPressed: () {}),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("+880"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("1864"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("654"),
                        // child: Icon(
                        //   FontAwesomeIcons.solidCircle,
                        //   color: Colors.black,
                        //   size: 8,
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("262"),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      FontAwesomeIcons.checkCircle,
                      color: Colors.green,
                      size: 14,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: kVerticalPadding * 6),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     builder: (context) => const EnterOtpPage(),
                //   ),
                // );
                Navigator.pushReplacementNamed(context, kRouteRestePassOtp);
              },
              child: const Text("Get OTP"),
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.all(kButtonPadding),
                minimumSize: Size(double.infinity, kButtonPadding),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
