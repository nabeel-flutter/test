import 'package:your_app_test/src/flavors/flavors.dart';
import 'package:your_app_test/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.staging;
  await runner.main();
}
