import 'package:babyshower_invitation/enum.dart';
import 'package:babyshower_invitation/model/gift_model.dart';
import 'package:intl/intl.dart';

class Variables{

  String getFormattedStartTime(){
    return DateFormat("yyyyMMdd'T'HHmmss").format(DateTime.parse(startTime));
  }

  String getFormattedEndTime(){
    return DateFormat("yyyyMMdd'T'HHmmss").format(DateTime.parse(endTime));
  }

  // MENSAJES PRINCIPALES
  static String tituloPrincipal = 'BABY SHOWER EN HONOR A';
  static String subTituloPrincipal = 'HANNAH SOFIA';
  static String mensajePrincipal = 'PRONTO LLEGARÁ NUESTRA BEBÉ Y POR ESO QUEREMOS COMPARTIR CONTIGO ESTA FECHA TAN ESPECIAL';
  static String mensajeSecundario = 'TU PRESENCIA SIGNIFICA MUCHO PARA NOSOTROS';

  // FEHCA Y HORA
  static String hora = '14:00';
  static String horaRegular = '02:00 PM';
  static String horaFin = '20:00';
  static String diaDeLaSemana = 'DOMINGO';
  static String diaNumerico = '06';
  static String mes = 'OCTUBRE';
  static String mesNumerico = '10';
  static String anio = '2024';

  static String direccion = 'Isaac Belmonte Tovar LB, Colas Delmatamoros, 22204 Tijuana, B.C.';
  static String numeroDeTelefono = '+526645973749';

  // GOOGLE CALENDAR
  static String calendarioTitulo = 'Baby Shower Hannah Sofia';
  static String calendarioDescripcion = 'Pronto llegará nuestra bebé y por eso queremos compartir contigo esta fecha tan especial, tu presencia significa mucho para nosotros.';
  static String calendarioLocation = '32.509317, -116.854709';
  String startTime = '$anio-$mesNumerico-$diaNumerico $hora';
  String endTime = '$anio-$mesNumerico-$diaNumerico $horaFin';

  static String googleMapsUrl = 'https://maps.app.goo.gl/XhQcNsTL9w8ebNEy7';

