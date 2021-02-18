import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/data/data.dart';

class ContentHeader extends StatefulWidget {
  @override
  _ContentHeaderState createState() => _ContentHeaderState();
}

class _ContentHeaderState extends State<ContentHeader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          width: double.infinity,
          child: Image.asset(
            sintelContent.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black,
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          top: 300,
          child: Column(
            children: [
              Container(
                width: 300,
                child: Image.asset(sintelContent.titleImageUrl),
              ),
              Row(
                children: [
                  Icon(
                    Icons.playlist_add,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    label: Text(
                      'PLAY',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
