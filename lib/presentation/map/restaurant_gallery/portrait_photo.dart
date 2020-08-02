part of 'restaurant_gallery.dart';

/// The layout for displaying a photo in portrait mode
class PortraitPhoto extends StatelessWidget {
  const PortraitPhoto({
    Key key,
    @required this.photo,
    @required this.topPadding,
    @required this.constraints,
    @required this.formatter,
  }) : super(key: key);

  final PhotoEntity photo;
  final double topPadding;
  final BoxConstraints constraints;
  final NumberFormat formatter;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        padding: EdgeInsets.only(
          top: topPadding,
        ),
        child: Column(
          children: [
            Container(
              height: constraints.maxHeight * 0.8,
              width: constraints.maxWidth,
              color: Colors.black,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: FadeInImage.memoryNetwork(
                    fadeInDuration: const Duration(milliseconds: 200),
                    placeholder: kTransparentImage,
                    image: photo.url.getOrCrash()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: '${photo.photoDetail.name.getOrCrash()}\n',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: formatter
                                .format(photo.photoDetail.price.getOrCrash()),
                            style: TextStyle(
                                height: 1.3,
                                color: Colors.green.shade500,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  Icon(
                    photo.isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
