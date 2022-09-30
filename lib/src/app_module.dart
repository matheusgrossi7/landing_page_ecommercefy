import 'package:flutter_modular/flutter_modular.dart';

import 'src_exports.dart';

class AppModule extends Module {
  static String get landingPageRouteName => '/';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          landingPageRouteName,
          child: (context, args) => const LandingPage(),
        ),
        WildcardRoute(
          child: (context, args) => const NothingFoundPage(),
        ),
      ];
}
