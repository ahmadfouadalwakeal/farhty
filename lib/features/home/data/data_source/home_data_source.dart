abstract class HomeLocalDataSource {
  List<String> getHomeImages();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<String> getHomeImages() {
    return [
      'assets/images/mask_group.png',
      'assets/images/mask_group.png',
      'assets/images/mask_group.png',
    ];
  }
}
