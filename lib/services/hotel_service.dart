import '../models/hotel_model.dart';

class HotelService {
  // Lista estática privada para almacenar hoteles
  static final List<Hotel> _hotels = [];

  // Método para obtener la lista de hoteles
  static List<Hotel> get hotels => List.unmodifiable(_hotels);

  // Método para agregar un nuevo hotel
  static void addHotel(Hotel hotel) {
    _hotels.add(hotel);
  }
}