class Place {
  final String imageUrl;
  final String city;
  final String description;
  final String event;

  Place(
      {required this.city,
      required this.description,
      required this.imageUrl,
      required this.event});
}

final places = [
  Place(
      imageUrl: "assets/montana.jpg",
      city: "7 Colores ",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour.",
      event: ""),
  Place(
      imageUrl: "assets/wakrapukara.png",
      city: "Wakrapukara",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour",
      event: ""),
  Place(
      imageUrl: "assets/machupicchu.png",
      city: "Machupicchu",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour",
      event: "Rio Carnival"),
];

final events = [
  Place(
      imageUrl: "assets/familias.png",
      city: "Cusco",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour",
      event: "Familias"),
  Place(
      imageUrl: "assets/millenials.png",
      city: "Cusco",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour",
      event: "Millenials"),
  Place(
      imageUrl: "assets/adultos.png",
      city: "Cusco",
      description:
          "La montaña 7 colores es uno de los atractivos recientemente promovidos en Cusco, disfruta de este tour",
      event: "Adults Only"),
];
