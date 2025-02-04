class AppEndpoints {
  AppEndpoints._();

  static const String login = "/auth/login";
}

enum AppUrl {
  live,
  development,
}

// https://dev.to/aseemwangoo/using-mvvm-in-flutter-2022-11bg
extension AppUrlExtension on AppUrl {
  String get name {
    switch (this) {
      case AppUrl.live:
        return 'https://fakestoreapi.com';
      case AppUrl.development:
        return 'https://fakestoreapi.com';

      default:
        return '<No URL>';
    }
  }
}
