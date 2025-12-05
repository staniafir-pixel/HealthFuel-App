import 'package:flutter/material.dart';
import 'package:bittaqwa_app/utils/color_constant.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailOlahragaScreen extends StatefulWidget {
  final String url;
  final String account;
  final String youtuber;
  final String title;
  final String description;

  const DetailOlahragaScreen({
    super.key,
    required this.url,
    required this.account,
    required this.youtuber,
    required this.title,
    required this.description,
  });

  @override
  State<DetailOlahragaScreen> createState() => _DetailVideoKajianState();
}

class _DetailVideoKajianState extends State<DetailOlahragaScreen> {
  //controller utk menghandle / control video seperti play, pause, stop
  late YoutubePlayerController _controller;

  //initState berfungsi ketika screen detail video kajian di buka maka controller di jalankan
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.url)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  //dispose utk meminimalisir terjadinya memory leeks/kelebiham RAM
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorAccent,
        title: Text(
          "Detail Video Olahraga",
          style: TextStyle(
              color: ColorConstant.colorWhite, fontFamily: "MontserratMedium"),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              onReady: () {
                _controller.addListener(() {
                  setState(() {});
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.account,
                style: const TextStyle(
                    fontFamily: 'MontserratRegular', color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.youtuber,
                style: const TextStyle(
                    fontFamily: 'MontserratMedium',
                    color: Colors.black,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontFamily: 'MontserratSemiBold',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontFamily: 'MontserratRegular', color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
