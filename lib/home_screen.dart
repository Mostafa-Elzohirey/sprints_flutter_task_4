import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sprints_flutter_task_4/sign_in_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final String image1Source =
      "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image2Source =
      "https://images.unsplash.com/photo-1481349518771-20055b2a7b24?q=80&w=1878&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image3Source =
      "https://images.unsplash.com/photo-1493723843671-1d655e66ac1c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image4Source =
      "https://images.unsplash.com/photo-1487700160041-babef9c3cb55?q=80&w=2052&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image5Source =
      "https://images.unsplash.com/photo-1523049673857-eb18f1d7b578?q=80&w=1975&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image6Source =
      "https://images.unsplash.com/photo-1496449903678-68ddcb189a24?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final String image7Source =
      "https://images.unsplash.com/photo-1504805572947-34fad45aed93?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
  final List<String> listItems = [
    "https://img.freepik.com/free-photo/65-percent-with-hot-fire_35913-3935.jpg?t=st=1735390316~exp=1735393916~hmac=e872c023845a989da25537db233395d773331ddc88d76a84a839dff38d6314a2&w=740",
    "https://img.freepik.com/free-photo/paper-colorful-labels-conversation-clouds_23-2147930893.jpg?t=st=1735390337~exp=1735393937~hmac=b8f6e895384396345418ac975af7fdd09c852b83c2388478615814615dd9d854&w=740",
    "https://img.freepik.com/free-photo/discount-sale-wax-seal_1048-16733.jpg?t=st=1735390416~exp=1735394016~hmac=d9b6ed1bacbae240b5870aed1a9ae29ce48fa5fd3dfa1d540672f7c7d5d475a2&w=740",
    "https://img.freepik.com/free-photo/3d-realistic-background-podium-display_125755-856.jpg?t=st=1735390494~exp=1735394094~hmac=c4a1170a4580334832f22fd13ab92a7f1657d5af97d66ab904d869d49d4364dc&w=740",
    "https://img.freepik.com/free-photo/discount-sale-wax-seal_1048-16731.jpg?t=st=1735390541~exp=1735394141~hmac=9106495786a3d7b51509bcc937530486ce8363f56bdbace6be7897b27bd0e581&w=740",
  ];

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Shopping App"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth * 0.05, right: deviceWidth * 0.05),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            TextButton(
              onPressed: () {
                logout(context);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: deviceWidth * 0.05, right: deviceWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Divider(),
                    Icon(
                      Icons.logout_sharp,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: deviceWidth * 0.05, right: deviceWidth * 0.05),
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Our Products",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: PageView(
                  children: [
                    Image.network(image1Source),
                    Image.network(image2Source),
                    Image.network(image3Source),
                    Image.network(image4Source),
                    Image.network(image5Source),
                    Image.network(image6Source),
                    Image.network(image7Source),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 600,
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  productCard(
                      name: "head Phones",
                      imageUrl: image1Source,
                      context: context),
                  productCard(
                      name: "banana", imageUrl: image2Source, context: context),
                  productCard(
                      name: "computer set",
                      imageUrl: image3Source,
                      context: context),
                  productCard(
                      name: "plant", imageUrl: image4Source, context: context),
                  productCard(
                      name: "avocado",
                      imageUrl: image5Source,
                      context: context),
                  productCard(
                      name: "sign 1", imageUrl: image6Source, context: context),
                  productCard(
                      name: "sign 2", imageUrl: image7Source, context: context),
                  productCard(
                      name: "banana", imageUrl: image1Source, context: context),
                ],
              ),
            ),
            Text(
              "Hot Offers",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return hotOffersCard(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget hotOffersCard({required int index}) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: 70,
      width: 150,
      child: Card(
        elevation: 1,
        child: Column(
          children: [
            Expanded(
              child: Image.network(listItems[index]),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: Text(
                "offer ${index + 1}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget productCard(
      {required String name, required String imageUrl, required context}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        height: 100,
        width: double.infinity,
        child: Card(
          elevation: 0,
          child: Column(
            children: [
              Expanded(
                child: Image.network(
                  imageUrl,
                ),
              ),
              Text(name),
              IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text("Item added to cart"),
                    ));
                  },
                  icon: Icon(Icons.add_shopping_cart))
            ],
          ),
        ),
      ),
    );
  }

  void logout(context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.fade,
        duration: 1.seconds,
        child: SignInPage(),
      ),
    );
  }
}
