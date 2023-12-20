import '../../../core/app_export.dart';
import 'stories_item_model.dart';
import 'messages_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<StoriesItemModel>> storiesItemList = Rx([
    StoriesItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse24.obs, roy1: "Angeline".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse24.obs, roy1: "Vrindha".obs)
  ]);

  Rx<List<MessagesItemModel>> messagesItemList = Rx([
    MessagesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    MessagesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    MessagesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    MessagesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs),
    MessagesItemModel(
        richardAlves: "Richard Alves".obs,
        time: "10:00 AM".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs)
  ]);
}
