part of pages;

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffcfcfc),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, kRouteRestePassOtp);
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
              const LoginRegistrationHeader(
                centerText: true,
                title: "New Password",
                subTitle: "Enter new password",
              ),
              SizedBox(height: kVerticalPadding),
              const Text(
                "New Password",
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
                  Navigator.pushReplacementNamed(context, kRouteLogin1);
                },
                child: const Text("Save"),
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
