class Comment {
  String authorName;
  String text;

  Comment({
    required this.authorName,
    required this.text,
  });

  void setText(String text) {
    this.text = text;
  }
}

final List<List<Comment>> comments = [
  [
    Comment(
      authorName: 'Anathan OG',
      text: 'อะไรนะ!!ฉันเพิ่งซื้อราคาเต็ม',
    ),
    Comment(
      authorName: 'Joan deedee',
      text: 'ไม่สนหรอก ฉันยืมเล่นจากคลังเพื่อน',
    ),
  ],
  [
    Comment(
      authorName: 'Bomber',
      text: 'หืมมมม...จัดทีมยากแฮะ',
    ),
    Comment(
      authorName: 'Regiregi',
      text: 'ตระกูลRegiก็โกงอยู่นะ',
    ),
  ]
];