  // REGALOS
  static List<Gift> urlsRegalos = [
    
    Gift(
      store: OnlineStore.Target, 
      label: 'Touched by Nature Baby Girl Organic Cotton Zipper Sleep and Play 3pk, Heart', 
      url: 'https://www.target.com/p/touched-by-nature-baby-girl-organic-cotton-zipper-sleep-and-play-3pk-heart-0-3-months/-/A-82661843 https://www.target.com/p/touched-by-nature-baby-girl-organic-cotton-zipper-sleep-and-play-3pk-heart/-/A-82661844?preselect=82661843#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Burt\'s Bees Baby® Baby Girls\' Rugby Striped Organic Cotton Sleep N\' Play - Pink', 
      url: 'https://www.target.com/p/burt-s-bees-baby-baby-girls-rugby-striped-organic-cotton-sleep-n-play-pink/-/A-77425756?preselect=77332855#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby Girls Bathrobe Towel, Slippers and Turban, Bath Robe Spa Set for infants 0-24 Months', 
      url: 'https://www.target.com/p/rising-star-pink-baby-girls-bathrobe-towel-slippers-and-turban-bath-robe-spa-set-for-infants-0-9-months/-/A-90043245'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Hudson Baby Faux Shearling Bunting 1pk, Light Pink', 
      url: 'https://www.target.com/p/hudson-baby-faux-shearling-bunting-1pk-light-pink/-/A-85455491?preselect=85455489#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Hudson Baby Infant Girl Plush Bathrobe and Toy Set, Modern Unicorn, One Size', 
      url: 'https://www.target.com/p/hudson-baby-infant-girl-plush-bathrobe-and-toy-set-modern-unicorn-one-size/-/A-82820746'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Touched by Nature Baby Girl Organic Cotton Zipper Sleep and Play 3pk, Pink Rose', 
      url: 'https://www.target.com/p/touched-by-nature-baby-girl-organic-cotton-zipper-sleep-and-play-3pk-pink-rose-0-3-months/-/A-82661908'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Boppy Nursing Pillow Original Support, Pink Garden', 
      url: 'https://www.target.com/p/boppy-nursing-pillow-original-support-pink-garden/-/A-82677848#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Milk Snob Luxe Cover - Dark Pink', 
      url: 'https://www.target.com/p/milk-snob-luxe-cover-dark-pink/-/A-90606335'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'WubbaNub Pacifier', 
      url: 'https://www.target.com/p/wubbanub-pacifier/-/A-86779537?preselect=79499826#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Itzy Ritzy Sweetie Shake Teether - Strawberry', 
      url: 'https://www.target.com/p/itzy-ritzy-sweetie-shake-teether-strawberry/-/A-89249414#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'VTech 2.8" Digital Video Baby Monitor with Night Light - White - VM3258', 
      url: 'https://www.target.com/p/vtech-2-8-34-digital-video-baby-monitor-with-night-light-white-vm3258/-/A-83905761'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby Trend Secure Lift Infant Car Seat', 
      url: 'https://www.target.com/p/baby-trend-secure-lift-infant-car-seat-madrid-pink/-/A-86874073'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby Trend Trend-E Nursery Center Playard', 
      url: 'https://www.target.com/p/baby-trend-trend-e-nursery-center-playard-rising-star/-/A-78207516?preselect=78207523#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Costway 3-in-1 Baby Bassinet Beside Sleeper Crib with 5-Level Adjustable Heights', 
      url: 'https://www.target.com/p/costway-3-in-1-baby-bassinet-beside-sleeper-crib-with-5-level-adjustable-heights-pink/-/A-91835354'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Evenflo 6pk Balance Standard-Neck Anti-Colic Baby Bottles - 4oz', 
      url: 'https://www.target.com/p/evenflo-6pk-balance-standard-neck-anti-colic-baby-bottles-4oz/-/A-76153168'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Dr. Brown\'s Anti-Colic Options+ Narrow Baby Bottle Newborn Gift Set - 0-6m - Pink', 
      url: 'https://www.target.com/p/dr-brown-39-s-anti-colic-options-narrow-baby-bottle-newborn-gift-set-0-6m-pink/-/A-52810901#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Dr. Brown\'s Anti-Colic Options+ Wide-Neck Baby Bottle - Woodland Designs - 5 fl oz/2pk', 
      url: 'https://www.target.com/p/dr-brown-39-s-anti-colic-options-wide-neck-baby-bottle-woodland-designs-5-fl-oz-2pk/-/A-90573797#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby Girls\' 3pk Cotton Hats - Cloud Island™ Pink', 
      url: 'https://www.target.com/p/baby-girls-39-3pk-cotton-hats-cloud-island-8482-pink-0-6m/-/A-89659389?preselect=89659389#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby Girls\' Beanie - Cat & Jack™ Pink', 
      url: 'https://www.target.com/p/baby-girls-39-beanie-cat-38-jack-8482-pink-0-6m/-/A-90632017?preselect=90632017#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Arctic Gear Infant Cotton Cuff Hat with Double Poms', 
      url: 'https://www.target.com/p/arctic-gear-infant-cotton-cuff-with-double-poms-winter-hat-rose-tan-pink-with-shepard-poms/-/A-86468193?preselect=86468193#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Hudson Baby Infant Girl Cotton Scratch Mittens, Pink Floral, 0-6 Months', 
      url: 'https://www.target.com/p/hudson-baby-infant-girl-cotton-scratch-mittens-pink-floral-0-6-months/-/A-82734130'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Carter\'s Just One You® 8pk Baby Girls\' Ankle G Basic Terry Socks', 
      url: 'https://www.target.com/p/carter-s-just-one-you-8pk-baby-girls-ankle-g-basic-terry-socks/-/A-89943336?preselect=89599328#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Carter\'s Just One You®️ Baby Girls\' Const G Bear Slippers - Light Pink', 
      url: 'https://www.target.com/p/carter-39-s-just-one-you-174-baby-girls-const-g-bear-slipper/-/A-91212371'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Carter\'s Just One You® Baby Girls\' Knitted Slippers - Pink Newborn', 
      url: 'https://www.target.com/p/carter-39-s-just-one-you-174-baby-knitted-slippers-pink-newborn/-/A-87092854#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Gerber Baby Boys\' and Girls\' Cozy Booties', 
      url: 'https://www.target.com/p/gerber-baby-cozy-booties-pink-6-9-months/-/A-90074004'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Bearington Baby Lamby Plush Stuffed Animal Lamb Sock Top Slipper Booties', 
      url: 'https://www.target.com/p/bearington-baby-lamby-plush-stuffed-animal-lamb-sock-top-slipper-booties/-/A-92823101#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Momcozy S9 Pro-K Hands-Free Wearable Electric Breast Pump Set', 
      url: 'https://www.target.com/p/momcozy-double-s9-pro-k-wearable-electric-breast-pump/-/A-89164479'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Hudson Baby Infant Girl Cotton Bib and Headband Set 5pk, Winter Forest, One Size', 
      url: 'https://www.target.com/p/hudson-baby-infant-girl-cotton-bib-and-headband-set-5pk-winter-forest-one-size/-/A-82287462#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Target, 
      label: 'Baby 3pk Muslin Bandana Bib - Cloud Island™', 
      url: 'https://www.target.com/p/baby-3pk-muslin-bandana-bib-cloud-island-8482-pink/-/A-89659404?preselect=89659404#lnk=sametab'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Kaipiclos Ropa de bebé recién nacida, mameluco de punto acanalado, pantalones con estampado de margaritas, ropa de bebé para niñas de 0, 3, 6, 12, 18, 24 meses', 
      url: 'https://www.amazon.com/Kaipiclos-acanalado-pantalones-estampado-margaritas/dp/B0D5XNWFNS/ref=mp_s_a_1_4?crid=10AEN6OC0OW0G&dib=eyJ2IjoiMSJ9.M2fDswDmOLGmCyT2B6lKK-mEwjKm4aYCPIN1O3IgHoDsMlWy_3pHvIR-iZG2_XsuEnunI5QHDoUJdtOeKoxVS195cVN7ItNXAPYU9y9oOcDe57FrI5AjJw4aVLNlAsmyS8r_E2nRazdi1HcSF1ckafiOM89mC-IUErA754wVaJy8i12m8BWoZHxgr188bqxHiFNgggZyyc5Nbs_gxfHUA-dQGyx3-lF1OIpArX79J9xz3yOJclaC_aHfu02XF4evzrkn56FPb2rPRqlkkK6oXneSuOlSQ52ze3luLiCQhnY.b9_vscCNtdqhqSxZMyl59XZB85hPWUwex7AT-CnC2bk&dib_tag=se&keywords=baby%2Bgirl%2Bclothes&qid=1723527043&sprefix=baby%2Bg%2Caps%2C147&sr=8-4&th=1&psc=1'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'HonestBaby Pijama de una pieza con pies para dormir y jugar para niña con cremallera frontal, pijama de algodón', 
      url: 'https://www.amazon.com/HonestBaby-cremallera-frontal-algodón-orgánico/dp/B0D5YSPRDS/ref=mp_s_a_1_32?crid=38IDMXF2B1UWY&dib=eyJ2IjoiMSJ9.pGsCYUd5iTHa7mT8XijNhy4CWV7becepfE6p1-Xc8m5D6YehUIzjU3SokYfY_vnQZsYC3BzNBjvvJ2SRg79gpQk6Dl5N8459QUFeTDXz4MnF3AnCFo9cxVNU_pgOXARKSKqMZg7CokhlFQgP9Mtw52xlnxf4QClX6NNfOyTQv1BP8ZwTdiC04YdWjxtJixTsbOrHFexLtVi-jsnnUCrhWdwdqnI0rSQtnI4CYXXVj9DrjmIyBmD8SdsbbZ9N7kjitszwKdleoWuD4_R2OBoAKLYTYcUOtmdfV_81qz-EamM.UHr53SkChvCTngJ1ZcCCuqmbffzcsipBjeXnmRvlo4g&dib_tag=se&keywords=baby%2Bgirl%2Bclothes&qid=1723527198&sprefix=%2Caps%2C124&sr=8-32&th=1&psc=1'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Conjunto de mameluco y pantalón de manga larga para niña de 3 piezas', 
      url: 'https://www.amazon.com/Conjunto-mameluco-pantalón-piezas-corazones/dp/B0983JZ4N5/ref=sxin_31_pa_sp_phone_search_thematic_sspa?content-id=amzn1.sym.8fa283c4-e152-4366-8f89-f0c0ea9d4d90%3Aamzn1.sym.8fa283c4-e152-4366-8f89-f0c0ea9d4d90&crid=38IDMXF2B1UWY&cv_ct_cx=baby+girl+clothes&dib=eyJ2IjoiMSJ9.W_bNBS0fcVH2s5QXaEiQYEC0iM-92kHi6f4WIfFx76E.yLDmIPZ2gOWh5Eu2dU2s88jnJ15neBck0XGhEbuwKEI&dib_tag=se&keywords=baby+girl+clothes&pd_rd_i=B0983JZ4N5&pd_rd_r=8a25e31f-6898-431a-9ad3-38f060adb981&pd_rd_w=qgwCj&pd_rd_wg=1OR0k&pf_rd_p=8fa283c4-e152-4366-8f89-f0c0ea9d4d90&pf_rd_r=2A0FK4TA7QWAE7KRJG34&qid=1723527148&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=%2Caps%2C124&sr=1-2-183302c6-8dec-4386-8e58-6031e7be5ad8-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9waG9uZV9zZWFyY2hfdGhlbWF0aWM&psc=1'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Aalizzwell Conjunto de mameluco acanalado para bebé recién nacido prematuro para otoño e invierno', 
      url: 'https://www.amazon.com/Aalizzwell-Conjunto-mameluco-acanalado-prematuro/dp/B09HQDNH12/ref=sxin_31_pa_sp_phone_search_thematic_sspa?content-id=amzn1.sym.fe0c5e74-3e83-434f-812e-43cbce7b8b61%3Aamzn1.sym.fe0c5e74-3e83-434f-812e-43cbce7b8b61&crid=3QD5TGRHA6K1C&cv_ct_cx=baby%2Bgirl%2Bclothes%2B0-3%2Bmonths&dib=eyJ2IjoiMSJ9.kvPA5l3vatj3M2LAFGm0Clij9IyE54XGj2CfNP-03DU.dXewFgBNWWWhwgjLNgMMeW-Z0DqhZMtXv7MyFSINY7Q&dib_tag=se&keywords=baby%2Bgirl%2Bclothes%2B0-3%2Bmonths&pd_rd_i=B09BJFHL8K&pd_rd_r=d8fbf3f0-07ff-4cab-95fe-6732c0aa8397&pd_rd_w=ySDdV&pd_rd_wg=9HfUm&pf_rd_p=fe0c5e74-3e83-434f-812e-43cbce7b8b61&pf_rd_r=A6XR0K0NXYHG7VFND1AZ&qid=1723527401&sbo=RZvfv%2F%2FHxDF%2BO5021pAnSA%3D%3D&sprefix=baby%2Bgirl%2Bclothes%2Caps%2C135&sr=1-1-364cf978-ce2a-480a-9bb0-bdb96faa0f61-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9waG9uZV9zZWFyY2hfdGhlbWF0aWM&psc=1&th=1'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Aalizzwell Traje de primavera y verano de manga corta acanalada para bebé niña', 
      url: 'https://www.amazon.com/Aalizzwell-primavera-verano-acanalada-Rosado/dp/B09NNCWS7L/ref=mp_s_a_1_2_sspa?crid=3QD5TGRHA6K1C&dib=eyJ2IjoiMSJ9.cy3scS2wZH4BfyNl6wVZMsKUl-T1kKcU1vcHcx63cPNrVuJGr4Hp90DhvsNhQD2bgb9iOw4T5zR5x9jvNxnNRie_eWwpSNEKYa-O-EvmNcw2mfGVAPLMLkIOMRnzG1qzOI6jCnAWL9YVtmIIjaDgHu5Cv1pNpC8BM4AE_Q1YLa3C-pkMA3FxJp82xMmHkJ_LtZZv1roxOWMKxszBkEyRgGWNggouzam-M0oAr_TWM1SINaDfP_Wod7oovf9e32U6zBP8ivs7T7BXhePNpFWqeiJh5cb4Rw0pfJxhBUbGcPw.hAoxPw7jHkFQKv-M-YFqGx-XHYJihZwBCNabTuXFF-k&dib_tag=se&keywords=baby+girl+clothes+0-3+months&qid=1723527401&sprefix=baby+girl+clothes%2Caps%2C135&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9waG9uZV9zZWFyY2hfYXRm&psc=1'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Traje de bebé niña de punto, mameluco de manga corta con lazo y diadema para recién nacido, traje de verano para recién nacido', 
      url: 'https://www.amazon.com/dp/B0CTF6M5SJ?ref=cm_sw_r_mwn_dp_PPKZ2B593S2CKPE3Z5JH&ref_=cm_sw_r_mwn_dp_PPKZ2B593S2CKPE3Z5JH&social_share=cm_sw_r_mwn_dp_PPKZ2B593S2CKPE3Z5JH&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Aalizzwell Conjunto de mameluco acanalado para bebés y niñas prematuros, para otoño e invierno', 
      url: 'https://www.amazon.com/dp/B0D6VV478G?ref=cm_sw_r_mwn_dp_QR34GX23HEV2SVQ9MPNJ&ref_=cm_sw_r_mwn_dp_QR34GX23HEV2SVQ9MPNJ&social_share=cm_sw_r_mwn_dp_QR34GX23HEV2SVQ9MPNJ&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Happy Town Mameluco para bebé niña para otoño e invierno, suéter de manga larga con volantes y diadema', 
      url: 'https://www.amazon.com/dp/B0CKMHD9J9?ref=cm_sw_r_mwn_dp_C5HTHX01HW6HH689R881&ref_=cm_sw_r_mwn_dp_C5HTHX01HW6HH689R881&social_share=cm_sw_r_mwn_dp_C5HTHX01HW6HH689R881&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Suéter de punto trenzado para bebé niña, manga larga, bohemio, bordado floral, sudadera de gran tamaño, ropa cálida para otoño e invierno', 
      url: 'https://www.amazon.com/dp/B0CH1389J1?ref=cm_sw_r_mwn_dp_XQT4ED76AEDC5FHTJ1QC&ref_=cm_sw_r_mwn_dp_XQT4ED76AEDC5FHTJ1QC&social_share=cm_sw_r_mwn_dp_XQT4ED76AEDC5FHTJ1QC&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Mameluco de oso para bebé recién nacido, traje de forro polar con capucha para invierno', 
      url: 'https://www.amazon.com/dp/B0C9TLGQ4B?ref=cm_sw_r_mwn_dp_RTFAB7R5ARHGHD7K80CW&ref_=cm_sw_r_mwn_dp_RTFAB7R5ARHGHD7K80CW&social_share=cm_sw_r_mwn_dp_RTFAB7R5ARHGHD7K80CW&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Conjunto de canastilla para bebé, 9 piezas, conjunto de mamelucos y pantalones, conjunto de regalo unisex para bebé', 
      url: 'https://www.amazon.com/dp/B0BZVL2M9Z?ref=cm_sw_r_mwn_dp_NNA2QH325JJZTQJ06B89&ref_=cm_sw_r_mwn_dp_NNA2QH325JJZTQJ06B89&social_share=cm_sw_r_mwn_dp_NNA2QH325JJZTQJ06B89&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Madjtlqy Conjunto de sudadera de manga larga con estampado de gofres y pantalones para bebé niña y niño', 
      url: 'https://www.amazon.com/dp/B0BHSRZXX9?ref=cm_sw_r_mwn_dp_QD9D996JPTVJ9DA68555&ref_=cm_sw_r_mwn_dp_QD9D996JPTVJ9DA68555&social_share=cm_sw_r_mwn_dp_QD9D996JPTVJ9DA68555&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'BQUBO - Conjunto de guantes de algodón para recién nacidos, guantes de algodón, guantes antiarañazos', 
      url: 'https://www.amazon.com/dp/B09X9Q7RMR?ref=cm_sw_r_mwn_dp_PA9FJQ3BD1RK07P2BFDR&ref_=cm_sw_r_mwn_dp_PA9FJQ3BD1RK07P2BFDR&social_share=cm_sw_r_mwn_dp_PA9FJQ3BD1RK07P2BFDR&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'DRESHOW BQUBO - Gorro de turbante para bebé, gorro con nudo de lazo, suave y lindo gorro de guardería', 
      url: 'https://www.amazon.com/dp/B0CRCYLZJ9?ref=cm_sw_r_mwn_dp_YEMNYEGY17GFZ8EZ68DP_1&ref_=cm_sw_r_mwn_dp_YEMNYEGY17GFZ8EZ68DP_1&social_share=cm_sw_r_mwn_dp_YEMNYEGY17GFZ8EZ68DP_1&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Calcetines unisex para bebé niño y niña, paquete de 5 calcetines tobilleros, calcetines transpirables, accesorios para recién nacidos, conjunto de 0-5T', 
      url: 'https://www.amazon.com/dp/B0D4D7WJXS?ref=cm_sw_r_mwn_dp_VZEZZWESSEQ2MP51TVD7&ref_=cm_sw_r_mwn_dp_VZEZZWESSEQ2MP51TVD7&social_share=cm_sw_r_mwn_dp_VZEZZWESSEQ2MP51TVD7&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'PeraBella Organizador de pañales para cambiador, cesta de almacenamiento para pañales y toallitas para bebé, regalo para baby shower, organizador de organizador de coche, organizador de pañales de', 
      url: 'https://www.amazon.com/dp/B0CLZ13JCX?ref=cm_sw_r_mwn_dp_6KHGEFHDJN6R7P96BNTY&ref_=cm_sw_r_mwn_dp_6KHGEFHDJN6R7P96BNTY&social_share=cm_sw_r_mwn_dp_6KHGEFHDJN6R7P96BNTY&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Carrito de pañales para bebé, carrito de pañales movible de plástico con ruedas, para recién nacido, artículos esenciales para el cuarto del bebé, organizador de pañales para cambiador y cuna, fácil', 
      url: 'https://www.amazon.com/plástico-artículos-esenciales-organizador-cambiador/dp/B0CC2CLQXT/ref=mp_s_a_1_16?crid=2O79C168TPYRE&dib=eyJ2IjoiMSJ9.XS23juXzw07xWZ2zrIoJGeflZ_KUBdwYvNW6ZYvbWkPHDZtQED2oo-HgWhexSfNl0tMClvL2yBkzcDSXjzydiQe4ldRRrc7OzWg31Umfr7zKXs9zBNuYFGyt_9IMBpWqkCN1X6b7xkIMlNJlxa8WRUcbLqdDZ-Ywd3wuUT7nFl5LYgKBY0_rRmkgnvNwBBM9EzmiIcPgJpVXjcguYrcG4A.pteSoTi7SmEar8lTxQD3ZRj0NkX2UvvunSKC--taTcw&dib_tag=se&keywords=cambiadores+de+pañales+para+bebes&qid=1723528171&sprefix=cambiador%2Caps%2C213&sr=8-16'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Cambiador de bebé contorneado de algodón orgánico con colchón de espuma impermeable, incluye funda suave, extraíble y lavable, correa de seguridad, parte inferior antideslizante, parte superior para', 
      url: 'https://www.amazon.com/Cambiador-contorneado-impermeable-extraíble-antideslizante/dp/B0C88J9D6N/ref=mp_s_a_1_27?crid=2O79C168TPYRE&dib=eyJ2IjoiMSJ9.YfMn-v2jgsDo3ZWDzawnrIIKYEuuPx-q6YuW_at48-5Z-LR6FBNKKZ7_WrOr9R5dLMs4ApRKg3e3FO3Cjb3jjhu0iC1ppgg7CQ_BVN3tRmWL_r6Z3OHAB95lEOSeYx8gtqa6sG_fP0nfPF57yhTLHGwoFDUNxJ7f7Qt4ZqR5woYew-HRbmehMQc9PqV6GYUP8UcbixqmvSOA6WFi1l2mgw.A0v7ZFos6HpoRmoXQX9KtB0tFvLznmwAYLdZ_228NOs&dib_tag=se&keywords=cambiadores+de+pañales+para+bebes&qid=1723528236&sprefix=cambiador%2Caps%2C213&sr=8-27'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Cuddle Campus Soporte de clip de silicona para chupete con diseño de una pieza, paquete de 2 clips suaves y flexibles con textura para bebé niño y niña (0.0-19.7 ft)', 
      url: 'https://www.amazon.com/dp/B0BZGSWXKV?ref=cm_sw_r_mwn_dp_6BSNRGTRWX6HRQSJBA3X&ref_=cm_sw_r_mwn_dp_6BSNRGTRWX6HRQSJBA3X&social_share=cm_sw_r_mwn_dp_6BSNRGTRWX6HRQSJBA3X&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Dr. Brown\'s HappyPaci - Chupetes para bebé recién nacido de 0 a 6 meses, 100 % silicona, sin BPA, blanco, rosa, rosa claro, gris frío, verde y crudo, paquete de 6', 
      url: 'https://www.amazon.com/dp/B0BZK6YQ2W?ref=cm_sw_r_mwn_dp_WCV909DFBDEVWESKG5FR&ref_=cm_sw_r_mwn_dp_WCV909DFBDEVWESKG5FR&social_share=cm_sw_r_mwn_dp_WCV909DFBDEVWESKG5FR&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'mushie Cepillo para biberones | Silicona suave con base de succión (Natural)', 
      url: 'https://www.amazon.com/dp/B0D68LW7SK?ref=cm_sw_r_mwn_dp_9ZR9B2ADQV14AXTPKE7T&ref_=cm_sw_r_mwn_dp_9ZR9B2ADQV14AXTPKE7T&social_share=cm_sw_r_mwn_dp_9ZR9B2ADQV14AXTPKE7T&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Manta de punto orgánico para bebé, acogedora y cálida, manta suave para bebé, cuna, cochecito, recepción, 30 x 40 pulgadas, rosa', 
      url: 'https://www.amazon.com/dp/B0CLGQS2WV?ref=cm_sw_r_mwn_dp_GE0F9980KF6T435C7SE7&ref_=cm_sw_r_mwn_dp_GE0F9980KF6T435C7SE7&social_share=cm_sw_r_mwn_dp_GE0F9980KF6T435C7SE7&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Comfy Cubs Manta de envolver para bebé, niña y niño, fácil de ajustar, paquete de 3 saco de dormir para bebés recién nacidos (pequeño de 0 a 3 meses, rubor, malva, mora)', 
      url: 'https://www.amazon.com/dp/B0B8QJTNDY?ref=cm_sw_r_mwn_dp_QT878133XETQGQ0PMZ2X&ref_=cm_sw_r_mwn_dp_QT878133XETQGQ0PMZ2X&social_share=cm_sw_r_mwn_dp_QT878133XETQGQ0PMZ2X&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'GLLQUEN BABY Manta receptora de muselina de algodón para niño, manta para envolver a recién nacidos, transpirable y suave, mantas para bebé, doble absorbente, paquete de 6 (sol)', 
      url: 'https://www.amazon.com/receptora-muselina-envolver-transpirable-absorbente/dp/B0C7VM6R3N/ref=mp_s_a_1_14?crid=YTFRKDKD32I4&dib=eyJ2IjoiMSJ9.evLR03GQxBY-W-OFbn71OVsdgUNVhs7kx3fXLXxBGLA9Nq0e9elajnRdD6vBBDIsdvD-2wft0azR07Q-Av7yixJ2Xj0wNQCyEvGEwbgg-BOfkW2n5Vk9wo_oxXjCan1FXo90waehkFP8GSDuegnnqqHTdj8mX11XleJgMea7hLrmHJ1fH8juKdI181cHFGLNNhaJACV0i19mphU4qxZJTw.BJoEIVyg2UViYl6FjBjrMYhIb6kKX18CdRgZUpgtNwg&dib_tag=se&keywords=cobijas+para+bebe&qid=1723532050&sprefix=cobi%2Caps%2C195&sr=8-14'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Jaoul Columpio eléctrico para bebé con Bluetooth, control remoto, música, 5 velocidades de oscilación, arnés - para bebés', 
      url: 'https://www.amazon.com/dp/B09XMJC2D1?ref=cm_sw_r_mwn_dp_7CJXWAEKYCG576VPKQHH&ref_=cm_sw_r_mwn_dp_7CJXWAEKYCG576VPKQHH&social_share=cm_sw_r_mwn_dp_7CJXWAEKYCG576VPKQHH&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Ingenuity Asiento relajante para bebé con vibraciones, barra de juguete y sonidos, 0-6 meses hasta 20 libras (flora rosa, el unicornio)', 
      url: 'https://www.amazon.com/dp/B07QXL2V91?ref=cm_sw_r_mwn_dp_JQPYW65HR2MVR8HWK2HC&ref_=cm_sw_r_mwn_dp_JQPYW65HR2MVR8HWK2HC&social_share=cm_sw_r_mwn_dp_JQPYW65HR2MVR8HWK2HC&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Little Jump Suave newobrn - Conjunto de camisón de nudo para bebé con sombrero, recién nacido, unisex, viscosa', 
      url: 'https://www.amazon.com/dp/B0D3PWQ8BF?ref=cm_sw_r_mwn_dp_TANWSX89V7Q1GV10EXXV&ref_=cm_sw_r_mwn_dp_TANWSX89V7Q1GV10EXXV&social_share=cm_sw_r_mwn_dp_TANWSX89V7Q1GV10EXXV&language=es-US'
    ),
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Conjunto de regalo para recién nacido, body y pantalones para bebé niña y niño, 24 piezas, 100% algodón, esenciales y accesorios', 
      url: 'https://www.amazon.com/dp/B09R9JLH7Z?ref=cm_sw_r_mwn_dp_79EMCAZ56YXB3AMJ15KM&ref_=cm_sw_r_mwn_dp_79EMCAZ56YXB3AMJ15KM&social_share=cm_sw_r_mwn_dp_79EMCAZ56YXB3AMJ15KM&language=es-US'
    ),
 

  ];










}