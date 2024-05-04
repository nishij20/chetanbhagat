import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonAppBar extends StatefulWidget {
  final Widget? widget;
  final String text;
  const CommonAppBar({required this.widget, required this.text, super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color(0xFF021C4F),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.menu,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
              ),
              Text(
                widget.text,
                style: GoogleFonts.galdeano(fontSize: 25, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height:
                MediaQuery.sizeOf(context).height / 1.1 - kToolbarHeight + 45,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: widget.widget,
          )
        ],
      ),
    );
  }
}
