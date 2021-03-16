class MyDate {
  bool isSelected;
  String buttonText;
  String text;

  MyDate({this.isSelected, this.buttonText, this.text});

  static List<MyDate> getYears() {
    return <MyDate>[
     MyDate(isSelected: false, buttonText: "2020", text: "2020"),
     MyDate(isSelected: false, buttonText: "2021", text: "2021"),
     MyDate(isSelected: false, buttonText: "2022", text: "2022"),
     MyDate(isSelected: false, buttonText: "2023", text: "2023"),
    ];
  }
  static List<MyDate> getMonths() {
    return <MyDate>[
      MyDate(isSelected: false, buttonText: "ມ.ກ", text: "1"),
      MyDate(isSelected: false, buttonText: "ກ.ພ", text: "2"),
      MyDate(isSelected: false, buttonText: "ມ.ນ", text: "3"),
      MyDate(isSelected: false, buttonText: "ມ.ສ", text: "4"),
    ];
  }

  static List<MyDate> getDates() {
    return <MyDate>[
      MyDate(isSelected: false, buttonText: "7", text: "7"),
      MyDate(isSelected: false, buttonText: "12", text: "12"),
      MyDate(isSelected: false, buttonText: "16", text: "16"),
      MyDate(isSelected: false, buttonText: "20", text: "20"),
    ];
  }
}
