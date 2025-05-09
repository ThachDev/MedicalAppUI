import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/util/cardDoctor_list.dart';
import 'package:medicalappui/util/category_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Xin chào, ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
                        SizedBox(height: 8.0,),
                        Text("Thiên Thạch", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Icon(Icons.person_rounded)
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0,),
              // Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pink[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Animation
                      Container(
                        height: 150,
                        width: 150,
                        child: Lottie.network('https://lottie.host/6fc781ab-898e-4bb1-bcaf-5c94654e1bbe/GdgL2OMCgq.json'),
                      ),
                      const SizedBox(width: 20,),
                      // Text
                     Expanded(
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("Bạn cảm thấy như thế nào?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                           const SizedBox(height: 10,),
                           const Text("Điền thẻ y tế của bạn ngay bây giờ", style: TextStyle(fontSize: 16),),
                           const SizedBox(height: 12,),
                           Container(
                             padding: EdgeInsets.all(12),
                             decoration: BoxDecoration(
                               color: Colors.deepPurple[300],
                               borderRadius: BorderRadius.circular(15)
                             ),
                             child: const Center(
                               child: Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 16),),
                             ),
                           )
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              // Search
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.deepPurple[200],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Chúng tôi có thể giúp gì cho bạn?',
                      hintStyle: TextStyle(color: Colors.grey[700])
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              // Horizontal ListView
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard(iconNamePath: 'lib/icons/tooth.png', categoryName: 'Nha sĩ',),
                    CategoryCard(iconNamePath: 'lib/icons/surgeon.png', categoryName: 'Bs.Phẩu thuật',),
                    CategoryCard(iconNamePath: 'lib/icons/medicine.png', categoryName: 'Thuốc',),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              // Doctor list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Danh sách bác sĩ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Text("Xem thêm", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[700]),)
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              SizedBox(
                height: 250,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CardDoctorList (
                          pathImage: 'lib/images/doctor1.jpg',
                          reviews: '4.9',
                          nameDoctor: 'Lê Thị Mậu',
                          exp: '10',),
                        CardDoctorList (
                          pathImage: 'lib/images/doctor2.jpg',
                          reviews: '4.8',
                          nameDoctor: 'Nguyễn Kim Thanh',
                          exp: '5',),
                        CardDoctorList (
                          pathImage: 'lib/images/doctor3.jpg',
                          reviews: '4.7',
                          nameDoctor: 'Cao Văn Sơn',
                          exp: '8',)
                      ]
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
