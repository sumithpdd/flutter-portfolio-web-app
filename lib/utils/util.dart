import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['to@example.com'],
    cc: ['cc1@example.com', 'cc2@example.com'],
    subject: 'mailto example subject',
    body: 'mailto example body',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}

final projectsList = [
  {
    'title': 'Building a Cat',
    'subtitle': 'Great client',
    'image': 'https://picsum.photos/id/100/400/300'
  },
  {
    'title': 'Flutter 2.0 Course',
    'subtitle': 'The best of the best!',
    'image': 'https://picsum.photos/id/100/400/300'
  },
  {
    'title': 'Connekto',
    'subtitle': 'A Flutter app for nerds',
    'image': 'https://picsum.photos/id/1014/400/300'
  },
  {
    'title': 'Been There',
    'subtitle': 'Save places you\'ve visited',
    'image': 'https://picsum.photos/id/3/400/300'
  },
  {
    'title': 'Bengo',
    'subtitle': 'Flutter email app',
    'image': 'https://picsum.photos/id/1025/400/300'
  },
  {
    'title': 'Your Project',
    'subtitle': 'Something Good',
    'image': 'https://picsum.photos/id/1025/400/300'
  }
];
