import 'package:babyshower_invitation/config/variables.dart';
import 'package:babyshower_invitation/enum.dart';
import 'package:babyshower_invitation/model/gift_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double mainLidPosition = 0;
  double underLidPosition = 0;
  bool areLidsVisible = true;

  Variables variables = Variables();

  final ScrollController _scrollController = ScrollController();
  final ScrollController _giftsScrollController = ScrollController();
  final GlobalKey _key = GlobalKey();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    String myStartTime = variables.getFormattedStartTime();
    String myEndTime = variables.getFormattedEndTime();


    // void scrollToWidget(double screenMaxHeight) async {
    //   final context = _key.currentContext;
    //   if (context != null) {
    //     // Get the position of the target widget
    //     final RenderBox box = context.findRenderObject() as RenderBox;
    //     final position = box.localToGlobal(Offset.zero, ancestor: null).dy;

    //     // Get the current scroll position and screen height
    //     final currentScrollPosition = _scrollController.offset;
    //     final screenHeight = MediaQuery.of(context).size.height;

    //     // Scroll if the widget is not visible on the screen
    //     if (position < currentScrollPosition || position > currentScrollPosition + screenHeight) {
    //       _scrollController.animateTo(
    //         _scrollController.offset + position - screenMaxHeight / 2,
    //         duration: const Duration(milliseconds: 500),
    //         curve: Curves.easeInOut,
    //       );
    //     }

    //     Future.delayed(const Duration(milliseconds: 500)).then((value) => _focusNode.requestFocus());
    //   }
    // }


    return LayoutBuilder(
      builder: (context, constraints) {

        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Scaffold(
          // floatingActionButton: areLidsVisible ? null : ClipRRect(
          //   borderRadius: BorderRadius.circular(11), // Change the radius here
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          //     child: FloatingActionButton.extended(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(11), // Change the radius here
          //       ),
          //       onPressed: () => scrollToWidget(maxHeight), 
          //       elevation: 0,
          //       hoverElevation: 0,
          //       focusElevation: 0,
          //       highlightElevation: 0,

          //       hoverColor: Colors.transparent,
          //       focusColor: Colors.transparent,
          //       foregroundColor: Colors.transparent,
          //       splashColor: Colors.white.withOpacity(.3),

          //       label: const Text('RSVP', style: TextStyle(color: Color(0xffB6997F), fontWeight: FontWeight.w600, letterSpacing: 1),),
          //       icon: const Icon(Icons.edit, color: Color(0xffB6997F),),
          //       backgroundColor: const Color(0xffB6997F).withOpacity(.3),
          //     ),
          //   ),
          // ),
          body: SizedBox(
            width: maxWidth,
            height: maxHeight,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [

                // MAIN CONTAINER INVITATION
                ScrollConfiguration(
                  behavior: NoScrollbarBehavior(),
                  child: SingleChildScrollView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    controller: _scrollController,
                    physics: const ClampingScrollPhysics(),
                    child: Container(
                      alignment: Alignment.center,
                      width: maxWidth,
                      decoration: BoxDecoration(
                        color: const Color(0xffFAF9F6),
                        image: DecorationImage(
                          image: const AssetImage('./assets/images/brown_layout/floral_background.png',),
                          opacity: .35,
                          fit: BoxFit.none,
                          repeat: ImageRepeat.repeat,
                          scale: 2,
                          colorFilter: ColorFilter.mode(
                            const Color(0xffFAF9F6).withOpacity(0), // Apply opacity
                            BlendMode.multiply,
                          ),
                        )
                      ),
                      child: Container(
                        width:  maxWidth >= 500 ? 500 : maxWidth,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          // color: const Color(0xffFDF7F8),
                          color: const Color(0xffFDF7F8),
                          image: DecorationImage(
                            image: const AssetImage('./assets/images/paper_texture.jpg',),
                            opacity: .3,
                            fit: BoxFit.none,
                            repeat: ImageRepeat.repeat,
                            colorFilter: ColorFilter.mode(
                              const Color(0xffFCDEE6).withOpacity(0), // Apply opacity
                              BlendMode.multiply,
                            ),
                          ),
                          boxShadow: [
                      
                            BoxShadow(
                              color: const Color(0xFF45112e).withOpacity(0.2),
                              offset: const Offset(0, 0),
                              blurRadius: 50,
                              spreadRadius: 12,
                            ),
                          
                          ]
                        ),
                        child: Column(
                          children: [
                  
                            Transform.rotate(
                              angle: 3.14159,
                              child: Image.asset(
                                './assets/images/brown_layout/top_floral_decoration_new.png',
                              )
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 21),
                              child: Column(
                                children: [
                              
                                  const SizedBox(height: 35),
                              
                                  Text(
                                    Variables.tituloPrincipal, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cardo(
                                      textStyle: const TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffB6997F),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                  Text(
                                    Variables.subTituloPrincipal, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cardo(
                                      textStyle: const TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffB6997F),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 50),

                                  Text(
                                    Variables.mensajePrincipal, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffD87D96),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 40),

                                  Text(
                                    Variables.mes, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle( 
                                        color: Color(0xffB6997F),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2
                                      ),
                                    ),
                                  ),

                                  Row(
                                    children: [
                                  
                                      Flexible(
                                        child: Column(
                                          children: [
                                            
                                            Container(
                                              height: 1,
                                              color: const Color(0xffC78F9E),
                                            ),

                                            const SizedBox(height: 1),
                                        
                                            Text(
                                              Variables.diaDeLaSemana, 
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.cardo(
                                                textStyle: const TextStyle( 
                                                  color: Color(0xffD87D96),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1
                                                ),
                                              ),
                                            ),

                                            const SizedBox(height: 1),
                                        
                                            Container(
                                              height: 1,
                                              color: const Color(0xffC78F9E),
                                            ),
                                        
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 7),

                                      Text(
                                        Variables.diaNumerico, 
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.lora(
                                          textStyle: const TextStyle( 
                                            color: Color(0xffD87D96),
                                            fontSize: 42,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 3
                                          ),
                                        ),
                                      ),

                                      const SizedBox(width: 7),

                                      Flexible(
                                        child: Column(
                                          children: [
                                            
                                            Container(
                                              height: 1,
                                              color: const Color(0xffC78F9E),
                                            ),

                                            const SizedBox(height: 1),

                                            Text(
                                              Variables.horaRegular, 
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.cardo(
                                                textStyle: const TextStyle( 
                                                  color: Color(0xffD87D96),
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1
                                                ),
                                              ),
                                            ),

                                            const SizedBox(height: 1),
                                        
                                            Container(
                                              height: 1,
                                              color: const Color(0xffC78F9E),
                                            ),
                                        
                                          ],
                                        ),
                                      ),

                                  
                                    ],
                                  ),


                                  Text(
                                    Variables.anio, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle( 
                                        color: Color(0xffB6997F),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2
                                      ),
                                    ),
                                  ),
                              
                                  const SizedBox(height: 20),

                                  Text(
                                    'JARDÍN DE EVENTOS LA PALMA', 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle( 
                                        letterSpacing: 1,
                                        color: Color(0xffB6997F),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),

                                  // SizedBox(height: 7,),

                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(horizontal: 21),
                                  //   child: Text(
                                  //     Variables.direccion, 
                                  //     textAlign: TextAlign.center,
                                  //     softWrap: true,
                                  //     style: GoogleFonts.lora(
                                  //       textStyle: const TextStyle( 
                                  //         color: Color(0xffC78F9E),
                                  //         letterSpacing: 1,
                                  //         height: 1.3,
                                  //         fontSize: 15,
                                  //         fontWeight: FontWeight.w500
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),

                                  const SizedBox(height: 20),

                                  SizedBox(
                                    width: double.infinity,
                                    child: Wrap(
                                      alignment: WrapAlignment.center,
                                      spacing: 21,
                                      runSpacing: 21,
                                      children: [
                                    
                                        // CONFIRMAR ASISTENCIA
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
                                            overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                                            backgroundColor: const MaterialStatePropertyAll(Color(0xffD4B79D)),
                                            elevation: const MaterialStatePropertyAll(0),
                                            // shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                            //     borderRadius: BorderRadius.circular(7),
                                            //   )
                                            // ),
                                          ),
                                          onPressed: () => launchWhatsApp(context), 
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                    
                                              const Icon(Icons.message_rounded, color: Colors.white, size: 27,),
                                    
                                              const SizedBox(width: 12,),
                                              
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                    
                                                  Text(
                                                    'CONFIRMAR', 
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.quicksand(
                                                      textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1
                                                      ),
                                                    ),
                                                  ),
                                    
                                                  Text(
                                                    'ASISTENCIA', 
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.quicksand(
                                                      textStyle: const TextStyle( 
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1
                                                      ),
                                                    ),
                                                  ),
                                    
                                                ],
                                              ),
                                    
                                            ],
                                          ),
                                                                    
                                        ),

                                        // VER UBICACION
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
                                            overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                                            backgroundColor: const MaterialStatePropertyAll(Color(0xffD4B79D)),
                                            elevation: const MaterialStatePropertyAll(0),
                                            // shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                            //     borderRadius: BorderRadius.circular(7),
                                            //   )
                                            // ),
                                          ),
                                          onPressed: () => launchGoogleMaps(context, Variables.googleMapsUrl), 
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                    
                                              const Icon(Icons.fmd_good_sharp, color: Colors.white, size: 27,),
                                    
                                              const SizedBox(width: 12,),
                                              
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                    
                                                  Text(
                                                    'VER', 
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.quicksand(
                                                      textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1
                                                      ),
                                                    ),
                                                  ),
                                    
                                                  Text(
                                                    'UBICACION', 
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.quicksand(
                                                      textStyle: const TextStyle( 
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.w400,
                                                        height: 1
                                                      ),
                                                    ),
                                                  ),
                                    
                                                ],
                                              ),
                                    
                                            ],
                                          ),
                                                                    
                                        ),
                                    
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 40),

                                  Text(
                                    Variables.mensajeSecundario, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffD46E89),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),
                              
                                  const SizedBox(height: 40),
                                  // const SizedBox(height: 60),

                                  // BlendMask(
                                  //   blendMode: BlendMode.multiply,
                                  //   child: Image.asset('./assets/images/brown_layout/top_flower_separator.png')
                                  // ),

                                  // const SizedBox(height: 10),
                              
                                ],
                              ),
                            ),

                            
                            // Container(
                            //   margin: const EdgeInsets.symmetric(horizontal: 21),
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(7)

                            //   ),
                            //   alignment: Alignment.center,
                            //   child: Column(
                            //     children: [

                            //       Text(
                            //         'CONFIRMACION DE ASISTENCIA', 
                            //         textAlign: TextAlign.center,
                            //         style: GoogleFonts.lora(
                            //           textStyle: const TextStyle(
                            //             color: Color(0xffB6997F),
                            //             letterSpacing: 1.2,
                            //             fontSize: 19,
                            //             fontWeight: FontWeight.w700
                            //           ),
                            //         ),
                            //       ),

                            //       SizedBox(height: 7, key: _key,),

                            //       NameInput(focusNode: _focusNode,),

                            //     ],
                            //   ),
                            // ),

                            // const SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 21),
                              child: Column(
                                children: [
                              
                                  const SizedBox(height: 10),

                                  Image.asset('./assets/images/brown_layout/top_flower_separator_new.png')
                              
                                ],
                              ),
                            ),

                            const SizedBox(height: 12),


                            // const SizedBox(height: 60),

                            Text(
                              'MESA DE REGALOS', 
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: GoogleFonts.lora(
                                textStyle: const TextStyle( 
                                  color: Color(0xffB38F84),
                                  letterSpacing: 3,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),

                            Image.asset('./assets/images/floral_divider_simple.png'),
                            
                            const SizedBox(height: 25),

                            Container(
                              color: const Color(0xffB38F84).withOpacity(.3),
                              padding: const EdgeInsets.only(bottom: 50, top: 50),
                              child: SizedBox(
                                height: maxHeight * .65,
                                child: LayoutBuilder(
                                  builder: (context, giftWrapConstraints) {
                                    return RawScrollbar(
                                      controller: _giftsScrollController,
                                      trackBorderColor: Colors.transparent,
                                      crossAxisMargin: 1,
                                      padding: const EdgeInsets.only(right: 5, top: 30, bottom: 30),
                                      thumbColor: const Color(0xff805938),
                                      radius: const Radius.circular(100),
                                      thumbVisibility: true,
                                      trackColor: Colors.black.withOpacity(.1),
                                      trackVisibility: true,
                                      trackRadius: const Radius.circular(100),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 21),
                                        child: ListView.builder(
                                          controller: _giftsScrollController,
                                          physics: const ClampingScrollPhysics(),
                                          itemCount: Variables.urlsRegalos.length,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index){
                                        
                                            Gift gift = Variables.urlsRegalos[index];
                                        
                                            return GiftTile(
                                              maxWidth: giftWrapConstraints.maxWidth,
                                              store: gift.store, 
                                              giftImage: './assets/gifts/gift_${index+1}.jpeg', 
                                              giftLabel: gift.label, 
                                              giftUrl: gift.url,
                                            );
                                        
                                          }
                                        ),
                                      ),
                                    );
                                  }
                                ),
                              ),
                            ),

                            const SizedBox(height: 42),

                            ElevatedButton(
                              onPressed: () => createGoogleCalendarEvent(context, myStartTime, myEndTime),
                              style: ButtonStyle(
                                padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 12, horizontal: 21)),
                                overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                                backgroundColor: const MaterialStatePropertyAll(Color(0xffD4B79D)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  
                                  const Icon(Icons.calendar_month_outlined, color: Colors.white, size: 27,),
                              
                                  const SizedBox(width: 11),
                              
                                  Flexible(
                                    child: Text(
                                      'Agregar a Google Calendar', 
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                      style: GoogleFonts.lora(
                                        textStyle: const TextStyle( 
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ),
                              
                                ],
                              ),
                            ),


                            const SizedBox(height: 50),

                            // Text(
                            //   'UBICACION', 
                            //   textAlign: TextAlign.center,
                            //   softWrap: true,
                            //   style: GoogleFonts.lora(
                            //     textStyle: const TextStyle( 
                            //       color: Color(0xffB38F84),
                            //       letterSpacing: 3,
                            //       fontSize: 21,
                            //       fontWeight: FontWeight.w700
                            //     ),
                            //   ),
                            // ),

                            // Image.asset('./assets/images/floral_divider_simple.png'),
                            
                            // const SizedBox(height: 35),



                            // const SizedBox(height: 21),

                            // ElevatedButton(
                            //   onPressed: () => launchGoogleMaps(context, Variables.googleMapsUrl),
                            //   style: ButtonStyle(
                            //     overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                            //     backgroundColor: const MaterialStatePropertyAll(Color(0xffD4B79D)),
                            //   ),
                            //   child: Row(
                            //     mainAxisSize: MainAxisSize.min,
                            //     children: [

                            //       const Icon(Icons.location_on_outlined, color: Colors.white,),

                            //       const SizedBox(width: 12),

                            //       Text(
                            //         'Abrir en Google Maps', 
                            //         textAlign: TextAlign.center,
                            //         softWrap: true,
                            //         style: GoogleFonts.lora(
                            //           textStyle: const TextStyle( 
                            //             color: Colors.white,
                            //             fontSize: 17,
                            //             fontWeight: FontWeight.w500
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),














                        
                            
                            const SizedBox(height: 50),

                            Image.asset(
                              './assets/images/brown_layout/top_floral_decoration_new.png',
                            )
                        
                        
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
       
            
                // UNDER LID
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOut,
                  top: 0,
                  right: underLidPosition,
                  child: Visibility(
                    visible: areLidsVisible,
                    child: Container(
                      width: maxWidth,
                      height: maxHeight,
                      decoration: BoxDecoration(
                        color: const Color(0xffFAF9F6),
                        image: DecorationImage(
                          image: const AssetImage('./assets/images/brown_layout/floral_swril.png',),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color(0xffFAF9F6).withOpacity(0.5), // Apply opacity
                            BlendMode.dstATop,
                          ),
                        )
                      ),
                    ),
                  ),
                ),
            
                
                // MAIN LID
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.easeInOut,
                  top: 0,
                  right: mainLidPosition,
                  child: Visibility(
                    visible: areLidsVisible,
                    child: InkWell(
                      onTap: () async {
                    
                        setState(() {
                          mainLidPosition = maxWidth;
                          underLidPosition = -maxWidth;
                        });
                    
                        await Future.delayed(const Duration(milliseconds: 2000));
                    
                        setState(() {
                          areLidsVisible = false;
                        });
                    
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: (maxWidth * .5)-(maxHeight *.1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                  
                            Container(
                              width: maxWidth,
                              height: maxHeight,
                              decoration: BoxDecoration(
                                color: const Color(0xffD5B79C),
                                border: Border.all(
                                  color: const Color(0xffD5B79C),
                                  width: 2,
                                )
                        
                              ),
                            ),
                                  
                            SizedBox(
                              height: maxHeight,
                              child: Image.asset(maxWidth >= 500 ? './assets/images/brown_layout/main_lid_big.png' : './assets/images/brown_layout/main_lid.png')
                            )
                                  
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                    
                                        
              ],
            ),
          ),
        );
      }
    );
  }
}








