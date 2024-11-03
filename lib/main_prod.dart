import 'package:notes/bootstrap.dart';
import 'package:notes/config.dart';
import 'package:notes/features/app/views/app.dart';

void main() {
  bootstrap(Flavor.prod, () => const App());
}
