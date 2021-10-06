
import 'package:auto_route/auto_route.dart';
import 'package:gve_opening/src/presentation/pages/dashboard/dashboad.dart';
import '../presentation.dart';

///STATIC GENERATOR FOR APP ROUTES
///ALL APP SCREENS ARE PROVIDES INSIDE THR ROUTE PARAMETER OF THE AUTOROUTE ANNOTATION
///AS A CONVENTION ALL APP SCREEN HAS A SUFFIX OF PAGE, THE CORRESPONDING GENERATED ROUTE CLASS HAS A ROUTE SUFFIX
///see AUTOROUTE DOCUMENTATION @https://autoroute.vercel.app/

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes:  <AutoRoute>[
  AutoRoute(page: OnboardingPage),
  AutoRoute(page: VerificationPage, initial: true),
  AutoRoute(page: AuthorizationPage),
  AutoRoute(page: CreateAccountPage),
  AutoRoute(page: OtpPage),
  AutoRoute(
    page: DashboardPage,
    children: [
      AutoRoute(path: '', page: HomePage),
      AutoRoute(page: AgendaListPage),
      AutoRoute(page: SeatPage),
      AutoRoute(page: LandListingPage),
      AutoRoute(page: NotificationPage)
    ]
  ),
  AutoRoute(page: AgendaDetailPage),
  AutoRoute(page: SpeakerDetailPage),
  AutoRoute(page: PaymentMathodPage),

])
class $AppRouter {}