import 'package:flutter/material.dart';

class Product1 {
  final String? image;
  final String? title;
  final String? description;
  final int? price;
  final int? quantity;
  final int? id;
  final Color? color;
  const Product1({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.quantity,
    this.color,
  });
}
List<Product1> products = [
  Product1(
      id: 1,
      title: "Wood hanger",
      price: 1200,
      quantity:12 ,
      description: dummyText1,
      image: "assets/images/h1.jpg",
      color: Colors.black),
  Product1(
      id: 2,
      title: "Steel Hanger",
      price: 600,
      quantity: 6,
      description: dummyText2,
      image: "assets/images/h2.jpg",
      color: Colors.black),
  Product1(
      id: 3,
      title: "Plastic Hanger",
      price: 240,
      quantity: 6,
      description: dummyText3,
      image: "assets/images/h3.jpg",
      color: Colors.grey.shade900),
  Product1(
      id: 4,
      title: "Multipurpose Hanger",
      price: 1800,
      quantity: 12,
      description: dummyText4,
      image: "assets/images/h4.jpg",
      color: Colors.grey.shade900),
  Product1(
      id: 5,
      title: "Ceramic Body Hanger",
      price: 4200,
      quantity: 1,
      description: dummyText5,
      image: "assets/images/bh1.jpg",
      color: Colors.grey.shade800),
  Product1(
      id: 6,
      title: "Outlined Body Hanger",
      price: 3200,
      quantity: 1,
      description: dummyText6,
      image: "assets/images/bh2.jpg",
      color: Colors.grey.shade800),
  Product1(
      id: 7,
      title: "",
      price: 6980,
      quantity:1,
      description: dummyText7,
      image: "",
      color: Colors.grey.shade500),
  Product1(
      id: 8,
      title: "Single Shoe Hanger",
      price: 240,
      quantity: 12,
      description: dummyText8,
      image: "assets/images/sh1.jpg",
      color: Colors.grey.shade700),
  Product1(
      id: 9,
      title: "Steel Shoe Hanger",
      price: 480,
      quantity: 12,
      description: dummyText9,
      image: "assets/images/sh2.jpg",
      color: Colors.grey.shade700),
  Product1(
      id: 10,
      title: "Simple Shoe Hanger",
      price: 120,
      quantity: 10,
      description: dummyText10,
      image: "assets/images/sh3.jpg",
      color: Colors.grey.shade600),
  Product1(
      id: 11,
      title: "Ceramic Mannequin",
      price: 7500,
      quantity: 1,
      description: dummyText11,
      image: "assets/images/m1.jpg",
      color: Colors.grey.shade600),
  Product1(
      id: 12,
      title: "Golden Mannequin",
      price: 20000,
      quantity: 1,
      description: dummyText12,
      image: "assets/images/m2.jpg",
      color: Colors.grey.shade500),


];

String dummyText1=
    "BUTLER LUXURY UNIQUE HANGER  \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of wooden hangers, made from finest Teak wood from the land of Himalayas need for your wardrobe. ";
String dummyText2=
    "BUTLER LUXURY UNIQUE HANGER  \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of steel hangers,\n made from the finests metals in the world like VIBRANIUM & ADAMANTIUM exported directed from Wakanda under the influence of Princess shuri in the absence of king tachala for your wardrobe. ";
String dummyText3=
    "BUTLER LUXURY UNIQUE HANGER  \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of Fiber hangers, allowing you to customize your closet with just the styles you need for your wardrobe. ";
String dummyText4=
    "BUTLER LUXURY UNIQUE HANGER \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of Mutlipurpose hangers, allowing you to customize your closet with just the styles you need for your wardrobe. ";
String dummyText5=
    "IKEA CERAMIC BODY HANGER \nIf you’re ready to update your outlet, start with IKEAs body hanger. This product is specialized and made to perfection from IKEAs Ceramic labs,the product is bacterial free. ";
String dummyText6=
    "IKEA METAL BODY HANGER\nIf you’re ready to update your outlet, start with IKEAs body hanger. This product is specialized and made to perfection from IKEAs metal labs,the product is rust free. ";
String dummyText7=
    "Butler Luxury’s Unique Hangers \nIf you’re ready to update your closet, start with Butler Luxury’s unique hangers. This collection includes a variety of Fiber hangers, allowing you to customize your closet with just the styles you need for your wardrobe. ";
String dummyText8=
    "IDEAl SHOE HANGERS \nIf you’re ready to update your closet, start with Ideal hangers. This collection includes a variety of shoe hangers, made from metal & High Quality plastics need for your wardrobe.";
String dummyText9=
    "IDEAl SHOE HANGERS \nIf you’re ready to update your closet, start with Ideal hangers. This collection includes a variety of shoe hangers, made from metal & High Quality plastics need for your wardrobe. ";
String dummyText10=
    "IDEAl SHOE HANGERS\nIf you’re ready to update your closet, start with Ideal hangers. This collection includes a variety of shoe hangers, made from metal & High Quality plastics need for your wardrobe.";
String dummyText11=
    "IKEA CERAMIC MANNEQUIN \nIf you’re ready to update your outlet, start with IKEAs mannequin. This product is specialized and made to perfection from IKEAs Ceramic labs,the product is bacterial free.  ";
String dummyText12=
    "IKEA GOLDEN MANNEQUIN \nIf you’re ready to update your outlet, start with IKEAs mannequin. This product is specialized and made to perfection from IKEAs BSI GOLDEN labs,the product is toxic free. ";


