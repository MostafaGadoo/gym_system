import 'package:flutter/material.dart';

class HomeWorkoutListItem extends StatelessWidget {
  final String image;
  final String header;
  final String subHeader;
  final VoidCallback? onTap;
  const HomeWorkoutListItem({
    required this.header,
    required this.subHeader,
    required this.image,
    this.onTap,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(

            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      child: Text(
                        header,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      subHeader,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              Container(
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage(image),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
