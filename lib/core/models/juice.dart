class Juice {
  final String name;
  final String description;
  final String price;
  final String madeBy;
  final String imgUrl;
  final String category;
   int itemCount;


  Juice(
      {this.name,
      this.description,
      this.price,
      this.imgUrl,
      this.madeBy,
      this.category,
      this.itemCount = 0});
}
