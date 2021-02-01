import 'package:dart_rss/domain/podcast_index/rss_podcast_index_funding.dart';
import 'package:dart_rss/domain/podcast_index/rss_podcast_index_locked.dart';
import 'package:dart_rss/util/helpers.dart';
import 'package:xml/xml.dart';

class RssPodcastIndex {
  final RssPodcastIndexFunding funding;
  final RssPodcastIndexLocked locked;

  RssPodcastIndex({
    this.funding,
    this.locked,
  });

  factory RssPodcastIndex.parse(XmlElement element) {
    if (element == null) {
      return null;
    }
    return RssPodcastIndex(
      funding: RssPodcastIndexFunding.parse(findElementOrNull(element, "podcast:funding")),
      locked: RssPodcastIndexLocked.parse(findElementOrNull(element, "podcast:locked")),
    );
  }
}
