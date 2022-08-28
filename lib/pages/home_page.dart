import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text("facebook",
          style: TextStyle(color: Colors.blueAccent,
              fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        children: [
          // post create
          Container(
            height: 120,
            color: Colors.black,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
                            image: AssetImage("assets/images/user_5.jpeg"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.video_call, color: Colors.red,),
                            const SizedBox(width: 5,),
                            Text("live", style: TextStyle(color: Colors.grey[600]),),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey,
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.photo, color: Colors.green,),
                            const SizedBox(width: 5,),
                            Text("Photo", style: TextStyle(color: Colors.grey[600]),),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        width: 1,
                        color: Colors.grey,
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on, color: Colors.red,),
                            const SizedBox(width: 5,),
                            Text("Check in", style: TextStyle(color: Colors.grey[600]),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // post stores
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five"
                ),
                makeStory(
                    storyImage: "assets/images/story_4.jpeg",
                    userImage: "assets/images/user_4.jpeg",
                    userName: "User Four"
                ),makeStory(
                    storyImage: "assets/images/story_3.jpeg",
                    userImage: "assets/images/user_3.jpeg",
                    userName: "User Three"
                ),makeStory(
                    storyImage: "assets/images/story_2.jpeg",
                    userImage: "assets/images/user_2.jpeg",
                    userName: "User Two"
                ),makeStory(
                    storyImage: "assets/images/story_1.jpeg",
                    userImage: "assets/images/user_1.jpeg",
                    userName: "User One"
                ),
              ],
            ),
          ),

          // post feed
          makeFeed(
            userName: "User Two",
            userImage:"assets/images/user_2.jpeg",
            feedTime: "1 hr ago",
            feedText: "All the lorem Ipsum generators on the Internet tend to repeat predefined",
            feedImage: "assets/images/story_2.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  )
                )
              ),
              Text(userName, style: const TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName,userImage,feedImage,feedText,feedTime}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold, fontSize: 18),),
                            const SizedBox(height: 3,),
                            Text(feedTime, style: const TextStyle(color: Colors.grey, fontSize: 15),)
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.more_horiz, color: Colors.grey,),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                Text(feedText, style: const TextStyle(
                    color: Colors.grey, fontSize: 15,
                    height: 1.5, letterSpacing: 0.7),),
              ],
            ),
          ),
          const SizedBox(height: 15,),

          // picture
          SizedBox(
            height: 220,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(feedImage),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 240,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/story_4.jpeg"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),

          // #likes
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5,0),
                      child: makeLove(),
                    ),
                    const SizedBox(width: 5,),
                    const Text("2.5K", style: TextStyle(color: Colors.grey, fontSize: 15),),
                  ],
                ),
                Text("1000 comments", style: TextStyle(fontSize: 13, color: Colors.grey[600]),),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }

}
