import 'package:get_it/get_it.dart';
import 'package:credpaltest/utils/progressBarManager/dialog_service.dart';
import 'package:credpaltest/utils/router/navigation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ProgressService());
}
