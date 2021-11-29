import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

List<String> quotes = [
  "Wow. I would definitely say it's gonna die you know?",
  "Fashion and music are two great artistic forms that can be molded by the youth culture - our taste and our passion for evolving things in our limited time on earth allows us to look at things with fresh eyes.",
];

class InspirationPage extends StatefulWidget {
  const InspirationPage({Key? key}) : super(key: key);

  @override
  _InspirationPageState createState() => _InspirationPageState();
}

class _InspirationPageState extends State<InspirationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.55),
                colorBlendMode: BlendMode.darken,
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/3/31/Virgil_Abloh_Paris_Fashion_Week_Autumn_Winter_2019_%28cropped%29.jpg",
              )),

          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\"STREETWEAR IN THE 2020S?\""),
                SizedBox(height: 24,),
                Center(
                    child: Text(
                  quotes[0].toUpperCase(),
                  style: TextStyle(
                    fontSize: 24
                  ),
                )),
              ],
            ),
            left: 24,
            right: 24,
            bottom: 0,
            top: 0,
          ),
          const Positioned(
            child: Center(
                child: Text(
              "Virgil Abloh",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            bottom: 24,
            left: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
