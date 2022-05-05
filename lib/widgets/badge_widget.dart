import 'package:flutter/material.dart';

Widget makeIconWithBadge(String badgeText, GestureTapCallback onTap) {
  return Container(
    padding: const EdgeInsets.only(right: 16.0),
    child: Center(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          const Icon(Icons.shopping_cart_outlined),
          Positioned(
            top: -6.0,
            right: -6.0,
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99.0),
                color: Colors.white,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99.0),
                    color: Colors.red),
                child: Center(
                  child: Text(
                    badgeText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(99.0)),
              color: Colors.transparent,
              child: InkWell(onTap: onTap),
            ),
          )
        ],
      ),
    ),
  );
}
