import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_json/model/photo.dart';

class BeautifulDesign extends StatelessWidget {
  const BeautifulDesign({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.title ?? ''),
      ),
      body: Stack(
        children: [
          Image.network(
            photo.url ?? '',
            fit: BoxFit.fill,
            alignment: Alignment.center,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                photo.title ?? '',
                textAlign: TextAlign.center,
                style: GoogleFonts.adamina(
                  textStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 30,
                    letterSpacing: .5,
                    backgroundColor: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
