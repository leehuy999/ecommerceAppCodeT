import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    /// tại điểm bắt đầu đường cong từ x= 0, y = bằng cả chiều cao
    path.lineTo(0, size.height);

    // đường cong đầu tiên
    // bắt đầu từ x =0 , y = -20
    final firstCurve = Offset(0, size.height -20);
    //kết thúc x = 30, y= -20
    final lastCurve = Offset(30, size.height -20);
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    // đường cong thứ 2 ( đường thẳng)
    // bắt đầu từ x=0,y=-20
    final secondFirstCurve = Offset(0, size.height -20);
    // kết thúc x = width -30 ( bỏ chừa lại  30),y=-20
    final secondLastCurve = Offset(size.width-30, size.height -20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);

    // đường cong thứ 3
    // bắt đầu từ x=width -30 ,y=-20
    final thirdFirstCurve = Offset(size.width, size.height -20);
    // kết thúc x = width ,y= height
    final thirdLastCurve = Offset(size.width, size.height );
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);

    /// tại điểm kết thúc khi điểm  x= chiều rộng , y = 0  kết thúc điểm vẽ
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   ///để k lỗi trả về luôn đúng
    return true;
  }
  
}