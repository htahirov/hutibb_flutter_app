List<Choice> choices_poliklinik = <Choice>[
  Choice(
      description:
          "ÖRNEK REÇETE \n\nTANI: Abse (yetişkin) \n\nRP1: AUGMENTİN© BID 1GR FİLM TB DIB BIR \nS:2X11B(7gün) \nTYLOL© 500 mg TB DIB BİR \nS:3X11TB \nTERRAMYCİN DERİ MERHEMİ DIB BİR \nS:3X1 \n\nÖRNEK REÇETE \n\nTANI: Abse (15 kg çocuk) \nRP1:AUGMENTİN© BID 200 mg 100 ml SÜSP DIB BİR \nS: 2x1.5 ölçek \nTYLOL© 250 Mg 100 mi SURUP DIB BİR \nS:3-4X1 ölçek \nTERRAMYCİN DERİ MERHEMİ DIB BİR \nS:3X1 \n\n** Gerekirse apse boşaltılmalıdır."),
  Choice(
      description:
          "ÖRNEK REÇETE \n\nTANI: Adenoviral konjonktivit (Çocuk ve yetişkin) \n\nRP1: TOBRASED© GÖZ DAMLASI DIB BİR \nS: 4X1 damla \nREFRESH © GÖZ DAMLASI (0.4ml'lik 30 FLAKON) DIB BİR \nS:6X 1-2 Damla \n\n***Soğuk uygulama önerilir. \n\n**Ciddi enfeksiyon düşünülen hastalarda steroidli göz damlaları kullanılabilir \n\n** 7-10 günlük takip sonrası iyileşmeyen olgular keratit ve herpes virus ekartasyonu açısından göz hekimine yönlendirilmelidir."),
  Choice(
      description:
          "ÖRNEK REÇETE \n\nTANI: Hafif şiddette akne (yetişkin)\nRP1: CLEOCİN T TOPİKAL ÇÖZELTİ 1 30 ML DIB BİR\n  S:2X13 AY (cilt yıkanıp kurulandıktan sonra sürülmelidir.) \n\nÖRNEK REÇETE \n\nTANI: Orta şiddette akne (yetişkin) \n\nRP1: CLEOCİN T TOPİKAL ÇÖZELTİ ©1 30 ML DIB BİR \nS:2X1 3 ay (Cilt yıkanıp kurulandıktan sonra sürülmelidir.)\n MONODOKS © 100MG KAPSÜL DIB BİR \nS:1X1 TB"),
  Choice(
      description:
          "ÖRNEK REÇETE \n\nTANI: Bel tutulması \nRP1: APRANAX 275-550 mg 10 TABLET DIB BİR\nS:2X1\nTYOFLEX © 8 mg 14 KAPSÜL DIB BİR\n S: 2X1 kap\nDOLINE 50 MG 40 G JEL DIB BİR\nS:3X1 kez"),
  Choice(description: 'Poliklinik 5'),
  Choice(description: 'Poliklinik 6'),
  Choice(description: 'Poliklinik 7'),
  Choice(description: 'Poliklinik 8'),
  Choice(description: 'Poliklinik 9'),
  Choice(description: 'Poliklinik 10'),
  Choice(description: 'Poliklinik 11'),
  Choice(description: 'Poliklinik 12'),
  Choice(description: 'Poliklinik 13'),
  Choice(description: 'Poliklinik 14'),
  Choice(description: 'Poliklinik 15'),
];

List<Choice> choices_recete = <Choice>[
  Choice(description: "ÖRNEK REÇETE 1"),
  Choice(description: "ÖRNEK REÇETE 2"),
  Choice(description: 'ÖRNEK REÇETE 3'),
  Choice(description: 'ÖRNEK REÇETE 4'),
  Choice(description: 'ÖRNEK REÇETE 5'),
  Choice(description: 'ÖRNEK REÇETE 6'),
  Choice(description: 'ÖRNEK REÇETE 7'),
  Choice(description: 'ÖRNEK REÇETE 8'),
  Choice(description: 'ÖRNEK REÇETE 9'),
  Choice(description: 'ÖRNEK REÇETE 10'),
  Choice(description: 'ÖRNEK REÇETE 11'),
  Choice(description: 'ÖRNEK REÇETE 12'),
  Choice(description: 'ÖRNEK REÇETE 13'),
  Choice(description: 'ÖRNEK REÇETE 14'),
];
List<Choice> choices_acil_yaklasim = <Choice>[
  Choice(description: "Acil Yaklasim 1"),
  Choice(description: "Acil Yaklasim 2"),
  Choice(description: "Acil Yaklasim 3"),
  Choice(description: "Acil Yaklasim 4"),
  Choice(description: "Acil Yaklasim 5"),
  Choice(description: "Acil Yaklasim 6"),
  Choice(description: "Acil Yaklasim 7"),
];

class Choice {
  final String description;
  const Choice({this.description});
}
