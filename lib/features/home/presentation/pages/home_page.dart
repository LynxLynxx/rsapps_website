import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leadingWidth: 150,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Center(
              child: Text(
                "RS Apps",
                style: GoogleFonts.libreBarcode128Text(fontSize: 36),
              ),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Home",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("About",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Projects",
                    style: GoogleFonts.inter(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: FilledButton(
                onPressed: () {},
                child: Text("Contact"),
              ),
            ),
          ],
        ),
        body: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              child: Column(
                children: [
                  Text(
                    "RS Apps",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        height: 0.8),
                  ),
                  Text(
                    "Software Solution Company",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ResponsiveRowColumnItem(
              child: Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 80),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFA6B399),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -90,
                      child: Image.asset(
                        "assets/images/carlog_preview.png",
                        // height: 1800,
                      ),
                    ),
                    Positioned(
                      right: 100,
                      top: 100,
                      child: SizedBox(
                        width: 500,
                        child: Column(
                          children: [
                            Text(
                              "Build Together     ",
                              style: GoogleFonts.inter(
                                fontSize: 64,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Better Together",
                              style: GoogleFonts.inter(
                                fontSize: 64,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Text(
                              "We build custom mobile and web apps. Our team provides full-stack development, from UI design to backend infrastructure. We leverage technologies like Firebase, Appwrite, Pocketbase, and Supabase to create efficient and scalable solutions.",
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
