class AppConfig {
  static const String baseUrl = 'tsla.ca'; //
  static const String path = 'api';
  static const String appName = 'Fishing Spot';
  static const String appVersion = "Version 3.0.4";
  static const String googleMapApiKey =
      "AIzaSyAJE3m4kI1tqATu-R9WjGn8O5kEdSMNoRU";
  static const String defaultUserImage =
      'https://www.wittenberg.edu/sites/default/files/2018-10/nouser_0.jpg';
  static const int appVersionCode = 1;
  static bool debugMode = false;
  static bool adsMode = false;
  static Environment env = Environment.PROD;
}

enum Environment { DEV, PROD }
