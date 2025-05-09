import 'package:flutter/material.dart';

class CardDoctorList extends StatelessWidget {
  final String pathImage;
  final String reviews;
  final String nameDoctor;
  final String exp;
  const CardDoctorList({super.key, required this.pathImage, required this.reviews, required this.nameDoctor, required this.exp});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  const EdgeInsets.only(left: 25.0),
        child: Container(
          padding:  const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(pathImage),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    reviews,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Bs. $nameDoctor',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),
              Text('Phẩu thuật $exp y.e'),
            ],
          ),
        )
    );
  }
}
