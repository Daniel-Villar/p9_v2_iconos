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
              // Texto con nombre y matrícula
              Text(
                "Daniel Villar 1330",
                style: TextStyle(fontSize: 30, color: Color(0xff060b52)),
              ),
              SizedBox(height: 20), // Espacio entre el texto y los iconos

              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                    icon: Icons.star,
                    subtitle: 'Favorito',
                    iconColor: Colors.yellow,
                    textColor: Colors.amber[800]!,
                  ),
                  IconWithSubtitle(
                    icon: Icons.favorite,
                    subtitle: 'Me gusta',
                    iconColor: Colors.red,
                    textColor: Colors.pink[800]!,
                  ),
                  IconWithSubtitle(
                    icon: Icons.camera,
                    subtitle: 'Cámara',
                    iconColor: Colors.purple,
                    textColor: Colors.deepPurple[800]!,
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas

              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWithSubtitle(
                    icon: Icons.thumb_up,
                    subtitle: 'Like',
                    iconColor: Colors.green,
                    textColor: Colors.green[800]!,
                  ),
                  IconWithSubtitle(
                    icon: Icons.thumb_down,
                    subtitle: 'Dislike',
                    iconColor: Colors.grey,
                    textColor: Colors.grey[800]!,
                  ),
                  IconWithSubtitle(
                    icon: Icons.phone,
                    subtitle: 'Teléfono',
                    iconColor: Colors.blue,
                    textColor: Colors.blue[800]!,
                  ),
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
  final Color iconColor;
  final Color textColor;

  const IconWithSubtitle({
    Key? key,
    required this.icon,
    required this.subtitle,
    required this.iconColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50.0, color: iconColor),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(subtitle, style: TextStyle(fontSize: 16, color: textColor)),
      ],
    );
  }
}
