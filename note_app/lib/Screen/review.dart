import 'package:flutter/material.dart';
import 'package:note_app/Custom/custom_widget.dart';

class ReView extends StatelessWidget {
  const ReView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_border,
                  color: Colors.amber,
                  size: 26,
                ),
                SizedBox(
                  width: 5,
                ),
                TextEdit(
                    text: '4.5/5',
                    size: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
                SizedBox(
                  width: 5,
                ),
                TextEdit(
                    text: '(1233+ reviews)',
                    size: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ],
            ),
            Row(
              children: [
                TextEdit(
                    text: 'View All',
                    size: 16,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500)
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Star(
              name: 'All',
              bgcolor: true,
              border: false,
              text: true,
            ),
            SizedBox(
              width: 5,
            ),
            Star(
              name: '4',
              bgcolor: false,
              border: true,
              text: false,
            ),
            SizedBox(
              width: 5,
            ),
            Star(
              name: '3',
              bgcolor: false,
              border: true,
              text: false,
            ),
            SizedBox(
              width: 5,
            ),
            Star(
              name: '2',
              bgcolor: false,
              border: true,
              text: false,
            ),
            SizedBox(
              width: 5,
            ),
            Star(
              name: '1',
              bgcolor: false,
              border: true,
              text: false,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ReviewCard(
          imageitem: 'assets/images/OIP.jpg',
          tille: 'Oline Nakh',
          sub: '28 Days ago',
        ),
        SizedBox(
          height: 10,
        ),
        ReviewCard(
          imageitem: 'assets/images/download.jpg',
          tille: 'smith warner',
          sub: '12 Days ago',
        ),
        SizedBox(
          height: 10,
        ),
        ReviewCard(
          imageitem: 'assets/images/R.jpg',
          tille: 'Jim Nakh',
          sub: '15 Days ago',
        ),
      ],
    );
  }
}
