import 'dart:ui';

/**
 * 作者：leavesC
 * 时间：2019/10/15 10:32
 * 描述：
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_do/common/page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_do/widget/MyIcons.dart';
import 'package:flutter_svg/flutter_svg.dart';

const imageUrl =
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571395288485&di=d475ea9a1c8920f291e1b65d60e46f58&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw640h380%2F20171224%2F4873-fypvuqf5294484.jpg";
const IMAGE_SRC = 'https://picsum.photos/id/142/600/400';

const AVATAR = 'assets/images/avatar.jpg';

class ImagePage extends BaseDemoPage {
  ImagePage() : super('Image');

  @override
  Widget generateChildren(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.max,
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _ImageWithTipWidget(
                  FadeInImage.assetNetwork(
                      placeholder: 'assets/images/avatar.jpg', image: imageUrl),
                  'FadeInImage'),
              _ImageWithTipWidget(
                  CachedNetworkImage(
                    imageUrl: "http://via.placeholder.com/350x150",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  'CachedNetworkImage'),
              CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter:
                            ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              _ImageWithTipWidget(
                  new ClipRRect(
                    child: Image.network(
                      imageUrl,
                      scale: 8.5,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  'ClipRrect'),
              _ImageWithTipWidget(
                  Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(imageUrl), fit: BoxFit.cover),
                    ),
                  ),
                  "Container"),
              _ImageWithTipWidget(
                  ClipOval(
                    child: Image.asset(
                      AVATAR,
                      scale: 8.5,
                    ),
                  ),
                  'ClipOval'),
              _ImageWithTipWidget(
                  CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                    radius: 50.0,
                    child: Text('鸣人'),
                  ),
                  'CircleAvator'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.http,
                    color: Colors.deepOrange,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                  ),
                ],
              ),
              _ImageWithTipWidget(
                  Text(
                    '\ueb91',
                    style: TextStyle(
                        fontFamily: 'iconfont',
                        fontSize: 46.0,
                        color: Colors.black),
                  ),
                  'textfont'),
              Icon(MyIcons.guide,color: Colors.grey,),
              SvgPicture.asset('assets/images/vip_girl.svg',color: Colors.red,)
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
              children: <Widget>[
            _ImageWithTipWidget(
                Image.asset(
                  "assets/images/avatar.jpg",
                ),
                "本地资源图片"),
            _getImage(null, null, color: null, tip: "网络图片"),
          ]..addAll(_getImageListWithBlendMode())),
        ),
        Flexible(
          flex: 1,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _ImageWithTipWidget(
                    Image.asset(
                      "assets/images/avatar.jpg",
                    ),
                    "本地资源图片"),
                _getImage(null, null, color: null, tip: "网络图片"),
              ]..addAll(_getImageListWithFit())),
        ),
      ],
    );
  }
}

List<Widget> _getImageListWithBlendMode() {
  return BlendMode.values.reversed.map((element) {
    return _getImage(element, null);
  }).toList();
}

List<Widget> _getImageListWithFit() {
  return BoxFit.values.reversed.map((element) {
    return _getImage(null, element, color: null);
  }).toList();
}

Widget _getImage(BlendMode colorBlendMode, BoxFit boxFit,
    {Color color = Colors.blue, String tip}) {
  return _ImageWithTipWidget(
      Image.network(
        imageUrl,
        color: color,
        fit: boxFit,
        colorBlendMode: colorBlendMode,
      ),
      tip ?? colorBlendMode?.toString() ?? boxFit?.toString() ?? "");
}

class _ImageWithTipWidget extends StatelessWidget {
  final String tip;

  final Widget widget;

  _ImageWithTipWidget(this.widget, this.tip);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 80,
              height: 80,
              child: widget,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tip,
              style: TextStyle(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
