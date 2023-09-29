// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:adventure/story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
        'Seu carro estourou um pneu numa estrada sinuosa, no meio do nada, sem sinal de celular. Você decidiu procurar carona. Você ouve o barulho de uma caminhonete velha para próxima de você. Um homem com um chapelão e olhos assombrosos abre a porta do carona para você e pergunta: "Precisa de uma carona, garoto?".',
        'Eu vou aceitar. Agradeço a ajuda!',
        'É melhor perguntar antes se ele é um assassino.'),
    Story(
        'Ele assente vagarosamente, sem se incomodar com a pergunta.',
        'Pelo menos ele é honesto. Eu vou aceitar.',
        'Espera, eu sei trocar um pneu.'),
    Story(
        'Assim que você começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais bravo. Ele pede que você abra o porta-luvas. Dentro, você vê uma faca ensanguentada, dois dedos cortados e uma fita K7 do Elton John. Ele se estica para o porta-luvas.',
        'Eu adoro Elton John! Entregue a ele a fita K7.',
        'Sou eu ou ele! Você pega a faca o esfaqueia.'),
    Story(
        'O que? Que desculpa esfarrapada! Você sabia que acidentes de trânsito são a segunda causa de morte acidental para a maioria dos adultos?',
        'Recomeçar',
        ''),
    Story(
        'Conforme você se arrasta pelo guardrail e se inclina na direção das rochas abaixo, você pensa na sabedoria duvidosa de esfaquear alguém enquanto ele dirigia o carro no qual você está.',
        'Recomeçar',
        ''),
    Story(
        'Você se conecta com o assassino, enquanto cantarola versos de "Can you feel the love tonight". Ele te deixa na próxima cidade. Antes de partir, ele pergunta se você conhece algum lugar adequado para largar corpos. Você responde: "Tente o pier".',
        'Recomeçar',
        '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getStoryChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getStoryChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  bool isChoice2Available() {
    return _storyNumber < 3;
  }

  void nextStory(int choice) {
    if (!isChoice2Available()) return restart();

    if (_storyNumber == 0) {
      if (choice == 1)
        _storyNumber = 2;
      else
        _storyNumber = 1;

      return;
    }

    if (_storyNumber == 2) {
      if (choice == 1)
        _storyNumber = 5;
      else
        _storyNumber = 4;

      return;
    }

    if (_storyNumber == 1) {
      if (choice == 1)
        _storyNumber = 2;
      else
        _storyNumber = 3;

      return;
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}
