import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UsesPage extends StatefulWidget {
  const UsesPage({Key? key}) : super(key: key);

  @override
  State<UsesPage> createState() => _UsesPageState();
}

class _UsesPageState extends State<UsesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 178, 240, 195),
        appBar: AppBar(
          actions: [
            SvgPicture.asset("assets/logos.svg",
                height: MediaQuery.of(context).size.height * 0.04),
          ],
          backgroundColor: const Color.fromARGB(255, 40, 122, 50),
          title: Text(
            "Energy Savers",
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 209, 214, 209),
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08,
              vertical: MediaQuery.of(context).size.width * 0.08),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                UsesCard(svg: "assets/useselec.svg", text: "Elektrik"),
                UsesCard(svg: "assets/useswater.svg", text: "Su"),
                UsesCard(svg: "assets/usesradiot.svg", text: "Doğalgaz"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UsesCard extends StatelessWidget {
  const UsesCard({
    Key? key,
    required this.svg,
    required this.text,
  }) : super(key: key);
  final String svg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08),
        child: Row(
          children: [
            SvgPicture.asset(
              svg,
              height: MediaQuery.of(context).size.height * 0.12,
            ),
            const Spacer(),
            Text(
              text,
              style: GoogleFonts.roboto(
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
