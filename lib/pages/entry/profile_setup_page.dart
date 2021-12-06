part of pages;

class ProfileSetupPage extends StatelessWidget {
  const ProfileSetupPage({Key? key}) : super(key: key);

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
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 70.h, right: 30.w),
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Color(0xfffe8550),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const LoginRegistrationHeader(
              //   centerText: true,
              //   title: "Setup Profile",
              //   subTitle: "Great! you are almost done",
              // ),
              const Text(
                "Setup Profile",
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
                "Great! you are almost done",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),

              CircleAvatar(
                radius: 150.r,
                backgroundImage: const AssetImage(
                  "assets/p1.jpg",
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Enter your full name',
                  prefixIcon: Icon(Icons.account_circle),
                  isCollapsed: true,
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
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  prefixIcon: Icon(Icons.watch_later),
                  isCollapsed: true,
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
                ),
              ),
              SizedBox(height: kVerticalPadding),
              TextFormField(
                style: const TextStyle(color: primaryFontColor),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter your Email address',
                  prefixIcon: Icon(Icons.mail),
                  isCollapsed: true,
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
                ),
              ),
              SizedBox(height: kVerticalPadding),

              // TextFormField(
              //   style: const TextStyle(color: primaryFontColor),
              //   decoration: const InputDecoration(
              //     labelText: 'Enter your Address',
              //     isCollapsed: true,
              //   ),
              // ),
              // SizedBox(height: kVerticalPadding),
              ElevatedButton(
                onPressed: () {
                  //Navigator.pushReplacementNamed(context, kRouteLogin1);
                  Get.to(const MyHomePage());
                },
                child: const Text("Done"),
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
