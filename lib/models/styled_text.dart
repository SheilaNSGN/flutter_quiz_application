import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class AnsweredText extends StatelessWidget {
  const AnsweredText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 0, 255, 234),
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }
}

class CorrectText extends StatelessWidget {
  const CorrectText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 0, 255, 76),
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class QuestionText extends StatelessWidget {
  const QuestionText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 255, 255, 255),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    );
  }
}
