import 'package:prac7/helper/dialog_helper.dart';
import 'package:prac7/services/app_exceptions.dart';

class BaseController{
  void handleError(error){
    hideLoading();
    if(error is BadRequestException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog(description: message);
    } else if (error  is ApiNotRespondingException) {
      DialogHelper.showErrorDialog(
        description: 'Oops! It took longer to respond. '
      );
    }
  }

  showLoading([String? message]){
    DialogHelper.showLoading(message);
  }
  hideLoading(){
    DialogHelper.hideLoading();
  }
}