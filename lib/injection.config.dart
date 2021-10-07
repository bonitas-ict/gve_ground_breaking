// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'src/application/agenda/agenda_detail/agenda_detail_bloc.dart' as _i13;
import 'src/application/agenda/agenda_speaker/agenda_speaker_bloc.dart' as _i14;
import 'src/application/auth/authentication/authentication_bloc.dart' as _i18;
import 'src/application/auth/authorization/authorization_bloc.dart' as _i19;
import 'src/application/auth/verification/verification_bloc.dart' as _i17;
import 'src/application/land/land_info/land_info_bloc.dart' as _i10;
import 'src/application/main/home/home_bloc.dart' as _i15;
import 'src/domain/domain.dart' as _i4;
import 'src/domain/main/i_main_facade.dart' as _i8;
import 'src/infrastructure/agenda/repository/agenda_facade.dart' as _i5;
import 'src/infrastructure/auth/repository/auth_facade.dart' as _i16;
import 'src/infrastructure/core/infrastructure_injectable.dart' as _i20;
import 'src/infrastructure/core/network_request_helper.dart' as _i11;
import 'src/infrastructure/infrastructure.dart' as _i6;
import 'src/infrastructure/land/repository/land_facade.dart' as _i7;
import 'src/infrastructure/main/repository/main_facade.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final infrastructureModule = _$InfrastructureModule();
  gh.lazySingleton<_i3.Client>(() => infrastructureModule.httpClient);
  gh.lazySingleton<_i4.IAgendaFacade>(
      () => _i5.AgendaFacade(networkHelper: get<_i6.NetworkHelper>()));
  gh.lazySingleton<_i4.ILandFacade>(
      () => _i7.LandFacade(networkHelper: get<_i6.NetworkHelper>()));
  gh.lazySingleton<_i8.IMainFacade>(
      () => _i9.MainFacade(networkHelper: get<_i6.NetworkHelper>()));
  gh.factory<_i10.LandInfoBloc>(
      () => _i10.LandInfoBloc(landFacade: get<_i4.ILandFacade>()));
  gh.lazySingleton<_i11.NetworkHelper>(
      () => _i11.NetworkHelper(conn: get<_i3.Client>()));
  await gh.lazySingletonAsync<_i12.SharedPreferences>(
      () => infrastructureModule.prefs,
      preResolve: true);
  gh.factory<_i13.AgendaDetailBloc>(
      () => _i13.AgendaDetailBloc(agendaFacade: get<_i4.IAgendaFacade>()));
  gh.factory<_i14.AgendaSpeakerBloc>(
      () => _i14.AgendaSpeakerBloc(agendaFacade: get<_i4.IAgendaFacade>()));
  gh.factory<_i15.HomeBloc>(
      () => _i15.HomeBloc(mainFacade: get<_i8.IMainFacade>()));
  gh.lazySingleton<_i4.IAuthFacade>(() => _i16.AuthFacade(
      pref: get<_i12.SharedPreferences>(),
      networkHelper: get<_i6.NetworkHelper>()));
  gh.factory<_i17.VerificationBloc>(
      () => _i17.VerificationBloc(iAuthFacade: get<_i4.IAuthFacade>()));
  gh.factory<_i18.AuthenticationBloc>(
      () => _i18.AuthenticationBloc(iAuthFacade: get<_i4.IAuthFacade>()));
  gh.factory<_i19.AuthorizationBloc>(
      () => _i19.AuthorizationBloc(iAuthFacade: get<_i4.IAuthFacade>()));
  return get;
}

class _$InfrastructureModule extends _i20.InfrastructureModule {}
