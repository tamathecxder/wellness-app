class Consultant {
  String name;
  String degree;
  String imageUrl;
  DateTime datetime;

  Consultant({
    required this.name,
    required this.imageUrl,
    required this.datetime,
    required this.degree,
  });
}

var consultantList = [
  Consultant(
    name: "Jessica Yang",
    imageUrl: '1.jpg',
    datetime:
        DateTime(2023, 5, 15, 9, 30), // Tanggal dan waktu ditentukan di sini
    degree: 'Msc in Clinical Psychology',
  ),
  Consultant(
    name: "John Smith",
    imageUrl: '2.jpg',
    datetime: DateTime(2023, 9, 20, 14, 15),
    degree: 'Ph.D. in Psychiatry',
  ),
  Consultant(
    name: "Emily Johnson",
    imageUrl: '3.jpg',
    datetime: DateTime(2023, 7, 10, 10, 45),
    degree: 'MD in Counseling',
  ),
  Consultant(
    name: "Michael Lee",
    imageUrl: '4.jpeg',
    datetime: DateTime(2023, 3, 25, 13, 0),
    degree: 'MSW in Social Work',
  ),
];
