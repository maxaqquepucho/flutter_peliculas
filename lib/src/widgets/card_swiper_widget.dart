import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  // const CardSwiper({Key key}) : super(key: key);

  final List<dynamic> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {
    String urlImage =
        'https://www.gettyimages.es/gi-resources/images/500px/983794168.jpg';
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.8,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              urlImage,
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: peliculas.length,
        // pagination: SwiperPagination(),
        // control: SwiperControl(),
      ),
    );
  }
}
