import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  final String iconNamePath;
  final String categoryName;
  const CategoryCard({super.key, required this.iconNamePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple[200],
        ),
        child: Row(
          children: [
            Image.asset(iconNamePath, height: 30,),
            const SizedBox(width: 10,),
            Text(categoryName, style: const TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
