part of pages;

class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pushReplacementNamed(context, kRouteLogin1);
        //   },
        //   child: const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 10),
        //     child: CircleAvatar(
        //       backgroundColor: Color(0xfffe8550),
        //       child: Icon(Icons.arrow_back, color: Colors.white),
        //     ),
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LoginRegistrationHeader(
                      title: 'Create an Account',
                      subTitle: 'Hello, Welcome to Ei Khali',
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
                TextField(
                  style: TextStyle(color: primaryFontColor),
                  keyboardType: TextInputType.phone,
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
                    prefixIcon: Icon(
                      FontAwesomeIcons.flagUsa,
                      color: Colors.black,
                      size: 15,
                    ),
                    suffixIcon: Icon(
                      FontAwesomeIcons.checkCircle,
                      color: Colors.green,
                      size: 15,
                    ),
                    //onPressed: () {},

                    labelText: '+880 Enter your number',
                    isCollapsed: true,
                  ),
                ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => const kRouteLogin2,
                    //   ),
                    // );
                    Navigator.pushReplacementNamed(context, kRouteRegister2);
                  },
                  child: const Text("Next"),
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
                SizedBox(height: kVerticalPadding),
                Center(
                  child: Text(
                    "----------Signin with social media----------",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: secondaryFontColor,
                        ),
                  ),
                ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/g.png',
                    height: 25,
                    width: 25,
                  ),
                  label: const Text(
                    ' Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  // style: ElevatedButton.styleFrom(
                  //   primary: const Color(0xfff7faf9),
                  //   padding: EdgeInsets.all(kButtonIconPadding),
                  // ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xfff7faf9),
                    padding: EdgeInsets.all(kButtonIconPadding),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    minimumSize: Size(double.infinity, kButtonPadding),
                  ),
                ),
                SizedBox(height: kVerticalPadding),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.facebookF,
                  ),
                  label: const Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff03b6fc),
                    padding: EdgeInsets.all(kButtonIconPadding),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    minimumSize: Size(double.infinity, kButtonPadding),
                  ),
                ),
                SizedBox(height: kVerticalPadding),
                LoginRegisterFooter(
                  question: 'Already have an account?',
                  actionText: '  Log in',
                  action: () {
                    Navigator.pushReplacementNamed(context, kRouteLogin1);
                  },
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
