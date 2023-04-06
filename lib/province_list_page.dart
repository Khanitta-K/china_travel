import 'package:china_travel/model/province.dart';
import 'package:china_travel/tourist_attraction_page.dart';
import 'package:flutter/material.dart';

class province_list_page extends StatefulWidget {
  const province_list_page({Key? key}) : super(key: key);

  @override
  State<province_list_page> createState() => _province_list_pageState();
}

class _province_list_pageState extends State<province_list_page> {
  @override
  List province_list = [
    Province(name: 'Beijing',
        imageURL: 'assets/images/Beijing.jpg',
        description: 'เมืองหลวงของจีน ตั้งอยู่ทางภาคตะวันออกเฉียงเหนือ และเป็นที่ตั้งของสถานที่ท่องเที่ยวสำคัญๆมากมาย'
            'ไม่ว่าจะเป็น พระราชวังต้องห้าม (Forbidden City), จัตุรัสเทียนอานเหมิน (Tiananmen Square)'
            'รวมถึงยังใครที่อยากไปเหยียบ กำแพงเมืองจีน (Great Wall of China) สิ่งมหัศจรรย์ของโลกสักครั้ง'
            'ใกล้ๆ ปักกิ่งก็มีด่านกำแพงเมืองจีนที่คนนิยมไปเที่ยวด้วยค่ะ มีแต่ที่เที่ยวที่เป็นจุดเช็คอินสำคัญของจีนที่ต้องห้ามพลาด!'),
    Province(name: 'Shanghai',
        imageURL: 'assets/images/Shanghai_skyline_from_the_bund.jpg',
        description: 'ตั้งอยู่บนชายฝั่งมหาสมุทรแปซิฟิก ทางทิศตะวันออกของประเทศจีน เป็นศูนย์กลางความเจริญในด้านต่างๆ'
            'และเป็นตัวแทนของจีนยุคใหม่รวมถึงความทันสมัยที่ผสมผสานทางด้านวัฒนธรรมจีนและตะวันตกได้อย่างกลมกลืน '
            'ที่นี่เต็มไปด้วยแหล่งช้อปปิ้ง และบรรยากาศเมืองฟีลยุโรปเบาๆ ใครชอบเที่ยวในเมืองได้วิวตึกสวยๆ แนะนำเลยค่ะ '
            'รวมถึงยังเป็นที่ตั้งของธีมพาร์คระดับโลกอย่าง เซี่ยงไฮ้ ดิสนีย์แลนด์ (Shanghai Disneyland) อีกด้วย'),
    Province(name: 'Xian',
        imageURL: 'assets/images/Xian.jpg',
        description: 'เมืองแห่งประวัติศาสตร์ที่มีชื่อเสียงอันดับต้นๆ ของโลก ตั้งอยู่ทางภาคตะวันตกเฉียงเหนือของจีน '
            'ซีอาน มีประวัติอันยาวนานมากกว่า 3,100 ปี เป็นอดีตเมืองหลวงของ 13 ราชวงศ์จีนโบราณ '
            'มีสถานที่สำคัญอย่าง เจดีย์ห่านป่าใหญ่ (Big Wild Goose Pagoda) และ สุสานกองทัพทหารดินเผาจักรพรรดิจิ๋นซี (Terracotta Army) '
            'มรดกโลกสุดโด่งดังที่แนะนำว่าต้องไปชมความยิ่งใหญ่ให้ได้สักครั้ง'),
    Province(name: 'Chengdu',
        imageURL: 'assets/images/Chengdu.jpg',
        description: 'เมืองที่ได้รับการเรียกขานว่าเป็น มหานครสีเขียว และได้รับการโหวตให้เป็นเมืองที่น่าอยู่อันดับ 2 ทางภาคตะวันตกของประเทศจีน '
            'ที่นี่เต็มไปด้วยศิลปวัฒนธรรมเก่าแก่หลายพันปี และเป็นบ้านเกิดของหมีแพนด้า ถ้ามาเที่ยวจีนที่นีอย่าลืมมาเดินเล่นที่ย่านเมืองเก่า '
            'ถนนโบราณจิ๋นหลี่ (Jinly Ancient Street) และไหว้พระเสริมสิริมงคลกันที่ วัดวูเฮา (Wuhou Memorial Temple) วัดเก่าแก่ที่สุดในเฉิงตูกันนะ'),
    Province(name: 'Guangzhou',
        imageURL: 'assets/images/Guangzhou.jpg',
        description: 'สวรรค์ของสายช้อปก็ต้องยกให้ กวางโจว ที่จะได้ช้อปปิ้งจัดเต็มกับเมืองที่ได้ชื่อว่าเป็นศูนย์กลางการค้าที่ใหญ่สุดทางภาคใต้ของจีน'
            'นอกจากที่เที่ยวทางประวัติศาสตร์ วัดเก่าแก่อย่าง วัดลิ่วหรงซื่อ (Liurong Temple) และจุดชมวิวชิลๆ อย่าง แคนตันทาวเวอร์ (Canton Tower) แล้ว '
            'อย่าลืมไปช้อปกันที่ตลาดค้าส่งเสื้อผ้า กระเป๋าต่างๆ และ ถนนคนเดินเป่ยจิงลู่ (Beijing Lu) กับถนนคนเดินซั่งเซี่ยจิ่ว (Shangxiajiu) ด้วยนะ'),
    Province(name: 'Guilin',
        imageURL: 'assets/images/Guilin.jpg',
        description: 'หนึ่งในเส้นทาง ทัวร์จีน สำหรับสายธรรมชาติอันโด่งดัง ความงดงามของธรรมชาติที่ กุ้ยหลิน งดงามจนได้สมญานามว่าเมืองสวรรค์บนพื้นพิภพ '
            'ทั้งเทือกเขาสลับซับซ้อน ภูเขาหินปูนสวยๆ และถ้ำหินงอกหินย้อยรูปทรงแปลกตา สถานที่ท่องเที่ยวแนะนำก็มีมากมาย '
            'ไม่ว่าจะเป็น การล่องแพชมเขางวงช้าง (Elephant Trunk Hill), แม่น้ำพบมังกร (Yulong River) และ ภูเขาวงพระจันทร์ (Moon Hill)'),
    Province(name: 'Kunming',
        imageURL: 'assets/images/Kunming.jpg',
        description: 'เป็นเมืองที่ใหญ่ที่สุดของมณฑลยูนนานในภาคตะวันตกเฉียงใต้ของจีน ใช้เวลาเดินทางบินตรงจากกรุงเทพเพียง 2 ชั่วโมง '
            'จัดเต็มกับที่เที่ยวครบทุกรส ทั้งธรรมชาติ วัดเก่าแก่ ศิลปวัฒนธรรม และแหล่งช้อปปิ้ง จุดเช็คอินห้ามพลาดก็คือ '
            'ตำหนักทองจินเตี้ยน (Jindian Park), ซุ้มประตูม้าทอง (Golden Horse Gate), วัดหยวนทง (Yuantong Temple) และ เขาซีชาน (Xishan Forest Park)'),
    Province(name: 'Lijiang',
        imageURL: 'assets/images/Lijiang.jpg',
        description: 'เป็นที่ตั้งของ เมืองโบราณลี่เจียง เมืองเก่ากว่า 800 ปี ที่ได้รับการขึ้นทะเบียนเป็นเมืองมรดกโลกทางวัฒนธรรมจากองค์การยูเนสโก '
            'ทั้งสถาปัตยกรรมต่างๆ ยังคงงดงามราวกับในอดีต สมกับฉายาว่า “เวนิสแห่งตะวันออก” ใครมาเที่ยวจีนเส้นทางนี้ นอกจากการดื่มด่ำกับบรรยากาศในเมืองโบราณแล้ว '
            'ต้องไม่พลาดการไปพิชิต ภูเขาหิมะมังกรหยก ภูเขาสูงแสนงดงามที่มีหิมะปกคลุมด้านบนตลอดทั้งปีกันด้วยนะคะ'),
    Province(name: 'Chongqing',
        imageURL: 'assets/images/Chongqing.jpeg',
        description: '1 ใน 4 มหานครของจีน อย่าง ฉงชิ่ง มหานครที่ใหญ่ที่สุดทางภาคตะวันตกเฉียงใต้ เต็มไปด้วยแสงสี ผู้คน และที่เที่ยวมากมาย '
            'รวมถึงมีแหล่งช้อปปิ้งให้เดินชิลๆ อีกด้วย สำหรับที่เที่ยวเชิงประวัติศาสตร์และธรรมชาติที่สุดอลังการของเส้นทางนี้ '
            'แนะนำที่ หมู่บ้านโบราณฉือชี่โข่ว (Ciqikou Old Town) และ อุทยานแห่งชาติหลุมฟ้า 3 สะพานสวรรค์ (Three Natural Bridges : Wulong Karst) '
            'กระซิบว่าถ้ามา เที่ยวฉงชิ่ง ต้องไม่พลาดชิมสตรีทฟู้ดให้ได้ เด็ดทุกเมนูเลยจ้า'),
  ];

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Color.fromARGB(255, 212, 37, 40),
        title: Row(
          children: [
            const Text("PROVINCES RECOMMEND"),
            Icon(Icons.location_city_sharp),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: province_list.length,
        //callback function
        itemBuilder: (BuildContext context, int index) {
          var provinces = province_list[index];


          return Card(
            color: Color.fromARGB(255, 241, 151, 145),
            child: InkWell(
              onTap: () {
                _handleClickProjectItem(provinces);
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          provinces.imageURL,
                          width: 70.0,
                          height: 70.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(provinces.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 176, 27, 12)
                                  ),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(provinces.description),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Province p) {
    print(p.name);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Tourist_attraction_page(province: p)),
    );
  }
}
