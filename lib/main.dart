import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'felipe0liveira.dev',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'felipe0liveira.dev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/avatar.jpg',
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      Text('FELIPE OLIVEIRA'),
                      const SizedBox(height: 2),
                      Text(
                        'SOFTWARE ENGINEER',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Section(
                  body: Text(
                      'Seja absurdamente bem vindo à essa página que eu costumo chamar de meu sitezão, agora nessa v3, com um novo visual.\nClica em tudo, acha uns bugs tops e o mais importante, vai lá no Github e corrige, bjs.'),
                ),
                Section(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                          'https://media.giphy.com/media/3oriNKgISzB8diFeFy/giphy.gif'),
                      const SizedBox(height: 15),
                      Text(
                        'Sobre Mim',
                        style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 5),
                      Text(
                          'Me chamo Felipe 0liveira, sou apaixonado por tecnologia de modo geral. Minha introdução no mundo da programação começou quando percebi meu brilho nos olhos em apoiar grandes ideias, com o objetivo facilitar a vida das pessoas e das empresas.\nMeu principal objetivo é prover soluções à nível do cliente, analisar suas necessidades e dores, me envolver na ideia e traçar o melhor plano de ação para a execução do desenvolvimento para superar positivamente as expectativas.'),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                      itemCount: 1244,
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Section(
                          body: Text('Menino ${index + 1}˚'),
                          squared: true,
                        );
                      }),
                ),
                Section(
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                          'https://media.giphy.com/media/rvjIGIOI9lhsc/giphy.gif'),
                      const SizedBox(height: 15),
                      Text(
                        'Skills',
                        style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                      ),
                      const SizedBox(height: 5),
                      Text(
                          'Tenho uma régua altíssima de qualidade, principalmente se tratando de estruturação de código, organização de projetos, design patterns, etc.\nMe destaco tanto na comunicação assertiva com as pessoas, prezando objetividade e clareza, quanto por minha rápida e eficiente curva de aprendizado, entregando máxima performance dentro da expectativa de prazo.'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final Widget? body;
  final bool? squared;

  const Section({
    Key? key,
    @required this.body,
    this.squared,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (squared != null && squared == true)
          ? 150
          : MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: body,
        ),
      ),
    );
  }
}
