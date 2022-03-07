import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<FraseDeAnime> _frases = [
    FraseDeAnime(
        'Dragon Ball Z',
        'As pessoas fortes não derrubam as outras, elas ajudam-nas a se erguerem',
        'Goku',
        'assets/images/goku.png',
        Colors.orange),
    FraseDeAnime(
        'Os Cavaleiros do Zodíaco',
        'Só aqueles que desistiram de viver acham que os sonhos são impossíveis.',
        'Hyoga de Cisne',
        'assets/images/hyoga.png',
        Colors.lightBlue),
    FraseDeAnime(
        'Os Cavaleiros do Zodíaco - The Lost Canvas',
        '⁠Você não tem a força para trilhar seu próprio caminho, a força para levar as coisas até o fim nem a força para derrotar os outros.',
        'Minos de Griffon',
        'assets/images/minos.png',
        Colors.purple),
    FraseDeAnime(
        'Os Cavaleiros do Zodíaco - The Lost Canvas',
        '⁠Existe um limite para as cores que podem  ser criadas pelo homem. As cores que os seres humanos captam não passam de ilusões de ótica criadas pela luz. Em outras palavras, são cores falsas. Elas não são as cores reais das coisas.',
        'Hypnos',
        'assets/images/hypnos.png',
        Colors.purpleAccent),
    FraseDeAnime(
        'Demon Slayer',
        'Viva com orgulho. Se sua fraqueza o dominar, aqueça seu coração, cerre os dentes e siga em frente. Mesmo que sua covardia o retarde, não impedirá a passagem do tempo.',
        'Kyojuro Rengoku',
        'assets/images/rengoku.png',
        Colors.red),
    FraseDeAnime(
        'One Piece',
        'Somente aqueles que sofreram por muito tempo conseguem ver luz através das sombras.',
        'Roronoa Zoro',
        'assets/images/zoro.png',
        Colors.green.shade900),
    FraseDeAnime(
        'Naruto',
        'Feridas em seu coração são diferentes de feridas em seu corpo e existe apenas uma coisa que pode curá-las: o amor.',
        'Naruto Uzumaki',
        'assets/images/naruto.png',
        Colors.orange.shade700),
    FraseDeAnime(
        'Naruto',
        'Não importa o quão poderoso você se torne, nunca tente fazer tudo sozinho. Caso contrario irá falhar.',
        'Uchiha Itachi',
        'assets/images/itachi.png',
        Colors.redAccent),
    FraseDeAnime(
        'FullMetal Alchemist',
        'Posso não ter crescido nem um centímetro, mas não vou deixar que o meu coração fique pequeno para sempre!',
        'Edward Elric',
        'assets/images/edward.png',
        Colors.red.shade900),
    FraseDeAnime(
        'Tokyo Ghoul',
        'Há momentos que você precisa desistir de alguma coisa para preservar a outra.',
        'Rize',
        'assets/images/rize.png',
        Colors.purple.shade800),
    FraseDeAnime(
        'Death Note',
        'Às vezes as questões são complicadas e as respostas são simples.',
        'L. Lawliet',
        'assets/images/llawliet.png',
        Colors.blue.shade900),
    FraseDeAnime(
        'Os Cavaleiros do Zodíaco',
        'Alguns nascem sob estrelas de sorte; outros, sob estrelas de azar. Mas eu só posso dizer que eu farei o possível, sejam quais forem as minhas estrelas.',
        'Seiya de Pégasus',
        'assets/images/seiya.png',
        Colors.redAccent.shade100),
    FraseDeAnime(
        'Os Cavaleiros do Zodíaco',
        'O amor nunca falha porque é amor sem fim, sem começo, sem meios de ser interrompido, também se renova à medida que se origina e age no tempo e espaço de todas as dimensões que existem no universo em expansão',
        'Shaka de Virgem',
        'assets/images/shaka.png',
        Colors.yellowAccent.shade700),
    FraseDeAnime(
        'Bleach',
        'Você cresceu. Estou feliz por isso mas, se possível, não quero que force muito pois pisar em uma formiga e controlar a força para não esmagá-la é difícil.',
        'Aizen Sousuke',
        'assets/images/aizen.png',
        Colors.deepPurple.shade300),
    FraseDeAnime(
        'Jujutsu Kaisen',
        'O acúmulo desses pequenos desesperos é o que transforma uma pessoa em um adulto.',
        'Kento Nanami',
        'assets/images/nanami.png',
        Colors.deepPurple.shade900),
    FraseDeAnime(
        'Hunter x Hunter',
        'A estupidez é muito mais fascinante que a inteligência. A inteligência tem limites, a estupidez não.',
        'Killua Zoldyck',
        'assets/images/killua.png',
        Colors.indigo.shade900),
  ];

  // Estado inicial
  var _fraseGerada = "Clique abaixo para gerar uma frase";
  var _fundoGerado = "assets/images/logo.png";
  var _corGerada = Colors.black;

  // Estados "aleatórios" gerados
  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado].getFrase();
      _fundoGerado = _frases[numeroSorteado].getImagePath();
      _corGerada = _frases[numeroSorteado].getCor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de Anime"),
        backgroundColor: _corGerada,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        // decoration: BoxDecoration(
        //   border: Border.all(width: 3, color: Colors.amber)
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(_fundoGerado),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 20, fontStyle: FontStyle.normal, color: _corGerada),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text("Próxima Frase"),
              style: ElevatedButton.styleFrom(primary: _corGerada),
            )
          ],
        ),
      ),
    );
  }
}

class FraseDeAnime {
  String nomeAnime = '';
  String frase = '';
  String nomePersonagem = '';
  String imagePath = '';
  Color cor = Colors.black;

  // Construtor parametrizado
  FraseDeAnime(this.nomeAnime, this.frase, this.nomePersonagem, this.imagePath,
      this.cor);

  // retorna o texto formatado contendo: a frase, o personagem e o anime de origem
  String getFrase() {
    return '"$frase" \n($nomePersonagem, $nomeAnime)';
  }

  // retorna a cor temática para a frase
  Color getCor() {
    return cor;
  }

  // retorna o caminho da imagem do personagem que vai ser exibida junto com a frase
  String getImagePath() {
    return imagePath;
  }
}
