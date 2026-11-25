import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  final String? text1;
  final String? text2;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? colors;
  final double? dynamicHeight;

  const Container1({
    super.key,
    this.text1,
    this.text2,
    this.colors,
    this.onPressed,
    this.dynamicHeight,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(238, 163, 163, 1),
                    offset: Offset(0, 1),
                    blurRadius: 1,
                  ),
                ],
                color: colors ?? Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(246, 245, 242, 242),
                ),
              ),
              child:
                  child ??
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        text1 ?? "",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(text2 ?? "", style: const TextStyle(fontSize: 18)),
                    ],
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
