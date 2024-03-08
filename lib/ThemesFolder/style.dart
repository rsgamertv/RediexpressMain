import 'package:flutter/material.dart';
BoxDecoration filledboxdecoration(){
return BoxDecoration(
  color: Colors.blueAccent,
  borderRadius: BorderRadius.circular(15)

);

}
BoxDecoration decoration(){
  return BoxDecoration(
    border: Border.all(
      width: 3,
      color: Colors.blueAccent
    ),
    borderRadius: BorderRadius.circular(15)
  );
}