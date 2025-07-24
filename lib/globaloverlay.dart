import 'package:flutter/material.dart';
import 'package:flytime_spotify/providers/miniplayer.dart';
import 'package:provider/provider.dart';

class GlobalOverlayWidget extends StatelessWidget {
  const GlobalOverlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MiniPlayerProvider>(context);

    if (!provider.isVisible) return const SizedBox.shrink();

    return Positioned(
      bottom: 100,
      right: 20,
      child: Container(
        height: 80,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: const FittedBox(
          child: Text(
            'I love you',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
