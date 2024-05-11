import 'package:flutter/material.dart';
import 'package:note_app/Custom/custom_widget.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(5),
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pro.jpg'),
          ),
          title: const TextEdit(
              text: 'Dinal Hook',
              size: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold),
          subtitle: const TextEdit(
              text: 'Ui/Ux Designer',
              size: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500),
          trailing: Container(
            height: 30,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.blue[100],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            child: const Center(
              child: TextEdit(
                  text: 'Follow',
                  size: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TextEdit(
            text: 'Description',
            size: 22,
            color: Colors.black,
            fontWeight: FontWeight.w800),
        const TextEdit(
            text:
                'a spoken or written  event:\na spoken or written account of a person,\na spoken or written account of a person......',
            size: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600),
        const TextEdit(
            text: 'Benefits',
            size: 22,
            color: Colors.black,
            fontWeight: FontWeight.w800),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.video_camera_back,
              color: Colors.purple[400],
            ),
            const SizedBox(
              width: 5,
            ),
            const TextEdit(
                text: '14 hourse on-demand video',
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.blur_circular_outlined,
              color: Colors.purple[400],
            ),
            const SizedBox(
              width: 5,
            ),
            const TextEdit(
                text: 'Native Teacher',
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.edit_document,
              color: Colors.purple[400],
            ),
            const SizedBox(
              width: 5,
            ),
            const TextEdit(
                text: '100%  free document',
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.av_timer_outlined,
              color: Colors.purple[400],
            ),
            const SizedBox(
              width: 5,
            ),
            const TextEdit(
                text: 'Life time acces',
                size: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500)
          ],
        ),
      ],
    );
  }
}
