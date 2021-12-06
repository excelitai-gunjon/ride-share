part of pages;

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteRegister1);
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
              SizedBox(height: kVerticalPadding),
              const Text(
                "Confirm Password",
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
                  labelText: 'Confirm Password',
                  isCollapsed: true,
                ),
              ),
              SizedBox(height: kVerticalPadding * 2),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, kRouteRegisterOtp);
                },
                child: const Text("Create Account"),
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
      ),
    );
  }
}
