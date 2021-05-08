import 'package:auto_route/auto_route_annotations.dart';
import 'package:cowin/presentation/home/pages/home_page.dart';
import 'package:cowin/presentation/preventation/pages/preventation_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage homePage;
  PreventionPage preventationPage;
}
