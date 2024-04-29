import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:zakr/core/api_manager.dart';

import '../models/radio_model.dart';

class MyProvider with ChangeNotifier{
  List<Radios>data=[];
  final player = AudioPlayer();

  getRadioData()async{
      data=await ApiManager.getData();

     notifyListeners();
  }
  playAudio(int index)async{
    await player.play(UrlSource(data[index].url??"" ));
    notifyListeners();
  }
  stopAudio(){
    player.stop();
    notifyListeners();

  }


}