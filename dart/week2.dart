void main() {
    //print(callGen(1991)); 
   // var x =callColor();
   // print(x);
   callWeb("Google");
}
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";
                                //สีที่เพิ่ม
int callColor([String newColor = "pink"]){
                        //    0      1        2
     List<dynamic> color = ["red", "blue", "green"];
//เพิ่ม สีต่อไป
  color.add(newColor);
  for (var item in color) {
    print(item);
  }
  // ตัวนับจำนวนสี
  return color.length;
}
             // ชื่อเว็บ        เลขport            ตัวโปรโตคอล
void callWeb(String web, {int port = 80, String protocal = "http"}) =>
//โชว์  โปรโตคอล   ชื่อเว็บ  เลขport 
print("$protocal $web : $port");


   
