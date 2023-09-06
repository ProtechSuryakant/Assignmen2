import 'package:flutter/material.dart';

class Dogs2 {
  final String image;
  final String title;
  final String desc;
  final Color color;

  Dogs2({
    required this.image,
    required this.title,
    required this.desc,
    required this.color,
  });
}

List<Dogs2> dogsData2 = [
  Dogs2(
      image: 'assets/images/list_dog/dogs_1.png',
      title: "Labrador Retriever",
      desc:
          "Friendly, outgoing, and playful breed. Known for their intelligence and loyalty. Often used as service dogs and family pets.",
      color: Colors.amber.shade300),
  Dogs2(
      image: 'assets/images/list_dog/dogs_2.png',
      title: "German Shepherd",
      desc:
          "Intelligent, versatile, and highly trainable. Frequently employed as working dogs in roles such as police, military, and search and rescue.",
      color: Colors.green.shade300),
  Dogs2(
      image: 'assets/images/list_dog/dogs_3.png',
      title: "Golden Retriever",
      desc:
          "Friendly, gentle, and intelligent breed. They are known for their patience and love for people, making them excellent family pets.",
      color: Colors.blue.shade300),
  Dogs2(
      image: 'assets/images/list_dog/dogs_4.png',
      title: "French Bulldog",
      desc:
          "Compact, affectionate, and adaptable breed. They have a distinctive appearance with large bat-like ears and a playful personality.",
      color: Colors.purple.shade300),
  Dogs2(
      image: 'assets/images/list_dog/dogs_5.png',
      title: "Poodle",
      desc:
          "Highly intelligent and versatile breed. Poodles come in different sizes (standard, miniature, and toy) and are known for their hypoallergenic coats.",
      color: Colors.brown.shade300),
  Dogs2(
      image: 'assets/images/list_dog/dogs_6.png',
      title: "Beagle",
      desc:
          "Curious, friendly, and outgoing breed. They have a keen sense of smell and are often used as scent detection dogs.",
      color: Colors.indigo.shade300),
];
