// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../presentation.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
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
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(VerificationRoute.name, path: '/'),
        _i1.RouteConfig(AuthorizationRoute.name, path: '/authorization-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page')
      ];
}

class VerificationRoute extends _i1.PageRouteInfo {
  const VerificationRoute() : super(name, path: '/');

  static const String name = 'VerificationRoute';
}

class AuthorizationRoute extends _i1.PageRouteInfo {
  const AuthorizationRoute() : super(name, path: '/authorization-page');

  static const String name = 'AuthorizationRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}
