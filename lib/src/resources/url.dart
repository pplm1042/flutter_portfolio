import 'package:url_launcher/url_launcher.dart';

enum UrlKey{
  // profile
  email,
  github,
  blog,

  // skill
  homepage,

  //

}

const Map<UrlKey, String> _urls = <UrlKey, String> {
  // info
  UrlKey.email : 'mailto:pplm1042@naver.com',
  UrlKey.github : 'https://github.com/pplm1042',
  UrlKey.blog : 'https://blog.naver.com/pplm1042',
  UrlKey.homepage : 'https://pmportfolio-b53ea.web.app/',

};

Future<void> launchUrlByKey(UrlKey key) async =>
    await canLaunch(_urls[key] ?? '') ? await launch(_urls[key] ?? '') : throw '$_urls Could not launch';