class GiftTile extends StatelessWidget {
  const GiftTile({
    super.key, required this.store, required this.giftImage, required this.giftLabel, required this.giftUrl, required this.maxWidth,
  });

  final double maxWidth;
  final OnlineStore store;
  final String giftImage;
  final String giftLabel;
  final String giftUrl;

  // style: ButtonStyle(
  //   padding: const MaterialStatePropertyAll(EdgeInsets.all(21)),
  //   surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
  //   overlayColor: MaterialStatePropertyAll(const Color(0xffF9C8D5).withOpacity(.15)),
  //   backgroundColor: const MaterialStatePropertyAll(Colors.white),
  //   elevation: const MaterialStatePropertyAll(3),
  //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(0),
  //     )
  //   ),
  // ),

  @override
  Widget build(BuildContext context) {


    String storeIcon = '';

    if(store == OnlineStore.Amazon){
      storeIcon = './assets/icons/amazon_logo.png';
    }else if(store == OnlineStore.Walmart){
      storeIcon = './assets/icons/walmart_logo.png';
    }else if(store == OnlineStore.Target){
      storeIcon = './assets/icons/target_logo.png';
    }

    return Container(
      padding: const EdgeInsets.all(0),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(bottom: 21),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [

          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.15),
            offset: const Offset(2, 2),
            blurRadius: 4,
            spreadRadius: 0,
          ),
      
        ]
      ),
      child: Column(
        children: [
      
          Padding(
            padding: EdgeInsets.all(maxWidth * .03),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    width: maxWidth * .17,
                    child: AspectRatio(
                      aspectRatio: 1/1,
                      child: Image.asset(giftImage),
                    ),
                  ),
                ),

                const SizedBox(width: 11),
            
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      Text(
                        giftLabel, 
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle( 
                            color: Colors.black.withOpacity(.93),
                            fontSize: 15,
                            height: 1.2,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
            
                      const SizedBox(height: 11,),
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: SizedBox(
                              width: 15,
                              height: 15,
                              // width: screenWidth * .05,
                              // height: screenWidth * .05,
                              child: Image.asset(
                                storeIcon,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      
                          const SizedBox(width: 7),
                      
                          SizedBox(
                            child: Text(
                              store.name, 
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 15,
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ),
                      
                        ],
                      ),
                  
                    ],
                  ),
                )
            
            
            
                
              ],
            ),
          ),
        
          ElevatedButton(
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: maxWidth * .02)),
              overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
              backgroundColor: const MaterialStatePropertyAll(Color(0xffDAC0AA)),
              elevation: const MaterialStatePropertyAll(0),
              shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(0)),
                )
              ),
            ),
            onPressed: () => launchGiftLink(context, giftUrl), 
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Icon(Icons.card_giftcard, color: Color(0xff805938),),
                
                SizedBox(width: 9,),
                
                Text(
                  'Regalar',
                  maxLines: 1, 
                  style: TextStyle(
                    color: Color(0xff805938), 
                    fontWeight: FontWeight.w500, 
                    fontSize: 15,
                  ),
                ),
                
              ],
            ),
                
          )
        
        
        
        
        ],
      ),
    );
  }
}


