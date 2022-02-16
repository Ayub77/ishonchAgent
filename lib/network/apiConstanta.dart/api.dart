// ignore_for_file: unnecessary_new, prefer_collection_literals

class Api{
    static String Base = '192.168.13.54:8000';
    static String apiLogin = "api/user/login";
    static String dashboard = "api/agent_plan/get";
    static String prices = "api/order/get_product_variant_remains_of_organization";
    static String customers = "api/partner/get";

  




 static Map<String, dynamic> emptyParams(){
    Map<String, dynamic> params = new Map();
    return params;
  }
 
}