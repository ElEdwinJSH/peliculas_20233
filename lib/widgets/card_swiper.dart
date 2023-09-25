import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; //tamanionde  pantalla de dispositio
    return Container(
      width: double.infinity, //este agarra el ancho de la pantalla
      height: size.height * 0.5,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK, //foma en que se comporta el swiper al pasar
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4, //40 porciento del tamanio
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/no-image.jpg'),
              ),
            ),
          ); //saber que se hace con el tactil con el dedo
        }, //identificaar en qe elemento de tarjetas esta
      ),
    );
  }
}
