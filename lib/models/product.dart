class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(
      {this.id,
      this.price,
      this.title,
      this.subTitle,
      this.description,
      this.image});
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "ALTERNATOR",
    subTitle: "الآن احصل على المولد الكهربائي بأقل سعر",
    image: "images/alternator.png",
    description:
        "المولد هو مولد كهربائي يحول الطاقة الميكانيكية إلى طاقة كهربائية في شكل تيار متردد",
  ),
  Product(
    id: 2,
    price: 55,
    title: "BRAKE PADS",
    subTitle: "أفضل أنواع الفرامل وبسعر رمزي",
    image: "images/brake.png",
    description:
        "تعتبر وسادات الفرامل أحد مكونات فرامل الأقراص المستخدمة في السيارات والتطبيقات الأخرى",
  ),
  Product(
    id: 3,
    price: 39,
    title: "OIL FILTER",
    subTitle: "فلتر الزيت الأفضل عالميا",
    image: "images/oil.png",
    description:
        "فلتر الزيت عبارة عن فلتر مصمم لإزالة الملوثات من زيت المحرك أو زيت ناقل الحركة أو زيت التشحيم أو الزيت الهيدروليكي",
  ),
  Product(
    id: 4,
    price: 56,
    title: "BRAKE ROTORS",
    subTitle: "متوفر لدينا فرامل دائرة بأفضل جودة وسعر",
    image: "images/brake_rotor.png",
    description:
        "الفرامل الدائرية هي أقراص دائرية متصلة بكل عجلة (اثنان في الأمام واثنان في الخلف).",
  ),
  Product(
    id: 5,
    price: 68,
    title: "SPARK PLUGS",
    subTitle: "شمعات الاحتراق الأصلية والمميزة",
    image: "images/spark.png",
    description:
        "تتمثل وظيفة شمعة الإشعال في إنتاج شرارة في الوقت المطلوب لإشعال الخليط القابل للاشتعال.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "BATTERY",
    subTitle: "متوفر لدينا أجود أنواع البطاريات",
    image: "images/battery.png",
    description:
        "البطارية الكهربائية هي مصدر للطاقة الكهربائية تتكون من خلية كهروكيميائية واحدة أو أكثر مع توصيلات خارجية لتشغيل الأجهزة الكهربائية",
  ),
  Product(
    id: 7,
    price: 39,
    title: "STARTER",
    subTitle: "بجودة ودقة صورة عالية",
    image: "images/starter.png",
    description:
        "البادئ ( أيضًا البادئ الذاتي أو محرك التدوير أو المحرك البادئ ) هو جهاز يستخدم لتدوير (كرنك) محرك احتراق داخلي لبدء تشغيل المحرك",
  ),
  Product(
    id: 8,
    price: 39,
    title: "HEADLIGHT BULB",
    subTitle: "يتوفر لدينا المصابيح الأشد إضاءة",
    image: "images/light.png",
    description:
        "يتوفر ضوء أكثر سطوعًا وضوءًا أكثر بياضًا وعمرًا طويلاً للمصابيح لترقية مصابيح الهالوجين الأمامية .",
  ),
  Product(
    id: 9,
    price: 39,
    title: "IGNITION COIL",
    subTitle: " أجود ملفات الإشعال وأقل ثمناً",
    image: "images/ignition.png",
    description:
        "ملف الإشعال هو ملف تحريضي في نظام اشتعال السيارة يحول جهد البطارية إلى آلاف الفولتات",
  ),
  Product(
    id: 10,
    price: 39,
    title: "AIR FILTER",
    subTitle: "أجود وأفضل فلاتر الهواء لدينا",
    image: "images/air.png",
    description:
        "مرشح الهواء الدقيق هو جهاز يتكون من مواد ليفية أو مسامية تزيل الجسيمات الصلبة مثل الغبار وحبوب اللقاح والعفن والبكتيريا ",
  ),
];
