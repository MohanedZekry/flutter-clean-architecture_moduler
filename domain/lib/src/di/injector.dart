import 'package:domain/src/di/injector.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

@InjectableInit(initializerName: r'$initDomainGetIt')
void configureDataDependencies(GetIt getIt) {
  getIt.$initDomainGetIt;
}