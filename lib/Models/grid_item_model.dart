class GridItemModel {
  String name;
  String image;

  GridItemModel({this.name, this.image});

  static List<GridItemModel> getArray() {
    return [
      GridItemModel(name: "Pizza", image: "assets/images/pizza.jpg"),
      GridItemModel(name: "Biryani", image: "assets/images/biryani.jpg"),
      GridItemModel(name: "Daal", image: "assets/images/dal.jpg"),
      GridItemModel(name: "Dosa", image: "assets/images/dosa.jpg"),
      GridItemModel(name: "Manchurian", image: "assets/images/manchurian.jpg"),
      GridItemModel(name: "Paneer", image: "assets/images/paneer.jpg"),
      GridItemModel(name: "Paratha", image: "assets/images/paratha.jpg"),
      GridItemModel(name: "Pav Bhaji", image: "assets/images/pav_bhaji.jpg"),
      GridItemModel(name: "Pulao", image: "assets/images/pulao.jpg"),
      GridItemModel(name: "Chaach", image: "assets/images/chaach.jpg"),
      GridItemModel(name: "Thali", image: "assets/images/thali.jpg"),
      GridItemModel(name: "Shakes", image: "assets/images/shake.jpg"),
    ];
  }
}