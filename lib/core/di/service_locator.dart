import 'package:get_it/get_it.dart';
import 'package:work/features/home/data/data_source/home_carousel_data_source.dart';
import 'package:work/features/home/data/data_source/home_data_source.dart';
import 'package:work/features/home/data/repo/home_carousel_repo.dart';
import 'package:work/features/home/data/repo/home_repo.dart';
import 'package:work/features/home/domain/repo/home_carousel_repo.dart';
import 'package:work/features/home/domain/repo/home_repo.dart';
import 'package:work/features/home/domain/usecase/home_carousel_usecase.dart';
import 'package:work/features/home/domain/usecase/home_use_case.dart';
import 'package:work/features/home/presentation/controller/home_cubit.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
}

void _dataSources() {
  sl.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());
  sl.registerLazySingleton<HomeCarouselDataSource>(
      () => HomeCarouselDataSourceImpl());
}

void _repositories() {
  sl.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(sl()));

  sl.registerLazySingleton<HomeCarouselRepo>(() => HomeCarouselRepoImpl(sl()));
}

void _useCase() {
  sl.registerLazySingleton<HomeUseCase>(() => HomeUseCase(sl()));
  sl.registerLazySingleton<HomeCarouselUseCase>(
      () => HomeCarouselUseCase(sl()));
}

void _cubit() {
  sl.registerFactory<HomeCubit>(
      () => HomeCubit(sl<HomeUseCase>(), sl<HomeCarouselUseCase>()));
}
