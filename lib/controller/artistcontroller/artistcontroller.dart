import 'package:api_sigi/Api/api_artist.dart';
import 'package:api_sigi/modals/modal_album.dart';
import 'package:get/get.dart';

class ArtistController extends GetxController with StateMixin<Quote> {
  final apiClient = ApiClient();

  @override
  void onInit() async {
    getData();
    super.onInit();
  }

  getData() {
    apiClient.fetchData().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(value, status: RxStatus.error(error.toString()));
    });
  }
}
