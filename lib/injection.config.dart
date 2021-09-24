// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import 'src/application/auth/authentication/authentication_bloc.dart' as _i13;
import 'src/application/auth/authorization/authorization_bloc.dart' as _i14;
import 'src/application/auth/verification/verification_bloc.dart' as _i12;
import 'src/application/main/home/home_bloc.dart' as _i9;
import 'src/domain/domain.dart' as _i10;
import 'src/domain/main/i_main_facade.dart' as _i4;
import 'src/infrastructure/auth/repository/auth_facade.dart' as _i11;
import 'src/infrastructure/core/infrastructure_injectable.dart' as _i15;
import 'src/infrastructure/core/network_request_helper.dart' as _i7;
import 'src/infrastructure/infrastructure.dart' as _i6;
import 'src/infrastructure/main/repository/main_facade.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final infrastructureModule = _$InfrastructureModule();
  gh.lazySingleton<_i3.Client>(() => infrastructureModule.httpClient);
  gh.lazySingleton<_i4.IMainFacade>(
      () => _i5.MainFacade(networkHelper: get<_i6.NetworkHelper>()));
  gh.lazySingleton<_i7.NetworkHelper>(
      () => _i7.NetworkHelper(conn: get<_i3.Client>()));
  await gh.lazySingletonAsync<_i8.SharedPreferences>(
      () => infrastructureModule.prefs,
      preResolve: true);
  gh.factory<_i9.HomeBloc>(
      () => _i9.HomeBloc(mainFacade: get<_i4.IMainFacade>()));
  gh.lazySingleton<_i10.IAuthFacade>(() => _i11.AuthFacade(
      pref: get<_i8.SharedPreferences>(),
      networkHelper: get<_i6.NetworkHelper>()));
  gh.factory<_i12.VerificationBloc>(
      () => _i12.VerificationBloc(iAuthFacade: get<_i10.IAuthFacade>()));
  gh.factory<_i13.AuthenticationBloc>(
      () => _i13.AuthenticationBloc(iAuthFacade: get<_i10.IAuthFacade>()));
  gh.factory<_i14.AuthorizationBloc>(
      () => _i14.AuthorizationBloc(iAuthFacade: get<_i10.IAuthFacade>()));
  return get;
}

class _$InfrastructureModule extends _i15.InfrastructureModule {}
