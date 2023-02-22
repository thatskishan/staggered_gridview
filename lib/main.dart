import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:staggered_gridview/slider_image.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      'slider1': (context) => const SliderScreen(
            imageList: [
              "Assets/Ellora caves/1.jpg",
              "Assets/Ellora caves/2.jpg",
              "Assets/Ellora caves/3.jpg",
              "Assets/Ellora caves/4.jpg",
              "Assets/Ellora caves/5.jpg",
            ],
            title: 'Ellora Caves',
          ),
      'slider2': (context) => const SliderScreen(
            imageList: [
              "Assets/Kutub Minar/1.jpg",
              "Assets/Kutub Minar/2.jpg",
              "Assets/Kutub Minar/3.jpg",
              "Assets/Kutub Minar/4.jpg",
              "Assets/Kutub Minar/5.jpg",
            ],
            title: 'Kutub Minar',
          ),
      'slider3': (context) => const SliderScreen(
            imageList: [
              "Assets/The Beach Of Goa/1.jpg",
              "Assets/The Beach Of Goa/2.jpg",
              "Assets/The Beach Of Goa/3.jpg",
              "Assets/The Beach Of Goa/4.jpg",
              "Assets/The Beach Of Goa/5.jpg",
            ],
            title: 'The Beach of Goa',
          ),
      'slider4': (context) => const SliderScreen(
            imageList: [
              "Assets/Mahaboddhi Temple/1.jpg",
              "Assets/Mahaboddhi Temple/2.jpg",
              "Assets/Mahaboddhi Temple/3.jpeg",
              "Assets/Mahaboddhi Temple/4.jpeg",
              "Assets/Mahaboddhi Temple/5.jpeg",
            ],
            title: 'Mahaboddhi Temple',
          ),
      'slider5': (context) => const SliderScreen(
            imageList: [
              "Assets/India Gate/1.jpg",
              "Assets/India Gate/2.jpg",
              "Assets/India Gate/3.jpg",
              "Assets/India Gate/4.jpg",
              "Assets/India Gate/5.jpg",
            ],
            title: 'India Gate',
          ),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Staggered RecyclerView",
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('slider1');
                    },
                    child: StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.5,
                      child: myImageBox(
                        imagePath: "Assets/Ellora caves/1.jpg",
                        imageName: "Ellora Caves",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('slider2');
                    },
                    child: StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.5,
                      child: myImageBox(
                        imagePath: "Assets/Kutub Minar/1.jpg",
                        imageName: "Kutub Minar",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('slider3');
                    },
                    child: StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.7,
                      child: myImageBox(
                        imagePath: "Assets/The Beach Of Goa/2.jpg",
                        imageName: "The Beach of Goa",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('slider4');
                    },
                    child: StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 2.01,
                      child: myImageBox(
                        imagePath: "Assets/India Gate/3.jpg",
                        imageName: "Mahaboddhi Temple",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('slider5');
                    },
                    child: StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.5,
                      child: myImageBox(
                        imagePath: "Assets/India Gate/2.jpg",
                        imageName: "India Gate",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myImageBox({
    required String imagePath,
    required String imageName,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(5),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                imageName,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
