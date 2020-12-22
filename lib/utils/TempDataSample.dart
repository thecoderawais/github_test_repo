import '../models/T6Models.dart';
import 'Images.dart';

List<ListAlertItemModel> getSampleCategories() {
  List<ListAlertItemModel> list = List<ListAlertItemModel>();
  ListAlertItemModel model = ListAlertItemModel();
  model.title = "Storm";
  model.image = "images/theme6/ic_storm.svg";

  ListAlertItemModel model1 = ListAlertItemModel();
  model1.title = "Fire";
  model1.image = "images/theme6/ic_fire.svg";

  ListAlertItemModel model2 = ListAlertItemModel();
  model2.title = "Earthquake";
  model2.image = "images/theme6/ic_earthquake.svg";

  ListAlertItemModel model3 = ListAlertItemModel();
  model3.title = "Hazard";
  model3.image = "images/theme6/ic_hazard.svg";

  ListAlertItemModel model4 = ListAlertItemModel();
  model4.title = "Flood";
  model4.image = "images/theme6/ic_flood.svg";

  // T6LogModel model5 = T6LogModel();
  // model5.name = "Boxing";
  // model5.Image = t6_ic_boxing;
  //
  // T6LogModel model6 = T6LogModel();
  // model6.name = "Zumba";
  // model6.Image = t6_ic_zumba;

  list.add(model);
  list.add(model1);
  list.add(model3);
  list.add(model2);
  list.add(model4);
  // list.add(model5);
  // list.add(model6);

  return list;
}

List<T6Slider> getSampleLatestAlertsList() {
  List<T6Slider> list = List<T6Slider>();
  T6Slider model1 = T6Slider();
  model1.title = "Thunderstorm ";
  model1.image = "images/theme6/thunderstorm.jpg";
  model1.time = "5 Mins";
  // model1.info =
  //     "A great thunderstorm is heading your way. Better get into hiding when there's time.";

  T6Slider model2 = T6Slider();
  model2.title = "Earthquake";
  // model2.info = "Beware of the Earthquake. It will have some aftershocks.";
  model2.time = "20 Mins";
  model2.image = "images/theme6/earthquake.jpg";

  list.add(model1);
  list.add(model2);
  return list;
}

List<ListAlertItemModel> getSampleAlertsList() {
  List<ListAlertItemModel> list = List<ListAlertItemModel>();
  ListAlertItemModel model = ListAlertItemModel();
  model.title = "Thunderstorm in New York.";
  model.image = "images/theme6/thunderstorm.jpg";
  model.time = "5 Minutes Ago";
  model.info =
      "A great thunderstorm is heading your way. Better get into hiding when there's time.";

  ListAlertItemModel model1 = ListAlertItemModel();
  model1.title = "Earthquake in Tennessee";
  model1.info = "Beware of the Earthquake. It will have some aftershocks.";
  model1.time = "5 Minutes Ago";
  model1.image = "images/theme6/earthquake.jpg";

  ListAlertItemModel model2 = ListAlertItemModel();
  model2.title = "Fire Wreaks Havoc in nearby village.";
  model2.info =
      "The fire was caused due to fuel leakage and then, it grew by the minute. First respondants had to call for backup";
  model2.time = "40 Minutes Ago";
  model2.image = "images/theme6/fire.png";

  ListAlertItemModel model3 = ListAlertItemModel();
  model3.title = "COVID-19 gains strength.";
  model3.info =
      "With the general public being more and more careless with each passing day, cases have been increasing ever so.";
  model3.time = "23 Oct, 10:20 PM";
  model3.image = "images/theme6/pandemic.jpg";

  // ListAlertItemModel model4 = ListAlertItemModel();
  // model4.title = "Lower Body";
  // model4.info = "7 * 4 Challence";
  // model4.time = "20 Oct, 11:23 AM";
  // model4.image = t6_ic_work2;

  list.add(model);
  list.add(model1);
  list.add(model3);
  list.add(model2);
  // list.add(model4);

  return list;
}

List<ListAlertItemModel> getList() {
  List<ListAlertItemModel> list = List<ListAlertItemModel>();
  ListAlertItemModel model = ListAlertItemModel();
  model.title = "Lower Body";
  model.image = t6_ic_work1;
  model.time = "Beginner";
  model.info = "7 * 4 Challence";

  ListAlertItemModel model1 = ListAlertItemModel();
  model1.title = "Chest Intermediate";
  model1.info = "7 * 4 Challence";
  model1.time = "Intermediate";
  model1.image = t6_ic_work2;

  ListAlertItemModel model2 = ListAlertItemModel();
  model2.title = "ABS Advanced";
  model2.info = "7 * 4 Challence";
  model2.time = "Advanced";
  model2.image = t6_ic_work3;

  ListAlertItemModel model3 = ListAlertItemModel();
  model3.title = "Incline Dumbbell Fly";
  model3.info = "7 * 4 Challence";
  model3.time = "Intermediate";
  model3.image = t6_ic_work1;

  ListAlertItemModel model4 = ListAlertItemModel();
  model4.title = "Lower Body";
  model4.info = "7 * 4 Challence";
  model4.time = "Beginner";
  model4.image = t6_ic_work2;

  list.add(model);
  list.add(model1);
  list.add(model3);
  list.add(model2);
  list.add(model4);

  return list;
}

List<T6Slider> getSliders() {
  List<T6Slider> list = List<T6Slider>();
  T6Slider model1 = T6Slider();
  model1.title = "Superset Solider";
  model1.image = t6_ic_work1;
  model1.info = "Full Body + weights";
  model1.time = "12 min";

  T6Slider model2 = T6Slider();
  model2.title = "Superset Solider";
  model2.image = t6_ic_work2;
  model2.info = "Full Body";
  model2.time = "10 min";

  T6Slider model3 = T6Slider();
  model3.title = "Superset Solider";
  model3.image = t6_ic_work1;
  model3.info = "Full Body + weights";
  model3.time = "12 min";

  list.add(model1);
  list.add(model2);
  list.add(model3);
  return list;
}

List<ListAlertItemModel> getData() {
  List<ListAlertItemModel> list = List<ListAlertItemModel>();
  ListAlertItemModel model = ListAlertItemModel();
  model.title = "Cycle";
  model.image = t6_ic_cycle;

  ListAlertItemModel model1 = ListAlertItemModel();
  model1.title = "Run";
  model1.image = t6_ic_running;

  ListAlertItemModel model2 = ListAlertItemModel();
  model2.title = "Walk";
  model2.image = t6_ic_walk;

  ListAlertItemModel model3 = ListAlertItemModel();
  model3.title = "Swim";
  model3.image = t6_ic_swim;

  ListAlertItemModel model4 = ListAlertItemModel();
  model4.title = "Gym";
  model4.image = t6_ic_swim;

  ListAlertItemModel model5 = ListAlertItemModel();
  model5.title = "Boxing";
  model5.image = t6_ic_boxing;

  ListAlertItemModel model6 = ListAlertItemModel();
  model6.title = "Zumba";
  model6.image = t6_ic_zumba;

  list.add(model);
  list.add(model1);
  list.add(model3);
  list.add(model2);
  list.add(model4);
  list.add(model5);
  list.add(model6);

  return list;
}
