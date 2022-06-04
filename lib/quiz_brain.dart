//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:quizzler/main.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'question.dart' ;


class QuizBrain{
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true ),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question( 'A slug\'s blood is green.',  true ),
    Question( 'You can lead a cow down stairs but not up stairs.', false),
    Question('It is illegal to pee in the ocean in Portugal.', true),
    Question('Buzz Aldnin\'s mother\'s maiden name was \"  Moom\" ', true),
    Question('No piece of square dry paper can be folded in half more than 7 times. ', false),
    Question('In London,UK, if you happen to die in the house of Parliament , you are entitled to a state funeral , because the building is considered too sacred a place. ', true),
    Question('The loudest sound produced by animal is 188 decibels.That animal is the African Elephant. ', false),
    Question('The total surface area of two human lungs is approximately 70 square meters. ', true),
    Question('Google was originally called\"Backrub\"', true),
  ];



  void nextQuestion(){

    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber >= _questionBank.length-1){
      return true;
    }
    else{
      return false;

    }
  }
  void reset(){
    if(isFinished()){
      _questionNumber=0;
    }
  }
}