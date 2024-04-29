import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zakr/core/radio_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => MyProvider()..getRadioData(),
      child: Consumer<MyProvider>(
        builder: (context, MyProvider myProvider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(image: AssetImage("assets/images/radio.png")),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: myProvider.data.length,
                  physics: PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text(myProvider.data[index].name ?? "",
                              style: GoogleFonts.elMessiri(
                                  fontSize: 25, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  myProvider.playAudio(index);
                                },
                                icon: const Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    myProvider.stopAudio();
                                  },
                                  icon: const Icon(
                                    Icons.pause,
                                    size: 40,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
