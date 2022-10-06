import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String catagory;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.catagory,
      required this.imgUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object> get props => [
        name,
        catagory,
        imgUrl,
        price,
        isRecommended,
        isPopular,
      ];

  static List<Product> products = [
    const Product(
        name: 'Soft Drink #1',
        catagory: 'Soft Drinks',
        imgUrl: 'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    ),const Product(
        name: 'Soft Drink #2',
        catagory: 'Soft Drinks',
        imgUrl: 'https://images.unsplash.com/photo-1581006852262-e4307cf6283a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    ),const Product(
        name: 'Soft Drink #3',
        catagory: 'Soft Drinks',
        imgUrl: 'https://images.unsplash.com/photo-1579630942078-100a2f8e9052?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    ),const Product(
        name: 'Soft Drink #4',
        catagory: 'Soft Drinks',
        imgUrl: 'https://images.unsplash.com/photo-1597906336500-757b42d34427?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    ),const Product(
        name: 'Smoothies #1',
        catagory: 'Smoothies',
        imgUrl: 'https://images.unsplash.com/photo-1505252585461-04db1eb84625?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    ),const Product(
        name: 'Smoothies #2',
        catagory: 'Smoothies',
        imgUrl: 'https://images.unsplash.com/photo-1536304447766-da0ed4ce1b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        price: 2.99,
        isRecommended: true,
        isPopular: true
    )
  ];
}
