import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class GridViewPages extends StatelessWidget {
  GridViewPages({super.key});

  List images = [
    "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=2000",
    "https://media.istockphoto.com/id/1433211776/photo/woman-silhouette-in-front-of-the-ocean-at-sunset.webp?b=1&s=170667a&w=0&k=20&c=xGzw_4wTjK0uKJLS42lR7xPsD7tGRTrx-mWBl0ylih4=",
    "https://images.unsplash.com/photo-1533228876829-65c94e7b5025?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZyZWV8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://img.freepik.com/free-photo/digital-painting-mountain-with-colorful-tree-foreground_1340-25699.jpg",
    "https://www.stockvault.net/data/2019/03/06/261776/thumb16.jpg",
    "https://img.freepik.com/free-photo/dramatic-white-clouds-blue-sky-from-airplane-window-view-colorful-sunset-cloudscape-background_90220-1208.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Dashboard Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return SizedBox(
            child: _itemsWidget(index),
          );
        },
        separatorBuilder: (context, index){
          return const Divider(
            height: 10,
            thickness: 2,
            color: Colors.black,
          );
        },
        itemCount: images.length,
      ),
    );

    //guigui7tuiyguy8
  }

  _itemsWidget(int index) {
    return SizedBox(
      height: 210,
      child: Card(
            color: Colors.orangeAccent.shade100,
            child: Stack(
              children: [
                Image.network(
                  images[index],
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),

                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    color: Colors.white.withOpacity(.5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.favorite),

                        Icon(Icons.download_for_offline_outlined)
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 10,
                  right: 10,
                  child: SvgPicture.asset(
                    "assets/circle-heat-svgrepo-com.svg",
                  ),
                )

              ],
            ),
          ),
    );
  }
}
