class carsmodael {
  final int id;
  final String name, image;

  carsmodael(
      {this.id,
        this.name,
        this.image
      });
}
List<carsmodael> cars =
[
  carsmodael(id: 1,image: 'images/car.png',name: 'تويوتا '),
  carsmodael(id:2,image: 'images/car.png',name: 'نيسان'),
  carsmodael(id: 3,image: 'images/car.png',name: 'فورد'),
];
