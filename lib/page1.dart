// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/page2.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Core()),
    );
  }
}

class Core extends StatelessWidget {
  Core({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(), //logo ve bildirimler
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                PostArea(),
                //post alanı ve hikaye alanı
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostArea extends StatelessWidget {
  const PostArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 80,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 8),
        children: [
          StoryArea(), //hikaye alanı
          Post(),
          Post(),
        ],
      ),
    );
  }
}

class GreyLine extends StatelessWidget {
  const GreyLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.15,
      color: Colors.grey,
    );
  }
}

class Post extends StatelessWidget {
  const Post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"),
                    ),
                  ),
                  Text(
                    "github",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 23),
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Icon(Icons.more_horiz),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 9),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i0.wp.com/senyor.app/wp-content/uploads/2021/12/Seninle-Hep.png?w=700&ssl=1"),
                fit: BoxFit.fill,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.mode_comment_outlined),
                    ),
                    Icon(Icons.share_sharp),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 9),
                child: Icon(Icons.assistant_sharp),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(13, 7, 0, 5),
            child: Text(
              "1.433 Likes",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 13),
            child: Row(
              children: [
                Text(
                  "github",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 4),
                  width: 300,
                  child: Text(
                    "Stajyerlerim sayesinde şirketimiz çok büyüdü ve güzelleşti...",
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(9, 8, 12, 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                        "https://media.wired.com/photos/598e35fb99d76447c4eb1f28/16:9/w_2123,h_1194,c_limit/phonepicutres-TA.jpg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Text(
                        "Add Comment..",
                        style: TextStyle(
                            color: Color(0xff99999999),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 9),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      size: 14,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Icon(
                        Icons.face_retouching_natural_sharp,
                        size: 14,
                        color: Colors.redAccent,
                      ),
                    ),
                    Icon(
                      Icons.add,
                      size: 14,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  StoryArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 0),
          width: MediaQuery.of(context).size.width,
          height: 90,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Story(
                  "https://d1fdloi71mui9q.cloudfront.net/wfoxq5CyT7uqwJmJbSAn_098Y66P8Jj5zhYeu",
                  "senyorapp"),
              Story(
                  "https://media.macphun.com/img/uploads/customer/how-to/579/15531840725c93b5489d84e9.43781620.jpg?q=85&w=1340  ",
                  "hacettepe"),
              Story(
                  "https://mir-s3-cdn-cf.behance.net/projects/404/691a5d83484405.Y3JvcCw0MDQsMzE2LDI5MywyMTQ.jpg",
                  "senyorita"),
              Story(
                  "https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg",
                  "github"),
              Story(
                  "https://www.huggies.com.tr/-/media/images/huggies_turkey_articles/dogum/premature_bebekler/premature-bebek-bakimi.jpg",
                  "hayrunisanın.annesi"),
              Story(
                  "https://iaftm.tmgrup.com.tr/191d5d/385/218/0/40/750/465?u=https://iftm.tmgrup.com.tr/2021/10/27/instagram-hesap-silme-ve-kapatma-nasil-yapilir-1635344230710.jpeg",
                  "instagram"),
            ],
          ),
        ),
        GreyLine(), //ince gri çizgi
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(9, 0, 15, 0),
      width: MediaQuery.of(context).size.width,
      height: 36,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('asset/iglogo.png'),
          Row(
            children: [
              Icon(Icons.add_a_photo_outlined),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.favorite_outline_outlined),
              ),
              Icon(Icons.messenger_outline_sharp),
            ],
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  late String avatar;
  late String userid;

  Story(this.avatar, this.userid);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      width: 68,
      height: 94,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
            radius: 30,
          ),
          Container(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              userid,
              style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
