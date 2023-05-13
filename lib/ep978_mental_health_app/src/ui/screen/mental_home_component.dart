import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../riverpod/bottom_tab_provider.dart';

class MentalHomeComponent extends StatefulWidget {
  const MentalHomeComponent({Key? key}) : super(key: key);

  @override
  State<MentalHomeComponent> createState() {
    return _MentalHomeComponentState();
    //=> _MentalHomeComponentState();
  }
}

class _MentalHomeComponentState extends State<MentalHomeComponent> {
  var count = 0;

  void counter() {
    count++;
    print(count);
  }

  var ans = "--------";

  void clickF(var s) {
    setState(() {
      ans = s;
    });
  }

  // void calculating(){
  //   int res=count;
  //   if(res<2){
  //     clickF();
  //   }else if(res==2 && res==3){
  //     clickF();
  //   }else if(res==4 && res==5){
  //
  //   }else if(res==6 && res<=7){
  //
  //   }else if(res>7){
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                "Milind & Sachidanand",
                style: GoogleFonts.balsamiqSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    )),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  "Galgotias University",
                  style: GoogleFonts.balsamiqSans(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Are you mentally fit?",
                style: GoogleFonts.balsamiqSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.cyan[100],
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 1.5)),
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Check Your Mental Health Here",
                          style: GoogleFonts.balsamiqSans(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Tap on the SYMPTOMS given below",
                          style: GoogleFonts.balsamiqSans(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 48,
                      width: 48,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),

        //yaha pe neeche khaali space hai bohat sara
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 200,
            child: Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("Worried"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("Headache"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                          child: Text("Anxiety"), onPressed: counter),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("Fear"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("Lowmood"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                          child: Text("Insomnia"), onPressed: counter),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(left: 20)),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("Sweating"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        child: Text("High BP"),
                        onPressed: counter,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                          child: Text("Memeory Issue"), onPressed: counter),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "-----| Click GENERATE for the test Report",
            style: GoogleFonts.balsamiqSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 70)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0.1,
                      ),
                      child: TextButton(
                        child: Text("GENERATE REPORT"),
                        onPressed: () {
                          int res = count;
                          var str = "";
                          if (res < 2) {
                            str = "10% \n You Just Need Break.";
                          } else if (res == 2 || res == 3) {
                            str = "30% \n Take Rest for 2 Days.";
                          } else if (res == 4 || res == 5) {
                            str = "40% \n Go On a Vacation.";
                          } else if (res == 6 || res <= 7) {
                            str = "60% \n Strict Rest Needed";
                          } else if (res == 8) {
                            str = "80% \n Consult Doctor";
                          } else if (res > 8) {
                            str = "99% \n Severe Condition!!";
                          }
                          clickF(str);
                          print(ans);
                        },
                        style:
                            TextButton.styleFrom(fixedSize: Size.fromHeight(2)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      ans,
                      style: GoogleFonts.balsamiqSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer(
            builder: (context, ref, _) {
              final index = ref.watch(mhBottomTabProvider);
              return Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(36),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    index == 0
                        ? GestureDetector(
                      onTap: () {
                        ref.read(mhBottomTabProvider.notifier).state = 0;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.5,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        child: const Icon(Ionicons.home),
                      ),
                    )
                        : IconButton(
                            onPressed: () => ref
                                .read(mhBottomTabProvider.notifier)
                                .state = 0,
                            icon: const Icon(Ionicons.home),
                            color: Colors.white,
                          ),
                    index == 1
                        ? GestureDetector(
                      onTap: () {
                        ref.read(mhBottomTabProvider.notifier).state = 0;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: const Icon(Ionicons.chatbubble_outline),
                            ),
                    )
                        : IconButton(
                            onPressed: () => ref
                                .read(mhBottomTabProvider.notifier)
                                .state = 1,
                            icon: const Icon(Ionicons.chatbubble_outline),
                            color: Colors.white,
                          ),
                    index == 2
                        ? GestureDetector(
                      onTap: () {
                        ref.read(mhBottomTabProvider.notifier).state = 0;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: const Icon(Ionicons.apps_outline),
                            ),
                    )
                        : IconButton(
                            onPressed: () => ref
                                .read(mhBottomTabProvider.notifier)
                                .state = 2,
                            icon: const Icon(Ionicons.apps_outline),
                            color: Colors.white,
                          ),
                    index == 3
                        ? GestureDetector(
                      onTap: () {
                        ref.read(mhBottomTabProvider.notifier).state = 0;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 4,
                              ),
                              child: const Icon(Ionicons.document_text_outline),
                            ),
                    )
                        : IconButton(
                            onPressed: () => ref
                                .read(mhBottomTabProvider.notifier)
                                .state = 3,
                            icon: const Icon(Ionicons.document_text_outline),
                            color: Colors.white,
                          )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
