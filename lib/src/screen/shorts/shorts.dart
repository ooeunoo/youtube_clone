import 'package:clone_flutter_youtube/src/component/icon/custom_icon.dart';
import 'package:clone_flutter_youtube/src/constant/asset_path.dart';
import 'package:clone_flutter_youtube/src/model/asset/asset.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Shorts extends StatelessWidget {
  const Shorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent, // Make the app bar transparent
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  CustomIcon(AssetPath.search),
                  SizedBox(
                    width: 20,
                  ),
                  CustomIcon(AssetPath.menuVertical)
                ],
              ),
            )
          ]),
      extendBodyBehindAppBar: true, // Extend background behind the app bar
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPath.shortBackground
                  .path), // Replace 'assets/background_image.jpg' with your image asset path
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Expanded(child: Container()),
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "@youtube",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // Handle subscribe action here
                    // Example: You can show a dialog or perform any other action
                    print("Subscribe button tapped");
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white, // Example color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Subscribe",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "유뷰트 쇼츠",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "🎵 Original Sound",
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ]),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: LinearPercentIndicator(
            width: MediaQuery.of(context).size.width,
            lineHeight: 2.0,
            percent: 0.3, // Set the percentage of progress here
            backgroundColor: Colors.grey,
            progressColor: Colors.red,
          ),
        ),
      ]),
      floatingActionButton:
          Column(verticalDirection: VerticalDirection.up, children: [
        Container(
          width: 40, // Set width and height to create a square box
          height: 40,
          child: MaterialButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            minWidth: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red, // Add background color to the container
                borderRadius: BorderRadius.circular(
                    8.0), // Optional: Add border radius for rounded corners
              ),
              child: Center(
                  // child: Image.asset(
                  //   'assets/square_image.png', // Replace 'assets/square_image.png' with your image asset path
                  //   width: 24, // Set width of the image
                  //   height: 24, // Set height of the image
                  // ),
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        FloatingMenuButton(AssetPath.exchange, 'Remix', size: 30),
        SizedBox(
          height: 30,
        ),
        FloatingMenuButton(AssetPath.share, 'Share', size: 35),
        SizedBox(
          height: 30,
        ),
        FloatingMenuButton(AssetPath.comment, '1.7K', size: 30),
        SizedBox(
          height: 30,
        ),
        FloatingMenuButton(AssetPath.dislike, 'Dislike', size: 35),
        SizedBox(
          height: 30,
        ),
        FloatingMenuButton(AssetPath.like, '65K', size: 35),

        // FloatingMenuButton(),
      ]),
    );
  }
}

Widget FloatingMenuButton(Asset asset, String title, {double? size}) {
  return MaterialButton(
    onPressed: () {},
    padding: EdgeInsets.zero,
    minWidth: 0,
    child: Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        CustomIcon(asset, size: size),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12, // Adjust text size as needed
            color: Colors.grey, // Set text color to gray
          ),
        )
      ],
    ),
  );
}
