
import 'package:auto_route/auto_route.dart';
import '../presentation.dart';

///STATIC GENERATOR FOR APP ROUTES
///ALL APP SCREENS ARE PROVIDES INSIDE THR ROUTE PARAMETER OF THE AUTOROUTE ANNOTATION
///AS A CONVENTION ALL APP SCREEN HAS A SUFFIX OF PAGE, THE CORRESPONDING GENERATED ROUTE CLASS HAS A ROUTE SUFFIX
///see AUTOROUTE DOCUMENTATION @https://autoroute.vercel.app/

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: const <AutoRoute>[
  const AutoRoute(page: VerificationPage, initial: true),
  const AutoRoute(page: AuthorizationPage),
  const AutoRoute(page: HomePage),
])
class $AppRouter {}