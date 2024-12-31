import 'package:work/features/home/data/data_source/home_data_source.dart';
import 'package:work/features/home/data/models/home_models.dart';
import 'package:work/features/home/domain/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource _homeLocalDataSource;

  HomeRepoImpl(this._homeLocalDataSource);
  @override
  Future<List<HomeModel>> fetchHomeImages() async {
    final images = _homeLocalDataSource.getHomeImages();
    return images.map((image) => HomeModel(image)).toList();
  }
}
