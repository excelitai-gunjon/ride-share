part of pages;

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteLogin1);
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
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    const LoginRegistrationHeader(
                      centerText: false,
                      title: 'Login Account',
                      subTitle: 'Hello, Welcome back to your account',
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            FontAwesomeIcons.flagUsa,
                            //color: Colors.black,
                            size: 15,
                          ),
                        ),
                        //DropdownMenuItem(child: Column())
                      ],
                    ),
                  ],
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kVerticalPadding / 2),
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
                        offset:
                            const Offset(0, 0), // changes position of shadow
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
                SizedBox(height: kVerticalPadding),
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: kVerticalPadding / 2),
                TextField(
                  obscureText: true,
                  style: TextStyle(color: primaryFontColor),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    fillColor: placeholderColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide.none,
                    ),
                    floatingLabelStyle: TextStyle(
                      color: secondaryFontColor,
                      height: 10.h,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: kTextFieldPadding,
                      horizontal: kTextFieldPadding * 2,
                    ),
                    prefixIcon: Icon(Icons.vpn_key_sharp),
                    suffixIcon: Icon(
                      FontAwesomeIcons.lowVision,
                      color: Colors.green,
                      size: 15,
                    ),
                    //onPressed: () {},
                    labelText: 'Enter your password',
                    isCollapsed: true,
                  ),
                ),
                SizedBox(height: kVerticalPadding / 2),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const EnterEmailPage(),
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteResetPass);
                  },
                  child: const Text(
                    "Reset Password?",
                    style: TextStyle(
                      color: Color(0xfffe8550),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: kVerticalPadding * 2),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const ProfileSetupPage(),
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteLoginOtp);
                  },
                  child: const Text("Login"),
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(kButtonPadding),
                    minimumSize: Size(double.infinity, kButtonPadding),
                  ),
                ),
                SizedBox(height: kVerticalPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
