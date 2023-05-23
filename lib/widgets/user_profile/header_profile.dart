import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconData = [
      Icons.qr_code_2,
      Icons.find_in_page_outlined,
      Icons.more_vert_outlined
    ];

    final List<Widget> iconButtonInHeader = [];

    for (var icon in iconData) {
      final widget = IconButtonInHeader(icon: icon);
      iconButtonInHeader.add(widget);
    }

    ///
    /// ВНИМАНИЕ!!! Переменные ниже должны задаваться из другого места!
    ///
    const String name = "Антон";
    const String online = 'Online';

    return Container(
      color: Colors.grey[500],
      width: double.infinity,
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: iconButtonInHeader,
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: Placeholder(),
                ),
                const SizedBox(width: 15),
                SizedBox(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        name,
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(height: 5),
                      Text(
                        online,
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class IconButtonInHeader extends StatelessWidget {
  final IconData icon;

  const IconButtonInHeader({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon),
    );
  }
}
