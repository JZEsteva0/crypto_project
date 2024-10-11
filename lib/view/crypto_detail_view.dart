import 'package:flutter/material.dart';
import '../model/crypto_model.dart';

class CryptoDetailView extends StatelessWidget {
  final CryptoModel crypto;

  const CryptoDetailView({Key? key, required this.crypto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(crypto.cryptoName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rank: ${crypto.mrank}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Market Cap: R\$ ${crypto.mcap.toString()}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Volume: R\$ ${crypto.volume.toString()}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Image.network(crypto.image, height: 100),
          ],
        ),
      ),
    );
  }
}
