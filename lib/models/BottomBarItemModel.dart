class BottomBarItemModel {
  String title;
  String iconUrl;
  BottomBarItemType type;

  BottomBarItemModel(this.title, this.iconUrl, this.type);
}

enum BottomBarItemType { news, schedule, none }
