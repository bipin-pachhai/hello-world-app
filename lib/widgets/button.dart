import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function onTap;
  final String buttonName;

  const Button({
    this.onTap,
    this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(

        splashColor: Colors.redAccent,
        borderRadius: BorderRadius.circular(10.0),
        onTap: onTap,
        child: SizedBox(
           height: 55,
          width: 200,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
               this.buttonName,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
