part of models;

class IntroModel {
  final String? imagePath;
  final String? title;
  final String? description;

  IntroModel({this.imagePath, this.title, this.description});

  static List<IntroModel> data = [
    IntroModel(
        imagePath:
            'https://assets2.lottiefiles.com/packages/lf20_jowhefc2/new car riding animation svg/data.json',
        title: 'May be used as a place',
        description: 'Discover the best Ride sharing experience...'),
    IntroModel(
        imagePath:
            'https://assets8.lottiefiles.com/packages/lf20_rkbfacga/new bike riding animation svg/data.json',
        title: 'Go to your destination',
        description: 'Discover the best ride sharing service in the city.'),
    IntroModel(
        imagePath:
            'https://assets2.lottiefiles.com/packages/lf20_jowhefc2/new car riding animation svg/data.json',
        title: 'Live tracking',
        description: 'Real time tracking of your location.')
  ];
}
