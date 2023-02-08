import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../details/details_screen.dart';

class RecomandedPlant extends StatelessWidget {
  const RecomandedPlant({
    Key? key,
    required this.size,
    required this.name,
    required this.country,
    required this.image,
    required this.price,
    required this.description,
    required this.stars,
    //required this.onTap,
  }) : super(key: key);

  final Size size;
  //final Function onTap;
  final String name, country, image, description;
  final int price, stars;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
      width: size.width * 0.4,
      height: size.height * 0.3,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                  image: image,
                  name: name,
                  price: price,
                  country: country,
                  stars: stars,
                  description: description),
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox.fromSize(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: size.height * 0.2,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "$name\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                  TextSpan(
                    text: country,
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                ])),
                const Spacer(),
                Text(
                  "\$$price",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: kPrimaryColor),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomandedPlant(
              size: size,
              name: "Samantha",
              country: "Russia",
              image: "assets/images/image_1.png",
              stars: 5,
              description:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.",
              price: 440),
          RecomandedPlant(
              size: size,
              name: "Angelica",
              country: "Moldavia",
              image: "assets/images/image_2.png",
              stars: 4,
              description:
                  "Ipsim lorem dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
              price: 290),
          RecomandedPlant(
              size: size,
              name: "Marina",
              country: "Brasil",
              image: "assets/images/image_3.png",
              stars: 4,
              description:
                  "This is a description of the plant. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
              price: 400),
          RecomandedPlant(
            size: size,
            name: "Monica",
            country: "Portugal",
            image: "assets/images/image_4.jpg",
            stars: 4,
            description:
                "In Portugal, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.",
            price: 370,
          )
        ],
      ),
    );
  }
}
