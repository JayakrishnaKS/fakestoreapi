import 'package:fakestoreapi/repository/api/service/api_service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class homescreencontroller extends GetxController{
  RxBool isLoading=true.obs;
  var productlist=[].obs;
@override
  void onInit() {
  loadproduct();
    // TODO: implement onInit
    super.onInit();
  }

  void loadproduct() async{
  try{
    isLoading(true);
    var products=await Httpservice.fetch_products();
    if(products!=null){
      productlist.value=products;
    }
  }catch(e) {
    print(e);
  }
   finally{
    isLoading(false);
   }
  }
}