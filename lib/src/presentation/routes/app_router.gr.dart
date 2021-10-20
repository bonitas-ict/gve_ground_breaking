// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/dashboard/dashboad.dart' as _i4;
import '../presentation.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    OnboardingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.OnboardingPage();
        }),
    VerificationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.VerificationPage();
        }),
    AuthorizationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AuthorizationPage();
        }),
    CreateAccountRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.CreateAccountPage();
        }),
    OtpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OtpRouteArgs>();
          return _i3.OtpPage(key: args.key, hashedOtp: args.hashedOtp);
        }),
    DashboardRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.DashboardPage();
        }),
    AgendaDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AgendaDetailRouteArgs>();
          return _i3.AgendaDetailPage(key: args.key, agendaId: args.agendaId);
        }),
    SpeakerDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SpeakerDetailRouteArgs>();
          return _i3.SpeakerDetailPage(
              key: args.key, speakerId: args.speakerId);
        }),
    PaymentMathodRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PaymentMathodRouteArgs>();
          return _i3.PaymentMathodPage(
              key: args.key,
              propertyId: args.propertyId,
              propertyPrice: args.propertyPrice);
        }),
    OfflinePaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OfflinePaymentRouteArgs>();
          return _i3.OfflinePaymentPage(key: args.key, plotId: args.plotId);
        }),
    OnlinePaymentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.OnlinePaymentPage();
        }),
    AboutAppRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AboutAppPage();
        }),
    AboutUsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AboutUsPage();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SettingsPage();
        }),
    PayHistoryRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.PayHistoryPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    AgendaListRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AgendaListPage();
        }),
    SeatRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SeatPage();
        }),
    LandListingRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LandListingPage();
        }),
    NotificationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.NotificationPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i1.RouteConfig(VerificationRoute.name, path: '/'),
        _i1.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i1.RouteConfig(CreateAccountRoute.name, path: '/create-account-page'),
        _i1.RouteConfig(OtpRoute.name, path: '/otp-page'),
        _i1.RouteConfig(DashboardRoute.name,
            path: '/dashboard-page',
            children: [
              _i1.RouteConfig(HomeRoute.name, path: ''),
              _i1.RouteConfig(AgendaListRoute.name, path: 'agenda-list-page'),
              _i1.RouteConfig(SeatRoute.name, path: 'seat-page'),
              _i1.RouteConfig(LandListingRoute.name, path: 'land-listing-page'),
              _i1.RouteConfig(NotificationRoute.name, path: 'notification-page')
            ]),
        _i1.RouteConfig(AgendaDetailRoute.name, path: '/agenda-detail-page'),
        _i1.RouteConfig(SpeakerDetailRoute.name, path: '/speaker-detail-page'),
        _i1.RouteConfig(PaymentMathodRoute.name, path: '/payment-mathod-page'),
        _i1.RouteConfig(OfflinePaymentRoute.name,
            path: '/offline-payment-page'),
        _i1.RouteConfig(OnlinePaymentRoute.name, path: '/online-payment-page'),
        _i1.RouteConfig(AboutAppRoute.name, path: '/about-app-page'),
        _i1.RouteConfig(AboutUsRoute.name, path: '/about-us-page'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i1.RouteConfig(PayHistoryRoute.name, path: '/pay-history-page')
      ];
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

class VerificationRoute extends _i1.PageRouteInfo {
  const VerificationRoute() : super(name, path: '/');

  static const String name = 'VerificationRoute';
}

class AuthorizationRoute extends _i1.PageRouteInfo {
  const AuthorizationRoute() : super(name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

class CreateAccountRoute extends _i1.PageRouteInfo {
  const CreateAccountRoute() : super(name, path: '/create-account-page');

  static const String name = 'CreateAccountRoute';
}

class OtpRoute extends _i1.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i2.Key? key, required String hashedOtp})
      : super(name,
            path: '/otp-page',
            args: OtpRouteArgs(key: key, hashedOtp: hashedOtp));

  static const String name = 'OtpRoute';
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.hashedOtp});

  final _i2.Key? key;

  final String hashedOtp;
}

