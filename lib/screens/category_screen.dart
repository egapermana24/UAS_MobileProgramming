import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'course_screen.dart';

class CategoryScreen extends StatefulWidget {
  final String catNames;
  final String imgListName;
  final String imgList;

  CategoryScreen(this.catNames, this.imgListName,
      this.imgList); // Menambahkan 'this.' pada parameter konstruktor
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isBookmarked = false;

  List imgList = [
    'Final',
    'India',
    'Kasus',
    'who',
    'Bareskrim',
    'Han',
  ];
  List imgListName = [
    'Final NBA 2023 Denver Nuggets Juara',
    'India Sukses Luncurkan Roket Menuju Bulan',
    'Kasus Pungli SMKN 1 Sale Rembang',
    'WHO, Pemanis Buatan Kemungkinan Picu Kanker',
    'Bareskrim Akan Periksa Panji Gumilang Lagi',
    'Han So-hee tampil di MV terbaru Jungkook BTS',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.catNames,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF1C1C1C),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseScreen(
                          imgListName[index],
                          imgList[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF5F3FF),
                      image: DecorationImage(
                        image: AssetImage('../images/${imgList[index]}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CourseScreen(
                          imgListName[index],
                          imgList[index],
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              imgListName[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isBookmarked = !isBookmarked;
                          });
                        },
                        child: Icon(
                          Icons.bookmark,
                          color: isBookmarked ? Colors.blue : Colors.grey,
                          size: 35,
                          semanticLabel:
                              isBookmarked ? 'Bookmarked' : 'Not Bookmarked',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black.withOpacity(0.3),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
