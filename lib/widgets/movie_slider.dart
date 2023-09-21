import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //veer que es MEDIAQUERY
    return Container(
      width: double.infinity, //sacar ancho de pantalla
      height: size.height * 0.30,
      color: Colors.red,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Populares',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ), //espaciado a los lados de 20 pixeles
        ),
        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal, //pobnemos list view en horizontal
          itemCount: 20,
          itemBuilder: (_, int index) => _MoviePoster(), //VER QUE HACE ESTO
        )), //colunna tome el ancho del widget ques e pasará
      ]),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: AssetImage('assets/no-image.jpg'),
              width: 130,
              height: 165,
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          'Amen',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
