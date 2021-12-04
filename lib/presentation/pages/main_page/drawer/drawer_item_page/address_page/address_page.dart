import 'package:flutter/material.dart';
import 'package:foody_yo/constants/app_string.dart';
import 'package:foody_yo/constants/route_string.dart';
import 'package:foody_yo/presentation/widgets/simple_appbar.dart';
import 'package:foody_yo/presentation/widgets/simple_text.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const SimpleAppBar(title: AppString.address),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
           AddressTile(onTap: (){
             Navigator.popAndPushNamed(context, RouteString.addressEdit);
           },),
          const Divider(
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
        ],
      ),
    ));
  }
}

class AddressTile extends StatelessWidget {
  final void Function()? onTap;
  const AddressTile({Key? key,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.location_on),
      title: Row(
        children: const [
          Expanded(
            child: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
          Icon(Icons.edit_outlined),
          Icon(Icons.delete_outline),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SimpleText('Karachi'),
          SimpleText('Note To Rider: fayyaz Center')
        ],
      ),
    );
  }
}
