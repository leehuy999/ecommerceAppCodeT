import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, required this.title,  this.buttonTitle = "View all",  this.showActionButon = false, this.textColor, this.onPressed,
  });

  final String title, buttonTitle;
  final bool showActionButon;
  final Color? textColor;
  final void Function()?  onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),//tao tren 1 don
      if(showActionButon)TextButton(onPressed: onPressed, child: Text(buttonTitle)),
    ],);
  }
}