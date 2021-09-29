import 'package:flutter/material.dart';

class BoxFavoriteShop extends StatefulWidget {
  const BoxFavoriteShop({Key? key}) : super(key: key);

  @override
  _BoxFavoriteShopState createState() => _BoxFavoriteShopState();
}

class _BoxFavoriteShopState extends State<BoxFavoriteShop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         margin: EdgeInsets.all(20),
         height: 200,
         width: 380,
         decoration: BoxDecoration(
            image:  DecorationImage(
              image: NetworkImage("https://retail-loyalty.org/upload/iblock/b1c/Pyaterochka.jpg"),
              fit: BoxFit.cover
            ),
           borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    ),
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          width: 380,
          decoration: BoxDecoration(
              image:  DecorationImage(
                  image: NetworkImage("https://filearchive.cnews.ru/img/news/2020/05/05/dixi601.jpg"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),

          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          width: 380,
          decoration: BoxDecoration(
            image:  DecorationImage(
                image: NetworkImage("https://filearchive.cnews.ru/img/news/2020/05/05/dixi601.jpg"),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),

          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          width: 380,
          decoration: BoxDecoration(
            image:  DecorationImage(
                image: NetworkImage("https://filearchive.cnews.ru/img/news/2020/05/05/dixi601.jpg"),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),

          ),
        ),
      ],
    );

  }
}
