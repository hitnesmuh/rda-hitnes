import 'package:flutter/material.dart';
import 'package:rda_hitnes/themes.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  List data = [
    {
      'title': 'Menu 1',
      'name': 'Hitnes Muharram\nJalan Dukuh Raya No. 132',
    },
    {
      'title': 'Menu 2',
      'name': 'Muhammad Faisal\nKampung Ciamis No. 105',
    },
    {
      'title': 'Menu 3',
      'name': 'De Gitgit Agitya\nJalan Gegerkalong Girang No. 16C',
    },
    {
      'title': 'Menu 4',
      'name': 'Ilham Muhammad Hanif Soetardjo\nKecamatan Garut Selatan No. 111',
    },
    {
      'title': 'Menu 5',
      'name': 'Hasna Nadaa Fida Karima',
      'address': 'Sukajadi No. 111'
    },
    {
      'title': 'Menu 6',
      'name': 'Muhammad Rafif Rizqullah',
      'address': 'Jalan Gegerkalong Girang No. 16C'
    },
    {
      'title': 'Menu 7',
      'name': 'Risman Hidayatullah',
      'address': 'Jalan Gegerkalong Girang No. 17C'
    },
    {
      'title': 'Menu 8',
      'name': 'Bambang Subarna',
      'address': 'Jalan Rengas Dengklok No. 17'
    },
    {
      'title': 'Menu 9',
      'name': 'Rayhan Zafiar',
      'address': 'Jalan Nanas Raya No. 119'
    },
    {
      'title': 'Menu 10',
      'name': 'Rizal Muharam',
      'address': 'Jalan Apel Raya No. 16'
    },
    {
      'title': 'Menu 11',
      'name': 'Moch. Jhody Al-Ghany',
      'address': 'Jalan Pintu Uyuh No. 92'
    },
    {
      'title': 'Menu 12',
      'name': 'Cikal Fathirachman',
      'address': 'Jalan Graha Perum Raya Blok F No. 17'
    },
    {
      'title': 'Menu 13',
      'name': 'Morand Fauzi',
      'address': 'Jalan Cagak No 15C'
    },
    {
      'title': 'Menu 14',
      'name': 'Muhammad Fauzi',
      'address': 'Jalan Palabuan No. 177'
    },
    {
      'title': 'Menu 15',
      'name': 'Sidiq Permana',
      'address': 'Perumnas Blok 1 No. 13'
    },
    {
      'title': 'Menu 16',
      'name': 'Hapsah Ansamu',
      'address': 'Jalan Pagaden Baru No. 13'
    },
    {
      'title': 'Menu 17',
      'name': 'Dwiki Pebiyanto',
      'address': 'Jalan Panglejar Raya Np. 87'
    },
    {
      'title': 'Menu 18',
      'name': 'Hanifa Zahra Dhiah',
      'address': 'Perumnas Blok IV No 14'
    },
    {
      'title': 'Menu 19',
      'name': 'Pipit Yuliani',
      'address': 'Jalan Dukuh II No. 14'
    },
    {
      'title': 'Menu 20',
      'name': 'Rifqi Tryananda',
      'address': 'Jalan Majalengka No. 67'
    },
  ];
  String? selectedData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 20,
        ),
        child: ExpansionPanelList(
          children: data.map((e) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    e['title'],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                );
              },
              body: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Information',
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.2),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: OutlinedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                e['title'],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'OK',
                          style: blackTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Text(
                    e['name'],
                    style: regularTextStyle.copyWith(fontSize: 16),
                  ),
                ),
              ),
              isExpanded: selectedData == e['title'] ? true : false,
            );
          }).toList(),
          expansionCallback: (int index, bool isExpanded) {
            if (isExpanded == false) {
              setState(() {
                selectedData = data[index]['title'];
              });
            } else {
              selectedData = '';
            }
          },
        ),
      ),
    );
  }
}
