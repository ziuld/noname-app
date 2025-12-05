import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/selected_page_provider.dart';
import 'widgets/custom_bottom_bar_widget.dart';

List<Widget> views = const [
  // DataPage(),
];

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedPage = Provider.of<SelectedPageProvider>(context).selectedPage;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Poke-Mapp'),
      ),
      body: views[selectedPage],
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}