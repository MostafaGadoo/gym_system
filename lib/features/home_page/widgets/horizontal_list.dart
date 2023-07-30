import 'package:flutter/material.dart';

class HorizontalListContainer extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback? onTap;

  const HorizontalListContainer({
    required this.text,
    required this.image,
    this.onTap,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.87,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