class DashboardRoute extends _i1.PageRouteInfo {
  const DashboardRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/dashboard-page', initialChildren: children);

  static const String name = 'DashboardRoute';
}

class AgendaDetailRoute extends _i1.PageRouteInfo<AgendaDetailRouteArgs> {
  AgendaDetailRoute({_i2.Key? key, required int agendaId})
      : super(name,
            path: '/agenda-detail-page',
            args: AgendaDetailRouteArgs(key: key, agendaId: agendaId));

  static const String name = 'AgendaDetailRoute';
}

class AgendaDetailRouteArgs {
  const AgendaDetailRouteArgs({this.key, required this.agendaId});

  final _i2.Key? key;

  final int agendaId;
}

class SpeakerDetailRoute extends _i1.PageRouteInfo<SpeakerDetailRouteArgs> {
  SpeakerDetailRoute({_i2.Key? key, required int speakerId})
      : super(name,
            path: '/speaker-detail-page',
            args: SpeakerDetailRouteArgs(key: key, speakerId: speakerId));

  static const String name = 'SpeakerDetailRoute';
}

class SpeakerDetailRouteArgs {
  const SpeakerDetailRouteArgs({this.key, required this.speakerId});

  final _i2.Key? key;

  final int speakerId;
}

class PaymentMathodRoute extends _i1.PageRouteInfo<PaymentMathodRouteArgs> {
  PaymentMathodRoute(
      {_i2.Key? key, required String propertyId, required num propertyPrice})
      : super(name,
            path: '/payment-mathod-page',
            args: PaymentMathodRouteArgs(
                key: key,
                propertyId: propertyId,
                propertyPrice: propertyPrice));

  static const String name = 'PaymentMathodRoute';
}

class PaymentMathodRouteArgs {
  const PaymentMathodRouteArgs(
      {this.key, required this.propertyId, required this.propertyPrice});

  final _i2.Key? key;

  final String propertyId;

  final num propertyPrice;
}

class OfflinePaymentRoute extends _i1.PageRouteInfo<OfflinePaymentRouteArgs> {
  OfflinePaymentRoute({_i2.Key? key, required String plotId})
      : super(name,
            path: '/offline-payment-page',
            args: OfflinePaymentRouteArgs(key: key, plotId: plotId));

  static const String name = 'OfflinePaymentRoute';
}

class OfflinePaymentRouteArgs {
  const OfflinePaymentRouteArgs({this.key, required this.plotId});

  final _i2.Key? key;

  final String plotId;
}

class OnlinePaymentRoute extends _i1.PageRouteInfo {
  const OnlinePaymentRoute() : super(name, path: '/online-payment-page');

  static const String name = 'OnlinePaymentRoute';
}

class AboutAppRoute extends _i1.PageRouteInfo {
  const AboutAppRoute() : super(name, path: '/about-app-page');

  static const String name = 'AboutAppRoute';
}

class AboutUsRoute extends _i1.PageRouteInfo {
  const AboutUsRoute() : super(name, path: '/about-us-page');

  static const String name = 'AboutUsRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

class PayHistoryRoute extends _i1.PageRouteInfo {
  const PayHistoryRoute() : super(name, path: '/pay-history-page');

  static const String name = 'PayHistoryRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class AgendaListRoute extends _i1.PageRouteInfo {
  const AgendaListRoute() : super(name, path: 'agenda-list-page');

  static const String name = 'AgendaListRoute';
}

class SeatRoute extends _i1.PageRouteInfo {
  const SeatRoute() : super(name, path: 'seat-page');

  static const String name = 'SeatRoute';
}

class LandListingRoute extends _i1.PageRouteInfo {
  const LandListingRoute() : super(name, path: 'land-listing-page');

  static const String name = 'LandListingRoute';
}

class NotificationRoute extends _i1.PageRouteInfo {
  const NotificationRoute() : super(name, path: 'notification-page');

  static const String name = 'NotificationRoute';
}
