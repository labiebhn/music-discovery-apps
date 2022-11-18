import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_apps/src/utils/fonts.dart';
import 'package:music_apps/src/utils/palettes.dart';
import 'package:music_apps/src/widgets/layouts/gap.dart';

class ListTrackMusic extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? coverUrl;
  final String? brandUrl;
  const ListTrackMusic({
    Key? key,
    this.title,
    this.coverUrl,
    this.subtitle,
    this.brandUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double coverSize = 125.0;
    const double brandSize = 20.0;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 16.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Palettes.card),
        ),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    constraints: const BoxConstraints(
                      minHeight: coverSize - brandSize,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? '',
                          textAlign: TextAlign.left,
                          style: Fonts.h3,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          subtitle ?? '',
                          textAlign: TextAlign.left,
                          style: Fonts.h6.merge(
                            TextStyle(color: Palettes.textDisabled),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CachedNetworkImage(
                    imageUrl: brandUrl ?? '',
                    height: brandSize,
                    placeholder: (context, url) => CupertinoActivityIndicator(
                      color: Palettes.primary,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ],
              ),
            ),
            const Gap(width: 8.0),
            CachedNetworkImage(
              imageUrl: coverUrl ?? '',
              width: coverSize,
              height: coverSize,
              placeholder: (context, url) => CupertinoActivityIndicator(
                color: Palettes.primary,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          ],
        ),
      ),
    );
  }
}
