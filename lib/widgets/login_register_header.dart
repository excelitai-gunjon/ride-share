part of widgets;

class LoginRegistrationHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool centerText;

  const LoginRegistrationHeader(
      {required this.title,
      required this.subTitle,
      this.centerText = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: kVerticalPadding * 2.5),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: primaryFontColor,
              ),
          textAlign: centerText ? TextAlign.center : null,
        ),
        SizedBox(height: kVerticalPadding / 2),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: primaryFontColor,
              ),
          textAlign: centerText ? TextAlign.center : null,
        ),
        SizedBox(height: kVerticalPadding * 3),
      ],
    );
  }
}
