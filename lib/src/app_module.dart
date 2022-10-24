import 'package:flutter_modular/flutter_modular.dart';

import 'src_exports.dart';

class AppModule extends Module {
  static String get landingPageRouteName => '/';

  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => AppStore(
            storage: i.get<Storage>(),
          ),
        ),
        Bind.singleton(
          (i) => LandingPageStore(
            storage: i.get<Storage>(),
            appStore: i.get<AppStore>(),
          ),
        ),
        Bind.singleton(
          (i) => SelectPlanDialogStore(
            i.get<Storage>(),
          ),
        ),
        Bind<Storage>(
          (i) => FirebaseStorageImplementation(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          landingPageRouteName,
          child: (context, args) => const LandingPage(
            leadSource: 'null',
          ),
        ),
        ChildRoute(
          '$landingPageRouteName:leadSource',
          child: (context, args) => LandingPage(
            leadSource: args.params['leadSource'],
          ),
        ),
        WildcardRoute(
          child: (context, args) => const NothingFoundPage(),
        ),
      ];
}
