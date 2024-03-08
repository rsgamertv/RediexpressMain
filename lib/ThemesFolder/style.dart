import 'package:flutter/material.dart';

BoxDecoration filledboxdecoration(){
return BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.blueAccent
);

}
BoxDecoration decoration(){
  return BoxDecoration(
    border: Border.all(
      width: 3,
      color: Colors.blueAccent
    ),
    borderRadius: BorderRadius.circular(15),
  );
}