import 'package:work/features/home/data/models/home_models.dart';

abstract class HomeRepo {
  Future<List<HomeModel>> fetchHomeImages();
}
