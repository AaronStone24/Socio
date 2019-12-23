import './models/category.dart';
import './models/product.dart';
import './models/shop.dart';
import './models/order.dart';

List<Category> dummy_categories=[
  Category(
    id: 'c1',
    title: 'Groceries',
    imageUrl:'https://www.midwestcommunity.org/wp-content/uploads/2018/02/Groceries-ThinkstockPhotos-836782690.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Confectioneries',
    imageUrl: 'https://images.unsplash.com/photo-1477763858572-cda7deaa9bc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80',
  ),
  Category(
    id: 'c3',
    title: 'Stationaries',
    imageUrl:   'https://images.unsplash.com/photo-1456735190827-d1262f71b8a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=748&q=80',
  ),
  Category(
    id: 'c4',
    title: 'General Stores',
    imageUrl: 'https://visitindiana.com/blog/wp-content/uploads/2018/03/IMG_1184.jpg'
  ),
  Category(
    id: 'c5',
    title: 'Restaurants',
    imageUrl: 'https://images.pexels.com/photos/1395967/pexels-photo-1395967.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ),
  Category(
    id: 'c6',
    title: 'Miscellaneous',
    imageUrl:'https://images.pexels.com/photos/62689/pexels-photo-62689.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ),
];
List<Shop> dummy_shops=[
  Shop(
    id: 's1',
    title: 'Amar Bakeries',
    rating: 4.5,
    categories: ['c2'],
  ),
   Shop(
    id: 's2',
    title: 'Alpha Confectionery',
    rating: 4.2,
    categories: ['c2'],
   ),
    Shop(
    id: 's3',
    title: 'Akbar Groceries',
    rating: 4.0,
    categories: ['c1'],
  ),
   Shop(
    id: 's4',
    title: 'Lovely Sweets',
    rating: 4.8,
    categories: ['c2'],
  ),
   Shop(
    id: 's5',
    title: 'Jain Stationary',
    rating: 4.1,
    categories: ['c3'],
  ),
   Shop(
    id: 's6',
    title: 'All Purpose General Store',
    rating: 3.9,
    categories: ['c4'],
  ),
   Shop(
    id: 's7',
    title: 'Hari Sweets',
    rating: 4.9,
    categories: ['c2'],
  ),
   Shop(
    id: 's8',
    title: 'Sanjay Garments',
    rating: 3.8,
    categories: ['c6'],
  ),
  Shop(
    id: 's9',
    title: 'Kill the bill',
    rating: 4.2,
    categories: ['c5'],
  ),
  Shop(
    id: 's10',
    title: 'Fat Belly',
    rating: 4.0,
    categories: ['c5'],
  ),
];
List<Product> dummy_products=[
  Product(
    id:'p1',
    title: 'Cute Unicorn Ball Pen',
    imageUrl: 'https://p.globalsources.com/IMAGES/PDT/B1170877014/Cute-Colors-Promotional-Pen.jpg',
    price: 40,
    quantity: '1 unit',
    shopCategories: ['s5'],
    description: 'Loved by kids'
  ),
    Product(
    id:'p2',
    title: 'Spaghetti with Tomato Sauce',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    price: 150,
    quantity: '/plate',
    shopCategories: ['s9','s10'],
    description: 'Enjoy the uniqueness'
  ),
    Product(
    id:'p3',
    title: 'Toast Hawaii',
    imageUrl: 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    price: 120,
    quantity: '2 unit',
    shopCategories: ['s9'],
    description: ''
  ),
    Product(
    id:'p4',
    title: 'Delicious Orange Mousse',
    imageUrl: 'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    price: 100,
    quantity: '/plate',
    shopCategories: ['s1','s2'],
    description: ''
  ),
    Product(
    id:'p5',
    title: 'Pancakes',
    imageUrl: 'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    price: 70,
    quantity: '2 unit',
    shopCategories: ['s1','s2'],
    description: ''
  ),
    Product(
    id:'p6',
    title: 'Creamy Indian Chicken Curry',
    imageUrl: 'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    price: 180,
    quantity: 'Full',
    shopCategories: ['s9','s10'],
    description: ''
  ),
    Product(
    id:'p7',
    title: 'Salad with Smoked Salmon',
    imageUrl: 'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    price: 100,
    quantity: '/plate',
    shopCategories: ['s9'],
    description: ''
  ),
    Product(
    id:'p8',
    title: 'Chocolate Souffle',
    imageUrl: 'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    price: 60,
    quantity: '/plate',
    shopCategories: ['s1','s2'],
    description: ''
  ),
    Product(
    id:'p9',
    title: 'Asparagus Salad with Cherry Tomatoes',
    imageUrl: 'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    price: 80,
    quantity: '/plate',
    shopCategories: ['s10'],
    description: ''
  ),
];
List<Order> newOrders=[];
Map<int,List<Order>> previousOrder={};