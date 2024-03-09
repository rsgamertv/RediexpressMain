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
    border: OutlineInputBorder(),
    hintText: hint,
  );
}