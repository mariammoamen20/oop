import 'encapsulation.dart';

class Product {
  static String markName = 'Hyper 1';
  int id;
  String name;
  double price;

  ///primary constructor ->  doesn't have any parameters just for initializing data
  /* Product() {
    id = 0;
    name = 'unknown';
    price = 0.0;
  }*/

  ///Primary Constructor -> have parameters to  initialize data to  given values
/*  Product(int id , String name , double price){
    this.id = id;
    this.name = name;
    this.price = price;
  }*/

  Product(this.id, this.name, this.price);

  ///Named Constructor  --> Constructor has name
  Product.init(this.id, this.name);

  Product.price(this.price);

  void viewDetails() {
    // print('mark name = $markName');
    print('Id : $id');
    print('name : $name');
    print('price : $price');
  }

  static void showMarketName() {
    print('market name $markName');
  }
}

void main() {
  //Product p; //p-> pointer = بيشاور على نل في الميموري
  ///object p
  /*Product p = Product();
  p.id = 0;
  p.name = 'coca';
  p.price = 6.0;
  print(p.id);
  print(p.name);
  print(p.price);*/

  ///object product_1 and product_2
  //Product.markName = 'Carfor';
  Product product_1 = Product(
      20, 'coca', 4.0); //object creation -> dynamic allocation for object
  product_1.viewDetails();
  Product.showMarketName();

  print('');

  // Product.markName = 'Carfor';
  Product product_2 = Product(
      30, 'pepsi', 5.0); //object creation -> dynamic allocation for object
  product_2.viewDetails();

  Product.showMarketName();
}
