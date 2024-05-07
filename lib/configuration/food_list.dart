import 'package:food_order_ui/configuration/category.dart';
import 'package:food_order_ui/configuration/food.dart';

Future<List<Food>> bringTheFoods() async {
  var foodList = <Food>[];

  var f1 = Food(
    foodId: 1,
    foodName: "Bicol Medical Center",
    foodImageName: "assets/food/bmc.png",
    foodCategory: "Naga City",
  );
  var f2 = Food(
    foodId: 2,
    foodName: "Naga City Hospital ",
    foodImageName: "assets/food/nghospital.png",
    foodCategory: "Peñafrancia Ave, Naga",
  );
  var f3 = Food(
    foodId: 3,
    foodName: "St.John Hospital,Inc.",
    foodImageName: "assets/food/john.png",
    foodCategory: "Panganiban Drive",
  );
  var f4 = Food(
    foodId: 4,
    foodName: "NICC Doctors Hospital",
    foodImageName: "assets/food/nicc.png",
    foodCategory: "Roxas Ave, Naga",
  );
  var f5 = Food(
    foodId: 5,
    foodName: "Naga City General Hospital",
    foodImageName: "assets/food/general.png",
    foodCategory: "Naga, Camarines Sur",
  );
  var f6 = Food(
    foodId: 6,
    foodName: "Plaza Medica",
    foodImageName: "assets/food/plaza.png",
    foodCategory: "Naga, Camarines Sur",
  );
  var f7 = Food(
    foodId: 7,
    foodName: "Smile Wellness",
    foodImageName: "assets/food/well.png",
    foodCategory: "J. Miranda St, Naga",
  );
  var f8 = Food(
    foodId: 8,
    foodName: "USI Mother Seton Hospital",
    foodImageName: "assets/food/usi.png",
    foodCategory: "Naga, Camarines Sur",
  );
  var f9 = Food(
    foodId: 9,
    foodName: "City Smiles Dental Clinic",
    foodImageName: "assets/food/smiles.png",
    foodCategory: "Dons St, Naga",
  );

  foodList.add(f1);
  foodList.add(f2);
  foodList.add(f3);
  foodList.add(f4);
  foodList.add(f5);
  foodList.add(f6);
  foodList.add(f7);
  foodList.add(f8);
  foodList.add(f9);

  return foodList;
}

Future<List<Category>> bringTheCategory() async {
  var categoryList = <Category>[];

  var c1 = Category(
      categoryId: 1,
      categoryName: "Chicken",
      categoryImage: "assets/category/chicken.png");
  var c2 = Category(
      categoryId: 2,
      categoryName: "Bakery",
      categoryImage: "assets/category/bakery.png");
  var c3 = Category(
      categoryId: 3,
      categoryName: "Fast Food",
      categoryImage: "assets/category/fastfood.png");
  var c4 = Category(
      categoryId: 4,
      categoryName: "Fish",
      categoryImage: "assets/category/fish.png");
  var c5 = Category(
      categoryId: 5,
      categoryName: "Fruit",
      categoryImage: "assets/category/fruit.png");
  var c6 = Category(
      categoryId: 6,
      categoryName: "Soup",
      categoryImage: "assets/category/soup.png");
  var c7 = Category(
      categoryId: 7,
      categoryName: "Vegetable",
      categoryImage: "assets/category/vegetable.png");

  categoryList.add(c1);
  categoryList.add(c2);
  categoryList.add(c3);
  categoryList.add(c4);
  categoryList.add(c5);
  categoryList.add(c6);
  categoryList.add(c7);

  return categoryList;
}
