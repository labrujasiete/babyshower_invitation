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
  static String tituloPrincipal = 'TU NOMBRE';
  static String subTituloPrincipal = 'BABY SHOWER';
  static String mensajePrincipal = 'ACOMPAÑANOS A CELEBRAR LA LLEGADA DE NUESTRO BEBE';
  static String mensajeSecundario = 'NOS ENCANTARÍA QUE VINIERAS A NUESTRA CELEBRACIÓN';

  // FEHCA Y HORA
  static String hora = '13:00';
  static String horaFin = '18:00';
  static String diaDeLaSemana = 'SABADO';
  static String diaNumerico = '06';
  static String mes = 'OCTUBRE';
  static String mesNumerico = '10';
  static String anio = '2024';

  static String direccion = 'Playas, de tijuana, 22504 Tijuana, Baja California';
  static String numeroDeTelefono = '+521112223344';

  // GOOGLE CALENDAR
  static String calendarioTitulo = 'Tu nombre Baby Shower';
  static String calendarioDescripcion = 'Descripcion Ex... In occaecat ut nulla esse excepteur consequat non ex do eu nostrud.';
  static String calendarioLocation = '32.531025, -117.122986';
  String startTime = '$anio-$mesNumerico-$diaNumerico $hora';
  String endTime = '$anio-$mesNumerico-$diaNumerico $horaFin';

  static String googleMapsUrl = 'https://maps.app.goo.gl/RqEMtSJV3GQr73yA9';

  static List<Gift> urlsRegalos = [
    
    Gift(
      store: OnlineStore.Amazon, 
      label: 'Prinsel , Carriola Barcelona Rosa Baby Boys, Rosa (Pink)', 
      url: 'https://www.amazon.com.mx/Prinsel-Carriola-Barcelona-Paquete-Count/dp/B08JMG99JR/ref=sr_1_5?crid=1DM9XOJ7XPD1L&dib=eyJ2IjoiMSJ9.LciuTamRlQJ02e3D1tL86D_ROE_PqXk7s5eIV74bcH_QCEJmNvIn1Chz1GE_wyJUg7y6IWJCB7Y0SXblLJP-GMc5slSM8F_RO_DWagkny1spsMGDro0quMljtD3jyNzFo6tEGPGxk54lL17cy7ssWo6QWzjSAA4EY4wq1F33J9uQ-_tnrhG6ntofSuWIAICdDg6iEGKs_uA3mpMa42mZSk1oM_6LK5tRJeEkn7eWMr-h37bJUKNc_AvsxcJ3rFOYpx7mUCfyZNiOFTN9SDwUdtOyNu74ETY6ZbbK6GS3d_k.7mMHtZAr4wtmXBJiJNC6UQt3kn1R9JbYvH1kSO5P1zE&dib_tag=se&keywords=carriola%2Bpara%2Bbebe&qid=1723351107&sprefix=carriola%2Caps%2C164&sr=8-5&ufe=app_do%3Aamzn1.fos.718b5b01-d225-42a2-951c-96387456fe4c&th=1'
    ),
    Gift(
      store: OnlineStore.Walmart, 
      label: 'Bebé Niñas Mameluco Floral Mono Traje De Verano Ropa De Playa', 
      url: 'https://www.walmart.com.mx/ip/ropa-para-nina/recien-nacido-bebe-ninas-mameluco-floral-mono-traje-de-verano-ropa-de-playa-0-24-m-0-6-meses-baoblaze-mameluco-infantil-de-la-playa/00069481075671?from=/search'
    ),
    Gift(
      store: OnlineStore.Walmart, 
      label: 'Pañales Premium Rascal + Friends Etapa 4, Unisex, Grande, 136 piezas', 
      url: 'https://www.walmart.com.mx/ip/cambio-de-panales/panales-premium-rascal-friends-etapa-4-unisex-grande-136-piezas/00081000541730?from=/search'
    ),

  ];










}