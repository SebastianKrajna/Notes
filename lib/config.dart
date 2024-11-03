enum Flavor {
  prod,
  dev,
}

class Config {
  static Flavor? appFlavor;

  static String get title => switch (appFlavor) {
        Flavor.prod => 'Prod App',
        Flavor.dev => 'Dev App',
        _ => 'Unknown App',
      };
}