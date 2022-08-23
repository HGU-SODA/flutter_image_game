import 'package:flutter/material.dart';
import 'package:flutter_image_game/Theme/font.dart';
import 'package:flutter_image_game/Pages/GameSetPage.dart';

class CardCategoryLevel extends StatefulWidget {
  const CardCategoryLevel({Key? key, required this.cardCategory})
      : super(key: key);

  final String cardCategory;

  State<CardCategoryLevel> createState() =>
      _CardCategoryLevelState(cardCategory: this.cardCategory);
}

class _CardCategoryLevelState extends State<CardCategoryLevel> {
  _CardCategoryLevelState({Key? key, required this.cardCategory});

  late String cardCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B2B31),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/images/만약!.png'),
                ],
              ),
              Text(
                '조선시대에 태어났다면?',
                style: cafe24w700White(28, 42),
              ),
              SizedBox(
                height: 70,
              ),
              CardCategoryButton(
                cardCategory: this.cardCategory,
                buttonIndex: '1',
              ),
              SizedBox(
                height: 30,
              ),
              CardCategoryButton(
                cardCategory: this.cardCategory,
                buttonIndex: '2',
              ),
              SizedBox(
                height: 30,
              ),
              CardCategoryButton(
                cardCategory: this.cardCategory,
                buttonIndex: '3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardCategoryButton extends StatelessWidget {
  CardCategoryButton(
      {Key? key, required this.cardCategory, required this.buttonIndex})
      : super(key: key);

  final String cardCategory;
  final String buttonIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            width: 240,
            height: 95,
            child: Stack(
              children: [
                Ink.image(
                    image: AssetImage('assets/images/cardCategoryLevel.png'),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GameSetPage(
                                    cardCategory: cardCategory,
                                  )),
                        );
                      },
                    ),
                    fit: BoxFit.fill),
                Center(
                  child: Text(
                    '$cardCategory $buttonIndex',
                    textAlign: TextAlign.center,
                    style: cafe24w700White(24, 36),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}