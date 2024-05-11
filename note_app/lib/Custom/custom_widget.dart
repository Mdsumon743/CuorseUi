import 'package:flutter/material.dart';

class TextEdit extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;
  const TextEdit(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
    );
  }
}

class Star extends StatelessWidget {
  final String name;
  final bool bgcolor;
  final bool border;
  final bool text;
  const Star(
      {super.key,
      required this.name,
      required this.bgcolor,
      required this.border,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          color: bgcolor == true ? Colors.purple : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: border == false ? Colors.white : Colors.purple,
            width: 1,
          )),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            text == true
                ? const Icon(
                    Icons.star_outline,
                    color: Colors.white,
                    size: 20,
                  )
                : const Icon(
                    Icons.star_outline,
                    color: Colors.purple,
                    size: 20,
                  ),
            text == true
                ? const SizedBox(
                    width: 3,
                  )
                : const SizedBox(),
            TextEdit(
                text: name,
                size: 14,
                color: text == true ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String imageitem;
  final String tille;
  final String sub;
  const ReviewCard(
      {super.key,
      required this.imageitem,
      required this.tille,
      required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration:
          BoxDecoration(color: Colors.white.withOpacity(0.95), boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0.5,
            blurStyle: BlurStyle.outer,
            blurRadius: 0.2),
      ]),
      child: Column(
        children: [
          ListTile(
              contentPadding: const EdgeInsets.all(5),
              leading: CircleAvatar(
                backgroundImage: AssetImage(imageitem),
              ),
              title: TextEdit(
                  text: tille,
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              subtitle: TextEdit(
                  text: sub,
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              trailing: Container(
                height: 20,
                width: 100,
                decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.95)),
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15,
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          const TextEdit(
              text:
                  'Get the best course of this ui and ux\ni thinking is the good ',
              size: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500)
        ],
      ),
    );
  }
}
