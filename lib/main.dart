import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Daniel Villar",
            style: TextStyle(color: Color(0xffb94183), fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffffd4e3),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Daniel Villar 1330",
                style: TextStyle(fontSize: 30, color: Color(0xff060b52)),
              ),
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(icon: Icons.star, subtitle: 'Favorito'),
                  IconWithSubtitle(icon: Icons.favorite, subtitle: 'Me gusta'),
                  IconWithSubtitle(icon: Icons.camera, subtitle: 'camara'),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(icon: Icons.thumb_up, subtitle: 'Like'),
                  IconWithSubtitle(icon: Icons.thumb_down, subtitle: 'Dislike'),
                  IconWithSubtitle(icon: Icons.phone, subtitle: 'phone'),
                ],
              ),
              //tercera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(icon: Icons.abc, subtitle: 'abc'),
                  IconWithSubtitle(icon: Icons.access_alarm, subtitle: 'alarm'),
                  IconWithSubtitle(
                      icon: Icons.access_time_outlined, subtitle: 'time'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
} //clase mis iconos

// Widget personalizado para un icono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;

  const IconWithSubtitle({
    Key? key,
    required this.icon,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50.0, color: Colors.blue),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(subtitle, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