class NoScrollbarBehavior extends ScrollBehavior {
  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}



Future<void> launchGoogleMaps(BuildContext context, String googleMapsUrl) async {

  if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
    await launchUrl(Uri.parse(googleMapsUrl), mode: LaunchMode.externalApplication);
  } else {
    // Handle the case where WhatsApp is not installed
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No se encontro Google maps en este dispositivo. 🙅‍♂️'),
        duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
      ),
    );
    
  }
}

Future<void> launchWhatsApp(BuildContext context) async {

  // if (fullname.isEmpty){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text('Es necesario tu Nombre y Apellido'),
  //       duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
  //     ),
  //   );
  //   return;
  // }
  
  String message = 'Confirmo mi asistencia al baby shower!.';
  String contact = Variables.numeroDeTelefono;
  
  String webUrl = 'https://api.whatsapp.com/send/?phone=$contact&text=$message';
  // String url = "whatsapp://send?phone=+526645870001&text=${Uri.encodeComponent(message)}";

  if (await canLaunchUrl(Uri.parse(webUrl))) {
    await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
  } else {
    // Handle the case where WhatsApp is not installed
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No se encontro WhatsApp en este dispositivo. 🙅‍♂️'),
        duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
      ),
    );
    
  }
}

Future<void> launchGiftLink(BuildContext context, String giftUrl) async {

  if (await canLaunchUrl(Uri.parse(giftUrl))) {
    await launchUrl(Uri.parse(giftUrl), mode: LaunchMode.externalApplication);
  } else {
    // Handle the case where WhatsApp is not installed
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('No se pudo abrir tienda en este dispositivo. 🙅‍♂️'),
        duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
      ),
    );
    
  }
}

Future<void> createGoogleCalendarEvent(BuildContext context, String inStartTime, String inEndTime) async {

  String title = Variables.calendarioTitulo;
  String description = Variables.calendarioDescripcion;
  String location = Variables.calendarioLocation;
  String startTime = inStartTime;
  String endTime = inEndTime;
  // String startTime = '20230815T090000Z'; // Use the correct format: YYYYMMDDTHHmmssZ
  // String endTime = '20230815T100000Z';

  final calendarUrl = Uri.encodeFull(
      'https://www.google.com/calendar/render?action=TEMPLATE'
      '&text=$title'
      '&details=$description'
      '&location=$location'
      '&dates=$startTime/$endTime');

  if (await canLaunchUrl(Uri.parse(calendarUrl))) {
    await launchUrl(Uri.parse(calendarUrl), mode: LaunchMode.externalApplication);
  } else {
    // Handle the case where WhatsApp is not installed
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('El calendario de Google no esta disponible. 🙅‍♂️'),
        duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
      ),
    );
    
  }

}








