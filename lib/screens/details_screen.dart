import 'package:flutter/material.dart';
import 'package:meditor/constants.dart';
import 'package:meditor/widgets/search_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    "Meditation",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "3-10 MIN Course",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    ),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: SearchBar(),
                  ),
                  Wrap(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 17),
                              blurRadius: 23,
                              spreadRadius: -13,
                              color: kShadowColor,
                            )
                          ]
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 42,
                              width: 43,
                              decoration: BoxDecoration(
                                color: kBlueColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
