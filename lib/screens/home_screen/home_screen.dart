import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffd9dad9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                  'https://www.seekpng.com/png/full/112-1122908_spinach-png-hd-palak-keerai.png'),
            ),
            Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fresh Basil",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "50\$/50 Gram",
                          style: TextStyle(color: Colors.grey),
                        ),

                        Row(
                          children: [
                            Expanded(
                                child: Container(
                                  padding:EdgeInsets.only(left: 3),
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(child: Text("50 gram",style: TextStyle(color: Colors.black,fontSize: 10),)),
                                      Icon(Icons.arrow_drop_down,color: Color(0xffd0b84c),)
                                    ],
                                  ),
                                )),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.remove,size: 15,color: Color(0xffd0b84c),),
                                      Text("1",style: TextStyle(color: Color(0xffd0b84c),fontWeight: FontWeight.bold),),
                                      Icon(Icons.add,size: 15,color: Color(0xffd0b84c),),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://img.freepik.com/premium-photo/black-food-cooking-background-stone-texture-with-sea-salt-pepper-garlic-parsley-abstract-food-background-empty-space-text-can-be-used-food-posters-design-menu-top-view_253362-15861.jpg"),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 130, bottom: 10),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffd1ad17),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    )),
                                child: Center(
                                  child: Text(
                                    "Vegi",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                            blurRadius: 10,
                                            offset: Offset(3, 3),
                                            color: Colors.green,
                                          )
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "30% Off",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "On all Vegetables products",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herbs seasoning",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),singleProducts(),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(
                    "view all",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),singleProducts(),




                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
