class Post {
String authorName;
String authorImageUrl;
String imageUrl;
String string;

Post({
  required this.authorName,
  required this.authorImageUrl,
  required this.imageUrl,
  required this.string,
});
}

final List<Post> posts = [
  Post(
    authorName: 'Game thuk bok doy',
    authorImageUrl: 'images/boy.png',
    imageUrl: 'images/Heades.png',
    string: 'Hades กำลังลดราคา 35% ในเว็บ Steam เหลือราคา 207.35 บาท\n'
        '.\n'
        'ส่วน Hades + Original Soundtrack Bundle ลด 42% เหลือ 297.17 บาท\n'
        '.\n'
        'รายละเอียดเพิ่มเติมดูที่หน้าร้านค้า\n'
        'https://store.steampowered.com/app/1145360/Hades/\n'
        '.\n'
        'ดีลนี้หมดเวลาในวันที่ 8 มี.ค. '
  ),
  Post(
    authorName: 'Ashe',
    authorImageUrl: 'images/man.png',
    imageUrl: 'images/pokemon.png',
    string: 'ช่วยคิดหน่อยครับว่าจะเอาตัวไหนลงแข่ง League Master ดีครับ'
  ),
];

