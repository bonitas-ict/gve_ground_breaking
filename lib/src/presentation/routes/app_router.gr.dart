// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i2;

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
    ScannerRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ScannerRouteArgs>();
          return _i3.ScannerPage(
              key: args.key, submitCodeReference: args.submitCodeReference);
        }),
    AuthorizationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AuthorizationPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i1.RouteConfig(VerificationRoute.name, path: '/'),
        _i1.RouteConfig(ScannerRoute.name, path: '/scanner-page'),
        _i1.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(CreateAccountRoute.name, path: '/create-account-page'),
        _i1.RouteConfig(OtpRoute.name, path: '/otp-page')
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

class ScannerRoute extends _i1.PageRouteInfo<ScannerRouteArgs> {
  ScannerRoute(
      {_i4.Key? key, required void Function(String?) submitCodeReference})
      : super(name,
            path: '/scanner-page',
            args: ScannerRouteArgs(
                key: key, submitCodeReference: submitCodeReference));

  static const String name = 'ScannerRoute';
}

class ScannerRouteArgs {
  const ScannerRouteArgs({this.key, required this.submitCodeReference});

  final _i4.Key? key;

  final void Function(String?) submitCodeReference;
}

class AuthorizationRoute extends _i1.PageRouteInfo {
  const AuthorizationRoute() : super(name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class CreateAccountRoute extends _i1.PageRouteInfo {
  const CreateAccountRoute() : super(name, path: '/create-account-page');

  static const String name = 'CreateAccountRoute';
}

class OtpRoute extends _i1.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i4.Key? key, required String hashedOtp})
      : super(name,
            path: '/otp-page',
            args: OtpRouteArgs(key: key, hashedOtp: hashedOtp));

  static const String name = 'OtpRoute';
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.hashedOtp});

  final _i4.Key? key;

  final String hashedOtp;
}
