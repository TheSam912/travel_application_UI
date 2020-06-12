import 'package:flutter/material.dart';

typedef void RatingChangeCallBack(double rating);

class StarRating extends StatelessWidget {
  final int startCount;
  final double rating;
  final RatingChangeCallBack onRatingChange;
  final Color color;

  StarRating(
      {this.startCount = 5, this.rating = .0, this.onRatingChange, this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).primaryColor,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: Theme.of(context).primaryColor,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: Theme.of(context).primaryColor,
      );
    }

    return InkResponse(
      onTap: onRatingChange == null ? null : () => onRatingChange(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(startCount, (index) => buildStar(context, index)),
    );
  }
}
