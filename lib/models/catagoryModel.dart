import 'package:equatable/equatable.dart';

class Catagory extends Equatable {
  final String name;
  final String imageUrl;

  Catagory({required this.name, required this.imageUrl});

  static List<Catagory> catagories = [
    Catagory(
        name: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1533007716222-4b465613a984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
    Catagory(
        name: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1610970881699-44a5587cabec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
    Catagory(
        name: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1618683133131-3c8907882c7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
  ];

  @override
  List<Object> get props => [name, imageUrl];

}
