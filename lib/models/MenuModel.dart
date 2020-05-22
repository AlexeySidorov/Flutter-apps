class MenuModel {
  String title;
  String iconUrl;
  MenuType type;

  MenuModel(this.title, this.iconUrl, this.type);
}

enum MenuType { none, news, schedule, trainers, clients, settings, logout }
