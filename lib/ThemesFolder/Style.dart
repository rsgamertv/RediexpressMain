import 'package:flutter/material.dart';

BoxDecoration filledboxdecoration(){
return BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Colors.blueAccent
);

}
BoxDecoration decoration(){
  return BoxDecoration(
    border: Border.all(
      width: 3,
      color: Colors.blueAccent
    ),
    borderRadius: BorderRadius.circular(5),
  );
}

InputDecoration field_decoration(String hint){
  return InputDecoration(
    border: OutlineInputBorder(
    ),
    hintText: hint,
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blueAccent
        ),
      borderRadius: BorderRadius.circular(10)
    )
  );
}

InputDecoration field_outlined_decoration(String hint){
  return InputDecoration(
      border: UnderlineInputBorder(),
      hintText: hint,
  );
}

InputDecoration password_field_decoration(String hint, bool passwordVisible, Function(bool) callback){
  return InputDecoration(
    border: OutlineInputBorder(),
    hintText: hint,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueAccent
      ),
      borderRadius: BorderRadius.circular(10)
    ),
    suffixIcon: IconButton(
      icon: Icon(
        passwordVisible ? Icons.visibility : Icons.visibility_off),
        onPressed: () { passwordVisible = !passwordVisible;  callback(passwordVisible); },
    )
  );
}