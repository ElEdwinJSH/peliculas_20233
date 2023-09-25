import 'package:flutter/material.dart';
import 'package:peliculas_20233/widgets/actor_slider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final String movie =
    // ModalRoute.of(context)?.settings.arguments.toString() ?? 'Sin nombre';
    return const Scaffold(
        body: CustomScrollView(
      //widget con comportamiento predefinidos al scroll
      slivers: [
        _CustomAppbar(),
        SliverList(
            delegate: SliverChildListDelegate.fixed(
                [_PosterAndTitle(), _Overview(), ActorSlider()])),
      ],
    ));
  }
}

class _CustomAppbar extends StatelessWidget {
  const _CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200, //maximo ue se puede expandir
      floating: false, //esto es la sombra
      pinned: true,
      //WIDGET PARA QUE SE AJUSTE AL TAMAÑO
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        //Eliminar padding
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 18),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/no-image.jpg'),
          image: AssetImage('assets/no-image.jpg'),
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: AssetImage('assets/no-image.jpg'),
            height: 250,
          ),
        ),
        const SizedBox(width: 20),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //centra a izquierda
            children: [
              Text(
                'movie.title',
                style: TextStyle(fontSize: 30),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.titleOriginal',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    size: 20,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'movie.voteAverage',
                    style: TextStyle(fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'arremangala y rrempujala,arremangala y rrempujala,arremangala y rrempujala,arremangala y rrempujala,arremangala y rrempujala,arremangala y rrempujala,',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
      ), //ESTO ES UN CONSTRUCTOR CON NOMBRE buscar lorem
    );
  }
}
