import 'package:babyshower_invitation/config/variables.dart';
import 'package:babyshower_invitation/enum.dart';
import 'package:babyshower_invitation/model/gift_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double mainLidPosition = 0;
  double underLidPosition = 0;
  bool areLidsVisible = true;

  Variables variables = Variables();


  @override
  Widget build(BuildContext context) {

    String myStartTime = variables.getFormattedStartTime();
    String myEndTime = variables.getFormattedEndTime();


    return LayoutBuilder(
      builder: (context, constraints) {

        double maxWidth = constraints.maxWidth;
        double maxHeight = constraints.maxHeight;

        return Scaffold(
          body: SizedBox(
            width: maxWidth,
            height: maxHeight,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [

                Container(
                  alignment: Alignment.center,
                  width: maxWidth,
                  height: maxHeight,
                  decoration: BoxDecoration(
                    color: Color(0xffF9B8CA),
                    image: DecorationImage(
                      image: AssetImage('./assets/images/floral_background.png',),
                      opacity: .3,
                      fit: BoxFit.none,
                      repeat: ImageRepeat.repeat,
                      scale: 2,
                      colorFilter: ColorFilter.mode(
                        Color(0xffFCDEE6).withOpacity(0), // Apply opacity
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
                        image: AssetImage('./assets/images/paper_texture.jpg',),
                        opacity: .3,
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Color(0xffFCDEE6).withOpacity(0), // Apply opacity
                          BlendMode.multiply,
                        ),
                      ),
                      boxShadow: [

                        BoxShadow(
                          color: Color(0xFF45112e).withOpacity(0.5),
                          offset: Offset(0, 0),
                          blurRadius: 50,
                          spreadRadius: 12,
                        ),
                      
                      ]
                    ),
                    child: ScrollConfiguration(
                      behavior: NoScrollbarBehavior(),
                      child: SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                          children: [
                  
                            Transform.rotate(
                              angle: 3.14159,
                              child: BlendMask(
                                blendMode: BlendMode.multiply,
                                child: Image.asset(
                                  './assets/images/Pink_purple_floral_garden_background_with_watercolor.jpg',
                                  // colorBlendMode: BlendMode.multiply,
                                ),
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
                                      textStyle: TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffB38F84),
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                  Text(
                                    Variables.subTituloPrincipal, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.cardo(
                                      textStyle: TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffB38F84),
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
                                      textStyle: TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffD46E89),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 40),

                                  Text(
                                    Variables.hora, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: TextStyle( 
                                        color: Color(0xffB38F84),
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
                                                textStyle: TextStyle( 
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
                                          textStyle: TextStyle( 
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
                                              Variables.mes, 
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.cardo(
                                                textStyle: TextStyle( 
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
                                      textStyle: TextStyle( 
                                        color: Color(0xffB38F84),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2
                                      ),
                                    ),
                                  ),
                              
                                  const SizedBox(height: 40),

                                  Text(
                                    Variables.mensajeSecundario, 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: TextStyle( 
                                        letterSpacing: 5,
                                        color: Color(0xffD46E89),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),
                              
                                  const SizedBox(height: 60),

                                  BlendMask(
                                    blendMode: BlendMode.multiply,
                                    child: Image.asset('./assets/images/top_flower_separator.png')
                                  ),

                                  const SizedBox(height: 10),
                              
                                ],
                              ),
                            ),

                            
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 21),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7)

                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [

                                  Text(
                                    'CONFIRMACION DE ASISTENCIA', 
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: const TextStyle(
                                        color: Color(0xffD46E89),
                                        letterSpacing: 1.2,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 7),

                                  NameInput(),

                                ],
                              ),
                            ),

                            const SizedBox(height: 10),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 21),
                              child: Column(
                                children: [
                              
                                  const SizedBox(height: 10),

                                  BlendMask(
                                    blendMode: BlendMode.multiply,
                                    child: Image.asset('./assets/images/bottom_flower_separator.png')
                                  )
                              
                                ],
                              ),
                            ),

                            const SizedBox(height: 42),


                            ElevatedButton(
                              onPressed: () => createGoogleCalendarEvent(context, myStartTime, myEndTime),
                              style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                                backgroundColor: const MaterialStatePropertyAll(Color(0xffD46E89)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 7),
                                    width: 35,
                                    height: 35,
                                    child: Image.asset('./assets/icons/google-calendar.png')
                                  ),
                              
                                  const SizedBox(width: 11),
                              
                                  Flexible(
                                    child: Text(
                                      'Agregar a Google Calendar', 
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                      style: GoogleFonts.lora(
                                        textStyle: TextStyle( 
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    ),
                                  ),
                              
                                ],
                              ),
                            ),

                            const SizedBox(height: 60),

                            Text(
                              'MESA DE REGALOS', 
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: GoogleFonts.lora(
                                textStyle: TextStyle( 
                                  color: Color(0xffB38F84),
                                  letterSpacing: 3,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),

                            Image.asset('./assets/images/floral_divider_simple.png'),
                            
                            const SizedBox(height: 42),

                            LayoutBuilder(
                              builder: (context, giftWrapConstraints) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 21),
                                  child: Wrap(
                                    spacing: 30,
                                    runSpacing: 30,
                                    children: Variables.urlsRegalos.asMap().entries.map((giftItem) {

                                      int index = giftItem.key;
                                      Gift gift = giftItem.value;

                                      return GiftItem(
                                        giftWrapConstraints: giftWrapConstraints, 
                                        store: gift.store, 
                                        giftImage: './assets/gifts/gift_${index+1}.jpg',
                                        giftLabel: gift.label, 
                                        giftUrl: gift.url,
                                      );

                                    }).toList(),
                                  
                                  ),
                                );
                              }
                            ),

                            const SizedBox(height: 70),

                            Text(
                              'UBICACION', 
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: GoogleFonts.lora(
                                textStyle: TextStyle( 
                                  color: Color(0xffB38F84),
                                  letterSpacing: 3,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),

                            Image.asset('./assets/images/floral_divider_simple.png'),
                            
                            const SizedBox(height: 35),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 21),
                              child: Text(
                                Variables.direccion, 
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: GoogleFonts.lora(
                                  textStyle: TextStyle( 
                                    color: Color(0xffD46E89),
                                    letterSpacing: 3,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 21),

                            ElevatedButton(
                              onPressed: () => launchGoogleMaps(context, Variables.googleMapsUrl),
                              style: ButtonStyle(
                                overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                                backgroundColor: const MaterialStatePropertyAll(Color(0xffD46E89)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [

                                  const Icon(Icons.location_on_outlined, color: Colors.white,),

                                  const SizedBox(width: 12),

                                  Text(
                                    'Abrir en Google Maps', 
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: GoogleFonts.lora(
                                      textStyle: TextStyle( 
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),














                        
                            
                            const SizedBox(height: 100),

                            BlendMask(
                              blendMode: BlendMode.multiply,
                              child: Image.asset(
                                './assets/images/Pink_purple_floral_garden_background_with_watercolor.jpg',
                              ),
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
                        color: Color(0xffFCDEE6),
                        image: DecorationImage(
                          image: AssetImage('./assets/images/floral_swril.png',),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Color(0xffFCDEE6).withOpacity(0.5), // Apply opacity
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
                    
                        await Future.delayed(Duration(milliseconds: 2000));
                    
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
                                color: Color(0xffE788A2),
                                border: Border.all(
                                  color: Color(0xffE788A2),
                                  width: 2,
                                )
                        
                              ),
                            ),
                                  
                            Container(
                              height: maxHeight,
                              child: Image.asset('./assets/images/main_lid.png')
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


// ignore: constant_identifier_names

class GiftItem extends StatelessWidget {
  const GiftItem({
    super.key, required this.giftWrapConstraints, required this.store, required this.giftImage, required this.giftLabel, required this.giftUrl,
  });

  final BoxConstraints giftWrapConstraints; 
  final OnlineStore store;
  final String giftImage;
  final String giftLabel;
  final String giftUrl;

  @override
  Widget build(BuildContext context) {

    String storeIcon = '';

    if(store == OnlineStore.Amazon){
      storeIcon = './assets/icons/amazon_logo.png';
    }else if(store == OnlineStore.Walmart){
      storeIcon = './assets/icons/walmart_logo.png';
    }


    return Container(
      width: giftWrapConstraints.maxWidth * .4,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
    
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.15),
            offset: Offset(0, 0),
            blurRadius: 3,
            spreadRadius: 0,
          ),
          
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            
          // GIFT IMAGE
          AspectRatio(
            aspectRatio: 1/1,
            child: Container(
              padding: EdgeInsets.all(7),
              child: Image.asset(giftImage)
            ),
          ),
          
          SizedBox(height: 15),
      
          // GIFT LABEL
          Container(
            child: Text(
              giftLabel, 
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                height: 1.2,
                fontWeight: FontWeight.w600,
              ),
            )
          ),
          
          SizedBox(height: 7,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
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
          
              SizedBox(width: 7),
          
              Container(
                child: Text(
                  store.name, 
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ),
          
            ],
          ),
          
          
          SizedBox(height: 22),
    
          ElevatedButton(
            style: ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
              backgroundColor: const MaterialStatePropertyAll(Color(0xffD46E89)),
              elevation: const MaterialStatePropertyAll(0),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                )
              ),
            ),
            onPressed: () => launchGiftLink(context, giftUrl), 
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
    
                Icon(Icons.card_giftcard, color: Colors.white,),
                
                SizedBox(width: 9,),
                Flexible(
                  child: Text(
                    'Regalar',
                    maxLines: 1, 
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.w500, 
                      fontSize: 15,
                    ),
                  )
                ),
    
    
    
    
              ],
            ),
    
          )
          
        
      
      
      
        ],
      ),
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController textEditingController = TextEditingController();

    return LayoutBuilder(
      builder: (context, inConstraints) {
        return Container(
          padding: EdgeInsets.only(left: 21, right: inConstraints.maxWidth * .016, top: 0, bottom: 0 ),
          decoration: BoxDecoration(
            color: const Color(0xffFCF3F5),
            borderRadius: BorderRadius.circular(9),
            border: Border.all(
              width: 1.2,
              color: Color(0xffD46E89)
            )
          ),
          child: Row(
            children: [
          
              Flexible(
                child: TextField(
                  controller: textEditingController,
                  onSubmitted: (value) => launchWhatsApp(context, textEditingController.text),
                  cursorColor: const Color(0xffD46E89),
                  textCapitalization: TextCapitalization.words,
                  style: const TextStyle(
                    color: Color(0xffD46E89)
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    border: InputBorder.none,
                    hintText: 'Nombre y Apellido',
                    hintStyle: TextStyle(
                      color: Color(0xffE199AC),
                      fontSize: 17
                    )
                  ),
                ),
              ),
    
              SizedBox(width: inConstraints.maxWidth * .02),
        
              ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(.3)),
                  backgroundColor: const MaterialStatePropertyAll(Color(0xffD46E89)),
                  elevation: const MaterialStatePropertyAll(0),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    )
                  ),
                ),
                onPressed: () => launchWhatsApp(context, textEditingController.text), 
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    
                    Text(
                      'Enviar', 
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lora(
                        textStyle: const TextStyle( 
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
        
        
        
        
                  ],
                ),
        
              )
          
            ],
          ),
        );
      }
    );
  }
}

