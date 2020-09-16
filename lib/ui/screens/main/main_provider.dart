import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:juici/core/models/juice.dart';

class MainProvider extends ChangeNotifier {

  String _filterKeyword = "";
  String _searchKeyword = "";

  List<Juice> _juicelist = [
    Juice(
      name: "Coca cola",
      description:
          "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "22.60",
      madeBy: "Made by pepsi",
      imgUrl:
          "https://www.freeiconspng.com/thumbs/coca-cola-png/bottle-coca-cola-png-transparent-2.png",
      category: "Soft Drink ",
    ),
    Juice(
      name: "Orange",
      description:
          "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "33.60",
      madeBy: "Coca cola",
      imgUrl:
          "https://www.gimmesomeoven.com/wp-content/uploads/2014/12/Orange-Julius-5.jpg",
      category: "Orange",
    ),
    Juice(
        name: "Apple",
      description:
      "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "33.60",
      madeBy: "Coca cola",
      imgUrl:
      "https://www.gimmesomeoven.com/wp-content/uploads/2014/12/Orange-Julius-5.jpg",
      category: "Apple",
    ),
    Juice(
      name: "Mango",
      description:
          "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "33.60",
      madeBy: "Coca cola",
      imgUrl:
          "https://cdn1.foodviva.com/static-content/food-images/mango-recipes/mango-milkshake-recipe/mango-milkshake-recipe-1.jpg",
      category: "Mango",
    ),
    Juice(
      name: "Banana",
      description:
          "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "12.60",
      madeBy: "Coca cola",
      imgUrl:
          "https://www.thespruceeats.com/thmb/kID-5wpMjg9p9z_r7HvRXMBjw7A=/3543x3543/smart/filters:no_upscale()/apple-and-banana-milkshake-2394955-hero-02-5c19078ac9e77c0001142ad6.jpg",
      category: "Banana",
    ),
    Juice(
      name: "Dew",
      description:
      "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "10.20",
      madeBy: "Made by pepsi",
      imgUrl:
      "https://media.naheed.pk/catalog/product/cache/49dcd5d85f0fa4d590e132d0368d8132/1/1/1117826-1.jpeg",
      category: "Soft Drink",
    ),
    Juice(
      name: "Banana",
      description:
      "this is a Banana, this is a banana, this is a banana, this is a banana, this is a banana",
      price: "32.60",
      madeBy: "Coca cola",
      imgUrl:
      "https://www.thespruceeats.com/thmb/kID-5wpMjg9p9z_r7HvRXMBjw7A=/3543x3543/smart/filters:no_upscale()/apple-and-banana-milkshake-2394955-hero-02-5c19078ac9e77c0001142ad6.jpg",
      category: "Banana",
    ),
    Juice(
      name: "Banana",
      description:
      "this is a Banana, this is a banana, this is a banana, this is a banana, this is a banana",
      price: "32.60",
      madeBy: "Coca cola",
      imgUrl:
      "https://www.thespruceeats.com/thmb/kID-5wpMjg9p9z_r7HvRXMBjw7A=/3543x3543/smart/filters:no_upscale()/apple-and-banana-milkshake-2394955-hero-02-5c19078ac9e77c0001142ad6.jpg",
      category: "Banana",
    ),
    Juice(
      name: "7up",
      description:
      "this is a apple, this is a apple, this is a apple, this is a apple, this is a apple",
      price: "10.20",
      madeBy: "Made by pepsi",
      imgUrl:
      "https://media.naheed.pk/catalog/product/cache/49dcd5d85f0fa4d590e132d0368d8132/1/1/1117826-1.jpeg",
      category: "Soft Drink ",
    ),
  ];

  List<Juice> _filteredJuice = [];

//  UnmodifiableListView<Juice> get juices => _filterKeyword.isEmpty ?
//  UnmodifiableListView(_juicelist) : UnmodifiableListView(
//    _juicelist.where((e) => (e.category.toLowerCase().contains(_filterKeyword.toLowerCase()))).toList()
//  );

  UnmodifiableListView<Juice> get juices => _filteredJuice.isEmpty ?
  UnmodifiableListView(_juicelist) : UnmodifiableListView(_filteredJuice);

  searchByName(String keyword){
    print("SEARCH by Name: ${keyword}");
    _filteredJuice = _juicelist.where((e) => (e.name.toLowerCase().contains(keyword.toLowerCase()))).toList();
    notifyListeners();
  }

  searchByKeyword(String keyword){
    print("SEARCH by Name: ${keyword}");
    _filteredJuice = _juicelist.where((e) => (e.category.toLowerCase().contains(keyword.toLowerCase()))).toList();
    notifyListeners();
  }


//  UnmodifiableListView<Juice> get juice {
//    if(_filterKeyword.isEmpty) {
//      UnmodifiableListView(_juicelist);
//    } else {
//      UnmodifiableListView(
//          _juicelist.where((e) => (e.category.toLowerCase().contains(_filterKeyword.toLowerCase()))).toList()
//      );
//    }
//    if(_searchKeyword.isEmpty){
//      UnmodifiableListView(_juicelist);
//    }
//    else{
//      UnmodifiableListView(
//          _juicelist.where((e) => (e.name.toLowerCase().contains(_searchKeyword.toLowerCase()))).toList()
//      );
//    }
//  }


//  filterItems(String keyword){
//    filteredJuice = _juicelist.where((e) => (e.category.toLowerCase().contains(keyword.toLowerCase()))).toList();
//    notifyListeners();
//  }

  void changeFilterKeyword(newKeyword){
    _filterKeyword = newKeyword;
    print(_filterKeyword);
    notifyListeners();
  }


//  void changeSearchKeyword(newKeyword){
//    _searchKeyword = newKeyword;
//    print(_searchKeyword);
//    notifyListeners();
//  }



  incrementCounter(index) {
    //print(index.toString());
    _juicelist[index].itemCount++;
    notifyListeners();
  }

  decrementCounter(index) {
    if (_juicelist[index].itemCount > 0) {
      _juicelist[index].itemCount--;
      notifyListeners();
    }
  }
}
