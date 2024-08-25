import 'package:hive/hive.dart';


part 'note_model.g.dart';
@HiveType(typeId: 0)
class Note_model extends HiveObject{
@HiveField(0)
final String title;
@HiveField(1)
final String content;
@HiveField(2)
final int color;
Note_model({required this.title,required this.content,required this.color});
}