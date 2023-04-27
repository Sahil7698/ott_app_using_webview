import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_app/view/screens/view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff3D3635),
        title: Text(
          "OTT APP",
          style: GoogleFonts.ubuntu(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Most Popular App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ViewPage(
                          link: "https://www.youtube.com/@hotstarOfficial",
                        ),
                      ),
                    );
                  },
                  child: scroll(
                    image: "assets/images/hotstar.webp",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ViewPage(
                          link: "https://www.youtube.com/@Netflix/videos",
                        ),
                      ),
                    );
                  },
                  child: scroll(
                    image: "assets/images/netflix.png",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ViewPage(
                          link: "https://www.youtube.com/@ZEE5",
                        ),
                      ),
                    );
                  },
                  child: scroll(
                    image: "assets/images/zee5.png",
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Recent View",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                popular(
                  image:
                      "https://assets.mubicdn.net/images/notebook/post_images/19893/images-w1400.jpg?1449196747",
                ),
                popular(
                  image:
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-movie-poster-template-design-0f5fff6262fdefb855e3a9a3f0fdd361_screen.jpg?ts=1636996054",
                ),
                popular(
                  image:
                      "https://images.indianexpress.com/2021/01/master.jpg?w=350",
                ),
                popular(
                  image:
                      "https://images.fandango.com/ImageRenderer/820/0/redesign/static/img/default_poster.png/0/images/masterrepository/fandango/223733/childrenofthecorn_new_1080x1600.jpg",
                ),
                popular(
                  image:
                      "https://i0.wp.com/batman-news.com/wp-content/uploads/2023/02/The-Flash-2023-Teaser-Poster-01.jpg?fit=2764%2C4096&quality=80&strip=info&ssl=1",
                ),
                popular(
                  image:
                      "https://moviegalleri.net/wp-content/gallery/ny-2023/Custody-Movie-Happy-New-Year-2023-Wishes-Poster.jpg",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "New Release",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                newrelease(
                  image:
                      "https://www.filmibeat.com/ph-big/2022/11/hanuman-2023_166902346010.jpg",
                ),
                newrelease(
                  image: "https://pbs.twimg.com/media/FrMIX3vWIAQC8JB.jpg",
                ),
                newrelease(
                  image:
                      "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/bholaa-et00355290-1680103514.jpg",
                ),
                newrelease(
                  image:
                      "https://www.filmibeat.com/ph-big/2022/11/japan-2023_166842723640.jpg",
                ),
                newrelease(
                  image:
                      "https://images.news18.com/ibnlive/uploads/2023/01/most-awaited-films-of-2023-6.jpg",
                ),
                newrelease(
                  image:
                      "https://moviegalleri.net/wp-content/gallery/ny-2023/Custody-Movie-Happy-New-Year-2023-Wishes-Poster.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff3D3635),
    );
  }

  Widget scroll({required String image}) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget popular({required String image}) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget newrelease({required String image}) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
