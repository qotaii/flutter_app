import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _UserInfo(),
          SizedBox(height: 30),
          _MenuWidget(
            menuRow: [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папки с чатами'),
  ],
          
          ), SizedBox(height: 30),
          _MenuWidget(
            menuRow: [
    MenuRowData(Icons.notifications, 'Уведомления'),
    MenuRowData(Icons.lock, 'Кондифициальность'),
    MenuRowData(Icons.data_array, 'Данные и память'),
    MenuRowData(Icons.style, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
    MenuRowData(Icons.emoji_emotions, 'Стикеры и эмодзи'),
  ],
          
          ),
        ],
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({Key? key, required this.menuRow});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
        ),
      ),
    );
  }
}
class MenuSettingsRow {
  final Icon icon;
  final String text;

  MenuSettingsRow(this.icon, this.text);
}





class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  const _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          _AvatarWidget(),
          _UserNameWidget(),
          _PhoneNumberWidget(),
          _NicknameWidget(),
        ],
      ),
    );
  }
}

class _NicknameWidget extends StatelessWidget {
  const _NicknameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('@qotaii',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ));
  }
}

class _PhoneNumberWidget extends StatelessWidget {
  const _PhoneNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('+7 (918) 648 47 68',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Yaroslav Mashirov',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
