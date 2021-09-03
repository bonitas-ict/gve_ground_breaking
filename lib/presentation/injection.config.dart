// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../application/auth/authentication/authentication_bloc.dart' as _i3;
import '../infrastructure/core/infrastructure_injectable.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final infrastructureModule = _$InfrastructureModule();
  gh.factory<_i3.AuthenticationBloc>(() => _i3.AuthenticationBloc());
  gh.lazySingleton<_i4.Client>(() => infrastructureModule.httpClient);
  await gh.lazySingletonAsync<_i5.SharedPreferences>(
      () => infrastructureModule.prefs,
      preResolve: true);
  return get;
}

class _$InfrastructureModule extends _i6.InfrastructureModule {}
