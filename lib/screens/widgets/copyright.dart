import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyrights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _url = 'https://eyes-soft.web.app/#/';
    Future _launchURL() async => await canLaunch(_url)
        ? await launch(_url)
        : throw 'Could not launch $_url';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Point of Sale system. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const Text(
                  'Powered By ',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextButton(
                  onPressed: () => _launchURL(),
                  child: const Text('Eyes Soft'),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
