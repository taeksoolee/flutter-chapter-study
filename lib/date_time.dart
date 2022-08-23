/** 
 * @command - dart run lib/date_time.dart 
* */
import 'package:intl/intl.dart';

void main() {
  print('===========');
  DateTime now = DateTime.now();
  print(now);
  print(now.year);
  print(now.month);
  print(now.day);
  print(now.hour);
  print(now.minute);
  print(now.second);
  print(now.millisecond);
  
  print('===========');
  Duration duration = Duration(seconds: 60);
  print(duration);
  print(duration.inDays);
  print(duration.inHours);
  print(duration.inMinutes);
  print(duration.inSeconds);
  print(duration.inMilliseconds);
  
  print('===========');
  DateTime specificDay = DateTime(
    1993,
    2,
    11
  );
  
  print(specificDay);
  
  final difference = now.difference(specificDay); //returned Durtaion typed
  print(difference);
  print(difference.inDays);
  print(difference.inHours);
  print(difference.inMinutes);
  print(difference.inSeconds);
  print(difference.inMilliseconds);

  print(now.isAfter(specificDay));
  print(now.isBefore(specificDay));

  print('===========');
  print(now);
  print(now.add(Duration(hours: 10)));
  print(now.subtract(Duration(seconds: 20)));


  print('===========');
  DateTime specificDay2 = DateTime.parse('1993-08-24 12:34:56');
  print(specificDay2);
  DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm:ss'); // intl package
  print(formatter.format(specificDay2));
}