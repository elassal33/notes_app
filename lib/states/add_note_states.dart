abstract class add_note_state{}
class add_note_initial extends add_note_state{
  
}
class add_note_loading extends add_note_state{
  
}
class add_note_sucess extends add_note_state{

}
class add_note_failer extends add_note_state{
String? erorr;
add_note_failer({this.erorr});
}