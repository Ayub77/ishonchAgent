class FunkDateTime{


 static String date(int week){
     
 switch (week) {
   case 1:return "Dushanba";
   case 2:return "Seshanba";
   case 3:return "Chorshanba";
   case 4:return "Payshanba";
   case 5:return "Juma";
   case 6:return "shanba";
   case 7:return "Yakshanba";    
   default: "";
 }
 return "";
}

static String year(int year){

switch (year) {
  case 1:return "Yanvar";
  case 2:return "Fevral";
  case 3:return "Mart";
  case 4:return "Aprel";
  case 5:return "May";
  case 6:return "Iyun";
  case 7:return "Iyul";
  case 8:return "Avgust";
  case 9:return "Sentyabr";
  case 10:return "Oktyabr";
  case 11:return "Noyabr";
  case 12:return "Dekabr";
  default:"";
}
return "";
}

}