class NoScrollbarBehavior extends ScrollBehavior {
  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

// Applies a BlendMode to its child.
class BlendMask extends SingleChildRenderObjectWidget {
  final BlendMode blendMode;
  final double opacity;

  const BlendMask({
    required this.blendMode,
    this.opacity = 1.0,
    super.key,
    super.child,
  });

  @override
  RenderObject createRenderObject(context) {
    return RenderBlendMask(blendMode, opacity);
  }

  @override
  void updateRenderObject(BuildContext context, RenderBlendMask renderObject) {
    renderObject.blendMode = blendMode;
    renderObject.opacity = opacity;
  }
}

class RenderBlendMask extends RenderProxyBox {
  BlendMode blendMode;
  double opacity;

  RenderBlendMask(this.blendMode, this.opacity);

  @override
  void paint(context, offset) {
    // Create a new layer and specify the blend mode and opacity to composite it with:
    context.canvas.saveLayer(
      offset & size,
      Paint()
        ..blendMode = blendMode
        ..color = Color.fromARGB((opacity * 255).round(), 255, 255, 255),
    );

    super.paint(context, offset);

    // Composite the layer back into the canvas using the blendmode:
    context.canvas.restore();
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

Future<void> launchWhatsApp(BuildContext context, String fullname) async {

  if (fullname.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Es necesario tu Nombre y Apellido'),
        duration: Duration(seconds: 2), // Customize the duration (default 4 seconds)
      ),
    );
    return;
  }
  
  String message = 'Confirmo mi asistencia como "$fullname" al baby shower!.';
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








