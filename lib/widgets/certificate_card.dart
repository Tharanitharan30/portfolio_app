import 'package:flutter/material.dart';

class CertificateCard extends StatelessWidget {
  final String title;
  final String organizer;
  final String year;

  const CertificateCard({
    super.key,
    required this.title,
    required this.organizer,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [

          Container(
            width: 70,
            height: 70,

            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius:
                  BorderRadius.circular(15),
            ),

            child: const Icon(
              Icons.workspace_premium,
              size: 35,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  organizer,
                  style: const TextStyle(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  year,
                  style: const TextStyle(
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}