import 'package:url_launcher/url_launcher.dart';

enum UrlKey{
  // profile
  email,
  github,
  blog,

  // skill
  homepage,

  // Blog
  algorithm,
  lecture,
  record,


}

const Map<UrlKey, String> _urls = <UrlKey, String> {
  // info
  UrlKey.email : 'mailto:pplm1042@naver.com',
  UrlKey.github : 'https://github.com/pplm1042',
  UrlKey.blog : 'https://blog.naver.com/pplm1042',
  UrlKey.homepage : 'https://pmportfolio-b53ea.web.app/',
  UrlKey.algorithm : 'https://blog.naver.com/pplm1042/222335006199',
  UrlKey.lecture : 'https://blog.naver.com/pplm1042/222207305516',
  UrlKey.record : 'https://blog.naver.com/pplm1042/222388333947'

};

Future<void> launchUrlByKey(UrlKey key) async =>
    await canLaunch(_urls[key] ?? '') ? await launch(_urls[key] ?? '') : throw '$_urls Could not launch';