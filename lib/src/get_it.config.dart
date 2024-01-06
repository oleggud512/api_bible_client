// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bible/src/features/bibles/application/use_cases/get_bibles_use_case.dart'
    as _i7;
import 'package:bible/src/features/bibles/domain/repositories/bible_repository.dart'
    as _i5;
import 'package:bible/src/features/bibles/infrastructure/repositories/bible_repository_openapi_impl.dart'
    as _i6;
import 'package:bible/src/features/bibles/presentation/bibles_page/bibles_page_bloc.dart'
    as _i8;
import 'package:bible/src/get_it.dart' as _i9;
import 'package:bible/src/router.dart' as _i3;
import 'package:bible_openapi/bible_openapi.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.BibleOpenapi>(registerModule.bibleOpenapi);
    gh.singleton<_i5.BibleRepository>(
        _i6.BibleRepositoryOpenapiImpl(gh<_i4.BibleOpenapi>()));
    gh.factory<_i7.GetBiblesUseCase>(
        () => _i7.GetBiblesUseCase(gh<_i5.BibleRepository>()));
    gh.factory<_i8.BiblesPageBloc>(
        () => _i8.BiblesPageBloc(gh<_i7.GetBiblesUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i9.RegisterModule {}
