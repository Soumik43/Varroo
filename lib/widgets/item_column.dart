import 'package:flutter/material.dart';

class ItemColumn extends StatelessWidget {
  final String? price, imageurl, name;
  final Function()? onpressed;
  const ItemColumn({
    Key? key,
    this.imageurl,
    this.name,
    this.price,
    this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            fit: BoxFit.fitWidth,
            image: AssetImage(imageurl!),
          ),
        ),
        Text(
          name!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          overflow: TextOverflow.fade,
          softWrap: false,
        ),
        const Text(
          'Info',
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          '$price rs/-',
          style: const TextStyle(
            // fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: onpressed,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class FinalItemColumn extends StatelessWidget {
  final String? price, imageurl, name;
  final Function()? onpressed;
  const FinalItemColumn({
    this.imageurl,
    this.name,
    this.price,
    this.onpressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(
                0,
                1,
              ), // changes position of shadow
            ),
          ],
        ),
        child: ItemColumn(
          name: name,
          imageurl: imageurl,
          price: price,
          onpressed: onpressed,
        ),
      ),
    );
  }
}
