
import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  bool? like;

  LikeButton({Key? key, this.like}) : super(key: key);
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: IconButton(
          onPressed: (){
            setState(() {
              if(isLiked == false){
                isLiked = true;
                carList.addToFavoriteCarList(widget.car);
              } else{
                isLiked = false;
                carList.removeToFavoriteCarList(widget.car);
              }
              print(isLiked);
            });
          },
          icon: const Icon(Icons.favorite, size: 30.0,),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          color: isLiked ? Colors.red : Colors.grey,
        )
    );
  }
}

