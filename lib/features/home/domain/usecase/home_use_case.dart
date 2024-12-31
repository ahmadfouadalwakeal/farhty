import 'package:work/features/home/data/models/home_models.dart';

import '../repo/home_repo.dart';

class HomeUseCase {
  final HomeRepo _homeRepo;

  HomeUseCase(this._homeRepo);

  Future<List<HomeModel>> call() {
    return _homeRepo.fetchHomeImages();
  }
}
