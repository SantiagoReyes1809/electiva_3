import 'package:flutter/material.dart';
import '../services/hotel_service.dart';
import '../models/hotel_model.dart';

class HotelListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Hotel> hotels = HotelService.hotels;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lista de Hoteles',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue, 
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.white, 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: hotels.isEmpty
            ? Center(
                child: Text(
                  'No hay hoteles agregados.',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              )
            : ListView.builder(
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  final hotel = hotels[index];
                  return Card(
                    color: Colors.blueAccent,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text(
                        hotel.category,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      subtitle: Text(
                        'Personas: ${hotel.person}',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}