import 'package:flutter/material.dart';
import 'package:rss_feed/screens/reused/reused_page_code.dart';

String breakingTitle = 'Breaking News';
String educationTitle = 'Education';
String entertainmentTitle = 'Entertainment';
String indiaTitle = 'India';
String latestTitle = 'Latest News';
String lifestyleTitle = 'Lifestyle';
String marketTitle = 'Market';
String moviesTitle = 'Movies';
String sportsTitle = 'Sports';
String techTitle = 'Tech';
String videosTitle = 'Videos';
String webTitle = 'Web Stories';
String worldTitle = 'World';
String businessTitle = 'Business';
String cryptoCurrencyTitle = 'Crypto Currency';
String RSSTitle = 'RSS';

class BreakingNews extends StatelessWidget {
  const BreakingNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/breaking-news.xml',
      title: breakingTitle,
    ));
  }
}

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/education-career.xml',
      title: educationTitle,
    ));
  }
}

class Entertainment extends StatelessWidget {
  const Entertainment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/entertainment.xml',
      title: entertainmentTitle,
    ));
  }
}

class India extends StatelessWidget {
  const India({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/india.xml',
      title: indiaTitle,
    ));
  }
}

class LatestNews extends StatelessWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/latest.xml',
      title: latestTitle,
    ));
  }
}

class Lifestyle extends StatelessWidget {
  const Lifestyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/lifestyle.xml',
      title: lifestyleTitle,
    ));
  }
}

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/markets.xml',
      title: marketTitle,
    ));
  }
}

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/movies.xml',
      title: moviesTitle,
    ));
  }
}

class Sports extends StatelessWidget {
  const Sports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/sports.xml',
      title: sportsTitle,
    ));
  }
}

class Tech extends StatelessWidget {
  const Tech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/tech.xml',
      title: techTitle,
    ));
  }
}

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/ivideos.xml',
      title: videosTitle,
    ));
  }
}

class WebStories extends StatelessWidget {
  const WebStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/web-stories.xml',
      title: webTitle,
    ));
  }
}

class World extends StatelessWidget {
  const World({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/world.xml',
      title: worldTitle,
    ));
  }
}

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/business.xml',
      title: worldTitle,
    ));
  }
}

class CryptoCurrency extends StatelessWidget {
  const CryptoCurrency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/cryptocurrency.xml',
      title: worldTitle,
    ));
  }
}

class Buzz extends StatelessWidget {
  const Buzz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/buzz.xml',
      title: worldTitle,
    ));
  }
}

class RSS extends StatelessWidget {
  const RSS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReusedPage(
      url: 'https://www.news18.com/rss/music.xml',
      title: worldTitle,
    ));
  }
}
