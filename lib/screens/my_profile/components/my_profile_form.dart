import 'package:flutter/material.dart';
import 'package:saigon_store/components/custom_surfix_icon.dart';
import 'package:saigon_store/helper/keyboard.dart';
import '../../change_profile_success/change_profile_success_screen.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}
 String? phone="0865434343";
 String? Fullname="Dương Trọng Nhân";
 String? Address="296 Cao Nhòng Tiền Tệ";
 String? Mail='kenduong@gmail.com';
 String? Password='09sdsada1';
class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
     return Form(child: Column(
       children: [
        TextFormField(
           decoration: InputDecoration(
          label: Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
          hintText: Mail,
          ),
         ),
         SizedBox(height: 15),
         TextFormField(
           readOnly: true,
           decoration: InputDecoration(
          label: Text("Mật Khẩu",style: TextStyle(fontWeight: FontWeight.bold),),
          hintText: Password,
          ),
         ),
         SizedBox(height: 15),
         TextFormField(
           decoration: InputDecoration(
          label: Text("Họ Tên",style: TextStyle(fontWeight: FontWeight.bold),),
          hintText: Fullname,
          ),
         ),
         SizedBox(height: 15),
         TextFormField(
           decoration: InputDecoration(
          label: Text("Số điện thoại",style: TextStyle(fontWeight: FontWeight.bold),),
          hintText: phone,
          ),
         ),
         SizedBox(height: 15),
         TextFormField(
           decoration: InputDecoration(
          label: Text("Địa chỉ",style: TextStyle(fontWeight: FontWeight.bold),),
          hintText: Address,
          ),
         ),
         SizedBox(height: 15),
         DefaultButton(
            text: "Lưu thay đổi",
            press: (){
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, ChangeProfileSuccessScreen.routeName);
            }
          ),
          SizedBox(height: 15),
       ],
     )
    );
  }
}
