import 'package:flutter/material.dart';

void main() => runApp(AppDino());

class AppDino extends StatelessWidget {
  const AppDino({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Juguetes()
    );
  }
}// fin clase  AppDino

class Juguetes extends StatelessWidget {
  const Juguetes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text(
    'Spidey-saurus by Carrasco',
    style: TextStyle(color: Colors.white),
  ),
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 187, 31, 20),
  leading: IconButton(
    icon: const Icon(Icons.camera_alt, color: Colors.white),
    onPressed: () {
      // Acción de la cámara
    },
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.favorite, color: Colors.yellow),
      onPressed: () {
        // Acción del corazón
      },
    ),
    IconButton(
      icon: const Icon(Icons.edit, color: Colors.yellow),
      onPressed: () {
        // Acción del lápiz
      },
    ),
  ],
),
  body : const ListaTarjetas(),
    ) ;
  }
}// fin clase juguetes
class ListaTarjetas extends StatelessWidget {
  const ListaTarjetas({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo para las tarjetas
    final List<Map<String, String>> items = [
      {
        'titulo': 'Velociraptor',
        'subtitulo': 'mattel',
        'img': 'https://raw.githubusercontent.com/Gael-Carrasco-0459/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/atro.jpg'
      },
      {
        'titulo': 'T rex',
        'subtitulo': 'mattel',
        'img': 'https://raw.githubusercontent.com/Gael-Carrasco-0459/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/rex.jpg'
      },
      {
        'titulo': 'indoraptor',
        'subtitulo': 'mattel',
        'img': 'https://raw.githubusercontent.com/Gael-Carrasco-0459/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/indor.jpg'
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.red, // Fondo rojo solicitado
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(items[index]['img']!),
            ),
            title: Text(
              items[index]['titulo']!,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              items[index]['subtitulo']!,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(
              Icons.thumb_up,
              color: Colors.yellow, // Icono amarillo
            ),
          ),
        );
      },
    );
  }
}
