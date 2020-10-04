class Categoria {
  final String nombre;
  final String videoURL;
  final List<Enfermedad> enfermedades;

  Categoria(this.nombre, this.videoURL, this.enfermedades);

  static List<Categoria> list = [
    Categoria(
      'Cromosómicas',
      'https://firebasestorage.googleapis.com/v0/b/gym-tracker-a85f6.appspot.com/o/cromosomicas.mp4?alt=media&token=2608a397-54b7-4a7f-b1b7-5eb4f2fe587a',
      [
        Enfermedad(
            'Síndrome de Down (trisomía 21)',
            'Aneuploidía – Autosómica',
            'Una alteración genética que se produce por la presencia de un cromosoma extra en el par 21, por eso, también se conoce como trisomía 21.',
            'assets/images/cromosomicas/1.png',
            "assets/text/cromosomicas/1.md"),
        Enfermedad(
            'Síndrome de Patau (trisomía 13)',
            'Aneuploidía – Autosómica',
            'Es un trastorno genético producido por una alteración en el material genético del cromosoma 13, es decir, existe una copia extra de dicho cromosoma.',
            'assets/images/cromosomicas/2.png',
            "assets/text/cromosomicas/2.md"),
        Enfermedad(
            'Síndrome de Edwards (trisomía 18)',
            'Aneuploidía – Autosómica',
            'También conocido como trisomía 18, es un trastorno genético, el cual afecta al desarrollo normal del niño, ya que el pequeño que lo padece tiene una tercera copia del material del cromosoma 18.',
            'assets/images/cromosomicas/3.png',
            "assets/text/cromosomicas/3.md"),
        Enfermedad(
            'Síndrome de Turner',
            'Aneuploidía – Gonosómica',
            'Se presenta en mujeres las cuales solo tienen un cromosoma X, en lugar de un par. Su cariotipo es de 45 cromosomas, 45 (X0), la ausencia de un cromosoma X puede ser total o parcial.',
            'assets/images/cromosomicas/4.png',
            "assets/text/cromosomicas/4.md"),
        Enfermedad(
            'Síndrome de Klinefelter',
            'Aneuploidía – Gonosómica',
            'Es una afección genética que se produce cuando un niño nace con una copia adicional del cromosoma X, también conocido como Síndrome 47-XXY.',
            'assets/images/cromosomicas/5.png',
            "assets/text/cromosomicas/5.md"),
        Enfermedad(
            'Síndrome de Tiple x (trisomía X)',
            'Aneuploidía – Gonosómica',
            'Es una afección genética que solo afecta a las personas de género femenino, se llama Triple X porque tienen un cromosoma X de más en la mayoría de sus células. también llamado síndrome XXX, trisomía X o 47 XXX.',
            'assets/images/cromosomicas/6.png',
            "assets/text/cromosomicas/6.md"),
        Enfermedad(
            'Síndrome 5p (síndrome de monosomía 5p)',
            'Deleción',
            'La deleción del extremo del brazo corto del cromosoma 5 (5p menos, por lo general, paterno) se caracteriza por un llanto agudo muy parecido al de una cría de gato persiste varias semanas y después desaparece.',
            'assets/images/cromosomicas/7.jpg',
            "assets/text/cromosomicas/7.md"),
        Enfermedad(
            'Síndrome 4p (síndrome de Wolf-Hirschhorn)',
            'Deleción',
            'La deleción del brazo corto del cromosoma 4 (4p) provoca discapacidad intelectual variable; los individuos con deleciones más grandes suelen presentar un compromiso más grave.',
            'assets/images/cromosomicas/9.jpg',
            "assets/text/cromosomicas/8.md"),
        Enfermedad(
            'Síndrome de Angelman',
            'Síndrome de gen continuo',
            'El síndrome de Angelman es un trastorno genético. Causa retraso en el desarrollo, problemas de habla y equilibrio, discapacidad intelectual y, a veces, convulsiones. Las personas con síndrome de Angelman suelen sonreír y reír frecuentemente, y tienen personalidades felices y excitables.',
            'assets/images/cromosomicas/10.jpg',
            "assets/text/cromosomicas/9.md"),
        Enfermedad(
            'Síndrome de Prader-Willi.',
            'Síndrome de gen continuo',
            'El síndrome de Prader-Willi es un trastorno genético poco frecuente que provoca varios problemas físicos, mentales y conductuales. Una característica importante del síndrome de Prader-Willi es una sensación constante de hambre que suele comenzar a los 2 años aproximadamente.',
            'assets/images/cromosomicas/11.jpg',
            "assets/text/cromosomicas/10.md"),
        Enfermedad(
            'Síndrome velocardiofacial (del22q11.2)',
            'Síndrome de microdeleción',
            'El síndrome de DiGeorge es un trastorno de inmunodeficiencia primaria con defectos de células T. Se debe a deleciones o supresiones génicas en la región cromosómica de DiGeorge en 22q11.',
            'assets/images/cromosomicas/12.jpg',
            "assets/text/cromosomicas/11.md")
      ],
    ),
    Categoria(
        'Monogénicas o mendelianas',
        'https://firebasestorage.googleapis.com/v0/b/gym-tracker-a85f6.appspot.com/o/video1.mp4?alt=media&token=b1617867-d156-4ba0-8757-5599290700f1',
        [
          Enfermedad(
              'Neurofibromatosis Tipo 1 (NF1)',
              'Herencia autosómica dominante',
              'Es un síndrome neurocutáneo que puede afectar el cerebro, médula espinal, nervios periféricos, piel, huesos y otros sistemas del cuerpo humano.',
              'assets/images/monogenicas/1.png',
              'assets/text/monogenicas/1.md'),
          Enfermedad(
              'Enfermedad de Huntington',
              'Herencia autosómica dominante',
              'Trastorno genético en el cual las neuronas en ciertas partes del cerebro se desgastan o se degeneran. La enfermedad se transmite de padres a hijos.',
              'assets/images/monogenicas/2.png',
              'assets/text/monogenicas/2.md'),
          Enfermedad(
              'Distrofia Miotónica Tipo 1 (de Steinert)',
              'Herencia autosómica dominante',
              'Es una enfermedad multisistémica que afecta al músculo liso y esquelético, así como al ojo, corazón, sistema endocrino y sistema nervioso central.',
              'assets/images/monogenicas/3.jpg',
              'assets/text/monogenicas/3.md'),
          Enfermedad(
              'Síndrome de Marfan',
              'Herencia autosómica dominante',
              'Trastorno de los tejidos conectivos que producen alteraciones  esqueléticas, oculares y del sistema cardiovascular.',
              'assets/images/monogenicas/4.jpg',
              'assets/text/monogenicas/4.md'),
          Enfermedad(
              'Poliquistosis renal ',
              'Herencia autosómica recesiva',
              'Es una enfermedad multisistémica, caracterizada por la presencia de múltiples quistes renales bilaterales, así como por manifestaciones extrarenales.',
              'assets/images/monogenicas/5.jpg',
              'assets/text/monogenicas/5.md'),
          Enfermedad(
              'Anemia falciforme',
              'Herencia autosómica recesiva',
              'Es una afección en la que los glóbulos rojos tienen forma de luna creciente o hoz ,  Esta deformidad estructural entorpece la circulación sanguínea .',
              'assets/images/monogenicas/6.jpg',
              'assets/text/monogenicas/6.md'),
          Enfermedad(
              'Síndrome de Laron',
              'Herencia autosómica recesiva',
              'Es una enfermedad congénita caracterizada por una marcada baja estatura, asociada a niveles normales o elevados de hormona del crecimiento (GH) en el suero, y niveles bajos de IGF-1.',
              'assets/images/monogenicas/7.png',
              'assets/text/monogenicas/7.md'),
          Enfermedad(
              'Hipotiroidismo Congénito',
              'Herencia autosómica recesiva',
              'Se define como una deficiencia de hormonas tiroideas presente al nacimiento, puede ser por que nacen sin la glándula tiroides o esta no funciona bien.',
              'assets/images/monogenicas/8.jpg',
              'assets/text/monogenicas/8.md'),
          Enfermedad(
              'Hiperplasia Suprarrenal Congénita',
              'Herencia autosómica recesiva',
              'Es el nombre dado a un grupo de trastornos hereditarios de las glándulas suprarrenales.',
              'assets/images/monogenicas/9.jpg',
              'assets/text/monogenicas/9.md'),
          Enfermedad(
              'Fenilcetonuria',
              'Herencia autosómica recesiva',
              'Es una afección poco frecuente en la cual un bebé nace sin la capacidad para descomponer apropiadamente un aminoácido llamado fenilalanina.',
              'assets/images/monogenicas/11.jpg',
              'assets/text/monogenicas/10.md'),
          Enfermedad(
              'Galactosemia',
              'Herencia autosómica recesiva',
              'Es una afección en la cual el cuerpo no puede utilizar (metabolizar) el azúcar simple galactosa.',
              'assets/images/monogenicas/12.jpg',
              'assets/text/monogenicas/11.md'),
          Enfermedad(
              'Fibrosis quística',
              'Herencia autosómica recesiva',
              'Es una enfermedad que provoca la acumulación de moco espeso y pegajoso en los pulmones, el tubo digestivo y otras áreas del cuerpo. Es uno de los tipos de enfermedad pulmonar crónica más común en niños y adultos jóvenes. Es una enfermedad potencialmente mortal.',
              'assets/images/monogenicas/13.jpg',
              'assets/text/monogenicas/12.md'),
          Enfermedad(
              'Atrofia Muscular Espinal',
              'Herencia autosómica recesiva',
              'Es una de varias enfermedades hereditarias que destruyen progresivamente las neuronas motoras inferiores, células nerviosas en el tallo cerebral y la médula espinal que controlan la actividad muscular voluntaria esencial como hablar, caminar, respirar y deglutir.',
              'assets/images/monogenicas/14.jpg',
              'assets/text/monogenicas/13.md'),
          Enfermedad(
              'Distrofia muscular de Duchenne',
              'Herencia Recesiva Ligada Al Cromosoma X',
              'Es un trastorno hereditario. Este implica debilidad muscular, la cual empeora rápidamente.',
              'assets/images/monogenicas/15.jpg',
              'assets/text/monogenicas/14.md'),
          Enfermedad(
              'Hemofilia A',
              'Herencia Recesiva Ligada Al Cromosoma X',
              'Es un trastorno hemorrágico hereditario causado por una falta del factor de coagulación sanguínea VIII. Sin suficiente cantidad de este factor, la sangre no se puede coagular apropiadamente para detener el sangrado.',
              'assets/images/monogenicas/16.jpg',
              'assets/text/monogenicas/15.md'),
          Enfermedad(
              'Síndrome de X frágil ',
              'Herencia Dominante Ligado Al X',
              'Es una afección genética que involucra cambios en parte del cromosoma X. Es la forma más común de discapacidad intelectual hereditario en niños.',
              'assets/images/monogenicas/17.jpg',
              'assets/text/monogenicas/16.md'),
        ]),
    Categoria(
        'Poligénicas',
        'https://firebasestorage.googleapis.com/v0/b/gym-tracker-a85f6.appspot.com/o/Polig%C3%A9nicas.mp4?alt=media&token=58d13b4d-38df-4bef-a03c-226f4da606d5',
        [
          Enfermedad(
              'Hipertensión Arterial',
              'Enfermedad poligénica y multifactorial',
              'En América Latina, el país con la mayor prevalencia de hipertensión es el Ecuador y la primera causa de muerte es la enfermedad cardiovascular secundaria.',
              'assets/images/poligenicas/1.png',
              'assets/text/poligenicas/1.md'),
          Enfermedad(
              'Fibrilación Auricular',
              'Enfermedad poligénica y multifactorial',
              'Cuando aparece la arritmia el ritmo normal del corazón se altera, puede acelerarse a pesar de estar en reposo (taquicardia) o hacerse más lento (bradicardia).',
              'assets/images/poligenicas/2.jpg',
              'assets/text/poligenicas/2.md'),
          Enfermedad(
              'Enfermedad Arterial Coronaria',
              'Enfermedad poligénica y multifactorial',
              'Según los últimos datos de OMS publicados de 2018 las muertes causadas por Enfermedad coronaria en Ecuador han llegado a 9.109 (12,43% de todas las muertes). La tasa de mortalidad por edad es de 60,44 por 100,000 de población.',
              'assets/images/poligenicas/3.jpg',
              'assets/text/poligenicas/3.md'),
          Enfermedad(
              'Rinitis',
              'Enfermedad poligénica y multifactorial',
              'Una de las causas más frecuentes de rinitis es la alergia frente a sustancias inocuas presentes en el aire.',
              'assets/images/poligenicas/4.jpg',
              'assets/text/poligenicas/4.md'),
          Enfermedad(
              'Asma',
              'Enfermedad poligénica y multifactorial',
              'Según la OMS (Organización Mundial de la Salud), en la actualidad hay unos 300 millones de pacientes con asma en el mundo. Considerando  a Ecuador entre los países de prevalencia intermedia con un 12 %.',
              'assets/images/poligenicas/5.jpg',
              'assets/text/poligenicas/5.md'),
          Enfermedad(
              'Enfermedad De Alzheimer',
              'Enfermedad poligénica y multifactorial',
              'La enfermedad de Alzheimer (EA) es la forma más común de demencia en los adultos mayores.',
              'assets/images/poligenicas/6.jpg',
              'assets/text/poligenicas/6.md'),
          Enfermedad(
              'Enfermedad De Parkinson',
              'Enfermedad poligénica y multifactorial',
              'En un estudio en la provincia de Manabí-Ecuador arrogo que un total de 285 habitantes (0,24%) resultaron positivos para enfermedad de Parkinson, predominando en mayores de 61 años (33,33%), y con una prevalencia levemente mayor entre sexo masculino (56,14%) que en el femenino (43,86%).',
              'assets/images/poligenicas/7.jpg',
              'assets/text/poligenicas/7.md'),
          Enfermedad(
              'Diabetes Tipo 2',
              'Enfermedad poligénica y multifactorial',
              'En Ecuador, las cifras del Instituto de Estadísticas y Censos (INEC) dicen que 50.000 personas han fallecido a causa de esta enfermedad en los últimos 10 años, lo que la coloca como la segunda causa de muerte, detrás de las enfermedades isquémicas del corazón.',
              'assets/images/poligenicas/8.png',
              'assets/text/poligenicas/8.md'),
          Enfermedad(
              'Osteoporosis',
              'Enfermedad poligénica y multifactorial',
              'La osteoporosis afecta más a las mujeres que a los hombres, en una proporción de 80% y 20%, respectivamente.',
              'assets/images/poligenicas/9.png',
              'assets/text/poligenicas/9.md'),
          Enfermedad(
              'La Gota',
              'Enfermedad poligénica y multifactorial',
              'Es una enfermedad hereditaria de tipo poligénico o multifactorial. En algunos enfermos es probable que sea autosómica dominante; 50% tiene antecedentes familiares.',
              'assets/images/poligenicas/10.jpg',
              'assets/text/poligenicas/10.md'),
          Enfermedad(
              'Cáncer De Mama',
              'Enfermedad poligénica y multifactorial',
              'En el Ecuador, la incidencia de Cáncer de mama según estadísticas de Globocan 2018, hubo 28.058 casos nuevos de cáncer, en promedio existen 165 casos de cáncer en todas sus variedades por cada 100.000 mujeres y 150 casos por cada 100.000 hombres.',
              'assets/images/poligenicas/11.jpg',
              'assets/text/poligenicas/11.md'),
          Enfermedad(
              'Cáncer De Próstata',
              'Enfermedad poligénica y multifactorial',
              'En Ecuador es el cáncer más frecuente en el hombre con una incidencia del 26%.',
              'assets/images/poligenicas/12.png',
              'assets/text/poligenicas/12.md'),
          Enfermedad(
              'Cáncer De Tiroides',
              'Enfermedad poligénica y multifactorial',
              'El cáncer de tiroides puede tener una predisposición familiar y puede ocurrir en el contexto de síndromes hereditarios o como tumor aislado.',
              'assets/images/poligenicas/13.jpg',
              'assets/text/poligenicas/13.md'),
          Enfermedad(
              'Cáncer De Estomago',
              'Enfermedad poligénica y multifactorial',
              'En Ecuador el cáncer de estómago esta entre las 10 principales causas de mortalidad general en el 2016.',
              'assets/images/poligenicas/14.jpg',
              'assets/text/poligenicas/14.md'),
        ]),
    Categoria(
        'Tratamientos para enfermedades genéticas',
        'https://firebasestorage.googleapis.com/v0/b/gym-tracker-a85f6.appspot.com/o/WhatsApp%20Video%202020-09-28%20at%2023.43.16.mp4?alt=media&token=33bed3cc-db38-48a2-8c17-02e5b355b01a',
        [])
  ];
}

class Enfermedad {
  final String nombre;
  final String subcategoria;
  final String resumen;
  final String imagen;
  final String textPath;

  Enfermedad(
      this.nombre, this.subcategoria, this.resumen, this.imagen, this.textPath);
}
