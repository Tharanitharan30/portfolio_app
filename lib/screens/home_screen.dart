import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/liquid_glass_card.dart';
import '../widgets/liquid_background.dart';
import '../data/portfolio_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F172A),

      body: LiquidBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [

                const SizedBox(height: 20),

                // Hero Section
                LiquidGlassCard(
                  child: Column(
                    children: [

                      const CircleAvatar(
                        radius: 55,
                        child: Icon(
                          Icons.person,
                          size: 55,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        PortfolioData.name,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        PortfolioData.title,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        PortfolioData.location,
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Social Buttons

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,

                  children: [

                    ElevatedButton.icon(
                      onPressed: () {
                        _launchUrl(
                           PortfolioData.github,
                        );
                      },
                      icon: const Icon(Icons.code),
                      label: const Text("GitHub"),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        _launchUrl(
                          PortfolioData.linkedin,
                        );
                      },
                      icon: const Icon(Icons.work),
                      label: const Text("LinkedIn"),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // About Card

                LiquidGlassCard(
                  child: const Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        PortfolioData.bio,
                        style: TextStyle(
                          color: Colors.white70,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // Stats

                Row(
                  children: [

                    Expanded(
                      child: LiquidGlassCard(
                        child: const Column(
                          children: [

                            Text(
                              "5+",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:
                                    FontWeight.bold,
                                color: Colors.cyan,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "Projects",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: LiquidGlassCard(
                        child: const Column(
                          children: [

                            Text(
                              "3",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight:
                                    FontWeight.bold,
                                color: Colors.cyan,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "Internships",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Featured Project

                LiquidGlassCard(
                  child: const Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(
                        "Featured Project",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "AquaSense",
                        style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Smart water quality monitoring system with ML-powered anomaly detection.",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}