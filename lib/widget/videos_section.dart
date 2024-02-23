import 'package:flutter/material.dart';

class VideosSection extends StatelessWidget {
   VideosSection({super.key});

  // static data for videos
  List videoList = [
    'Introduction to Dart',
    'Installment of Flutter',
    'Setup Vscode',
    'Setup Emulator',
    'Creating your first App'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder (
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index){
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? Color(0xFF025A0E):
              Color(0xFF025A0E).withOpacity(0.6),
              shape: BoxShape.rectangle,
            ),
            child: Icon(Icons.play_arrow_rounded,
              color: Colors.white,
                size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: Text("1hr 40min"),
        );
      },
    );
  }
}
