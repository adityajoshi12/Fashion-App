import 'dart:core';

import 'dart:math';

class Product {
  int position;
  String imageUrl;
  String productName;
  String price;
  Product({this.imageUrl, this.productName, this.price, this.position});
}

final _random = new Random();

List<String> images = [
  "http://zoo.com.ph/wp-content/uploads/0717_2951.jpg",
  "https://assets.myntassets.com/dpr_2,h_240,q_50,w_180/assets/images/7578935/2018/10/23/d7b740bc-e00e-4bec-97aa-65016f8ff2e71540289479612-Harpa-Women-Dresses-2331540289479465-1.jpg",
  "https://img1.eshakti.com/clothImages/CL0064347ML.jpg?w=720",
  "https://dynamic.zacdn.com/gRuDGhV6LN1dhbFmtfhe-u0dgbA=/fit-in/346x500/filters:quality(95):fill(ffffff)/http://static.my.zalora.net/p/crystal-korea-fashion-6163-4167671-1.jpg",
  "https://dynamic.zacdn.com/_NMIPQzzDivAAHI95zwc4s4V9QQ=/fit-in/346x500/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/crystal-korea-fashion-5813-9919711-1.jpg",
  "https://photo.venus.com/im/17305905.jpg?preset=dept",
  "http://www.ivfcharotar.com/wp-content/uploads/2019/04/round-neck-printed-three-quarter-sleeve-dress-rosewe-com-usd-36-34-vintage-dresses-fashion-loveable-5.jpg",
  "https://cdn.shopify.com/s/files/1/0033/7939/6672/products/product_100883_moroccan-blue_2_400x.jpg",
  "https://www.fablestreet.com/skin/frontend/fablestreet/default/images/new-home-page-design/12.jpg",
  "https://d8evit4zy2nlo.cloudfront.net/media/wysiwyg/reviews/dark-maroon-off-shoulder-gown-crousal.jpg",
  "https://cdn.shopify.com/s/files/1/0033/7939/6672/products/100475_BARBADOS-CHERRY_1_1_76fc50c3-d058-4ac3-9779-b6003652622a_400x.jpg"
];

List<String> productName = [
  "Cardigan",
  "Madame",
  "Vargana",
  "Nayo Stripped",
  "Gown",
  "Skirt"
];

List<String> prices = ["99", "120", "45", "75", "69", "105", "35", "25", "58"];

List<Product> products = List<Product>.generate(60, (i) {
  return Product(
      position: i,
      imageUrl: images[_random.nextInt(images.length)],
      price: prices[_random.nextInt(prices.length)],
      productName: productName[_random.nextInt(productName.length)]);
});
