class Service
{
  final int serviceId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String serviceName;
  final String imageURL;
  final String iconService;
  final bool isFavorated;
  final String decription;
  final bool isSelected;

  Service(
  {
    required this.serviceId,
    required this.price,
    required this.size,
    required this.rating,
    required this.humidity,
    required this.temperature,
    required this.category,
    required this.serviceName,
    required this.iconService,
    required this.imageURL,
    required this.decription,
    required this.isSelected,
    required this.isFavorated
  });

static List<Service> serviceList = [
  Service(
      serviceId: 0, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Limpieza', 
      serviceName: 'Alfombras',
      iconService:'assets/images/iconservice/limpalfombra.png', 
      imageURL: 'assets/images/alfombras-lavado-servicios.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 1, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Limpieza', 
      serviceName: 'En el Hogar',
      iconService:'assets/images/iconservice/limpiezahogar.png',  
      imageURL: 'assets/images/plant-two.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 2, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Técnico', 
      serviceName: 'Compputadoras', 
      iconService:'assets/images/iconservice/soporte-tecnico.png',
      imageURL: 'assets/images/plant-three.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 3, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Mascotas', 
      serviceName: 'Paseo de perros',
      iconService:'assets/images/iconservice/perro-caminando.png',
      imageURL: 'assets/images/plant-four.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 4, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Bienestar', 
      serviceName: 'Entrenador personal',
      iconService:'assets/images/iconservice/entrenador.png',
      imageURL: 'assets/images/plant-one.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 5, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Electricista', 
      serviceName: 'Instalaciones',
      iconService:'assets/images/iconservice/electricista.png',
      imageURL: 'assets/images/plant-five.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  Service(
      serviceId: 5, 
      price: 20,
      size: 'S',
      rating: 4.5,
      humidity: 20,
      temperature: '23 - 24',
      category: 'Transporte', 
      serviceName: 'Delivery',
      iconService:'assets/images/iconservice/delivery.png',
      imageURL: 'assets/images/plant-five.png', 
      decription: 'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.', 
      isSelected: true, 
      isFavorated: true),
  ];

  //Get the favorated items
  static List<Service> getFavoritedPlants(){
    List<Service> _travelList = Service.serviceList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Service> addedToCartPlants(){
    List<Service> _selectedPlants = Service.serviceList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }

}