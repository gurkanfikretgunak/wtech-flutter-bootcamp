class NewsData {
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Teknolojiyi Egece Dokuyoruz Proje Lansmanı Yapıldı",
        "Teknolojide Kadın Derneği",
        "Egebimtes ve Teknolojide Kadın Derneği iş birliğinde Egebimtes 30. yıldönümü için hayata geçirdiğimiz “Teknolojiyi Egece Dokuyoruz” projemizi 16 Eylül 2022 tarihinde harika bir konser organizasyonunda duyurduk. ",
        "19 September 2022",
        "https://www.wtechplatform.com/uploads/_j0a8809_1663608437.jpg"),
    NewsData(
        "Yapay Zeka Eğitim Projesi İlk Mezunlarını Verdi",
        "Teknolojide Kadın Derneği",
        "Teknolojide Kadın Derneği’nin bir ilke imza atarak hayata geçirdiği Python ile Yapay Zeka Eğitim programı ilk kadın mezunlarını verdi. Kadınların teknolojinin üretim tarafında yer almasını teşvik etmek ve yapay zekanın üretiminde çeşitlilik yaratmak adına uygulanan program ile 62 kadın dört ay boyunca alanında uzman binlerce mentorun eşliğinde Python ile Yapay Zeka ve Derin Öğrenme eğitimi gördü. ",
        "16 May 2022",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_banner_360_16526927506282170e9889a.jpeg"),
    NewsData(
        "Yaz Okulu Sosyal Sorumluluk Projesi",
        "Teknolojide Kadın Derneği",
        "Okul Destek Derneği ülkemizde devlet okullarında ortaokul düzeyinde okuyan istekli öğrencilerin uzaktan eğitim araçlarıyla ve ücretsiz olarak etkileşimli çevrim içi derslerle okulda aldıkları temel eğitime destek olmak amacıyla kurulmuş bir dernektir. Derneğin vizyonu dijital teknolojilerinin sunduğu fırsatları en iyi şekilde kullanarak gönüllüler aracılığıyla ülkemizin her köşesindeki istekli (ortaokul) devlet okulu öğrencilerine kaliteli eğitime erişim imkanı vermek, mühendislik ve temel bilimlerde iyi yetişmiş insan kaynağımızın artmasına katkıda bulunmaktır.",
        "27 March 2022",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_353_1649095899624b34db029fa.jpeg"),
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "Wtech Yönetim Kurulu ve Yönetim Organları Üyeleri Buluştu",
        "Teknolojide Kadın Derneği",
        "Yönetim Kurulumuz ve Yönetim Organlarımızın değerli üyeleriyle birlikte bir strateji toplantısı ve keyifli bir sabah kahvaltısı organize ettik. Kurulduğumuzdan bugüne kadar yaptığımız projeleri duyurarak, 2022 yılı için yapacağımız planlamalarda birbirinden değerli görüşleri aldık ve stratejimizi belirlerken de bize son derece yardımcı olacak Yönetim Kurulu Üyelerimizin görüşlerini de almış olduk.",
        "20 December 2021",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_banner_338_164000642661c0831a0c68d.jpeg"),
    NewsData(
        "Teknolojide Kadın Derneği Ankara Ticaret Odasını Ziyaret Etti",
        "Teknolojide Kadın Derneği",
        "Teknoloji Kadın Derneği olarak Ankara Ticaret Odası Genel Sekreter Yardımcısı Ahmet Arif Sezgin'i ziyaret ettik.Kurumsal İletişim Direktörümüz Lale Evliyazade Argon, Derneğimiz ve hayata geçirdiğimiz proje ve çalışmalarımız hakkında bilgiler aktardı. Misafirperverlikleri için Ankara Ticaret Odası Genel Sekreter Yardımcısı Ahmet Arif Sezgin’e tekrar çok teşekkür ediyoruz.",
        "15 December 2021",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_banner_335_163951861061b91192046ac.jpeg"),
    NewsData(
        "Teknolojide Kadın Derneği Milli Eğitim Bakanlığını Ziyaret Etti",
        "Teknolojide Kadın Derneği",
        "Milli Eğitim Bakan Yardımcısı Prof. Dr. Petek Aşkar ile gerçekleşen görüşmede derneğimiz hakkında detaylı bilgilendirme yapılarak, kadın odaklı, ücretsiz teknik ve soft skill eğitimlerimizden bahsedildi. Bizleri kabul edip ağırlayan Milli Eğitim Bakan Yardımcımız Prof. Dr. Petek Aşkar’a teşekkür ediyoruz.",
        "15 December 2021",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_banner_336_163951879761b9124d42ea1.jpeg"),
    NewsData(
        "Wtech Aile ve Sosyal Politikalar Bakanlığı Kadın Statüsü Genel Müdürlüğünü Ziyaret Etti",
        "Teknolojide Kadın Derneği",
        "Kurucu Yönetim Kurulu Başkanımız Zehra Öney ile beraber Aile ve Sosyal Politikalar Bakanlığı Kadın Statüsü Genel Müdürlüğü, Genel Müdürü Gülser Ustaoğlu’nu makamında ziyaret ettik. Derneğimizin çalışmalarıyla beraber teknolojide uzman kadın bireylerin istihdama kazandırılması yönünde yaptığımız eğitim ve projelerimizi aktardık. Bu konuda bizi destekleyen Aile ve Sosyal Politikalar Bakanlığı’na ve Kadın Statüsü Genel Müdürlüğü, Genel Müdürü Gülser Ustaoğlu’na çok teşekkür ederiz.",
        "15 December 2021",
        "https://storagewtech.blob.core.windows.net/files/posts/posts_banner_337_163951897761b913012723e.jpeg"),
  ];
}
