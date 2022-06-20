import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isBlack = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isBlack ? Colors.black : Colors.white,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[800],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey[800],
            ),
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          // #stories #seearchive
          Container(
            color: isBlack ? Colors.black : Colors.white,
            margin: const EdgeInsets.only(top: 0),
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/img_1.png"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What`s on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Live"),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Photo"),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Check in"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            color: isBlack ? Colors.black : Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImage: 'assets/images/img_2.png',
                    userImage: 'assets/images/img_3.png',
                    userName: 'User Five'),
                makeStory(
                    storyImage: 'assets/images/img_4.png',
                    userImage: 'assets/images/img_5.png',
                    userName: 'User Four'),
                makeStory(
                    storyImage: 'assets/images/img_6.png',
                    userImage: 'assets/images/img_7.png',
                    userName: 'User Three'),
                makeStory(
                    storyImage: 'assets/images/img_8.png',
                    userImage: 'assets/images/img_9.png',
                    userName: 'User Two'),
                makeStory(
                    storyImage: 'assets/images/img_10.png',
                    userImage: 'assets/images/user_11.jpeg',
                    userName: 'User One'),
              ],
            ),
          ),
          // #feeds
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/img_1.png',
            feedTime: '1 hr ago',
            feedText:
                'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage: 'assets/images/img_9.png',
            feedImage1: 'assets/images/img_8.png',
          ),
          makeFeed(
              userName: 'User Three',
              userImage: 'assets/images/img_5.png',
              feedTime: '1 hr ago',
              feedText:
                  'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage1: 'assets/images/img_6.png',
              feedImage: 'assets/images/img_6.png'),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed(
      {userName, userImage, feedTime, feedText, feedImage, feedImage1}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: isBlack ? Colors.black : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              userName,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 1.5,
                      letterSpacing: .7),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 240,
            decoration: BoxDecoration(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage(feedImage1),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: const Offset(-5, 0), child: makeLove()),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5K",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )
                  ],
                ),
                Text(
                  "400 Comments",
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
