import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlomobx/stores/page_store.dart';
import 'package:xlomobx/widgets/page_tile.dart';

class PageSection extends StatelessWidget {
  PageSection({super.key});

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: "Anúncios",
          iconData: Icons.list,
          onTap: () {
            pageStore.setPage(0);
          },
          highligted: pageStore.page == 0,
        ),
        PageTile(
          label: "Inserir Anúncios",
          iconData: Icons.edit,
          onTap: () {
            pageStore.setPage(1);
          },
          highligted: pageStore.page == 1,
        ),
        PageTile(
          label: "Chat",
          iconData: Icons.chat,
          onTap: () {
            pageStore.setPage(2);
          },
          highligted: pageStore.page == 2,
        ),
        PageTile(
          label: "Favoritos",
          iconData: Icons.favorite,
          onTap: () {
            pageStore.setPage(3);
          },
          highligted: pageStore.page == 3,
        ),
        PageTile(
          label: "Minha conta",
          iconData: Icons.person,
          onTap: () {
            pageStore.setPage(4);
          },
          highligted: pageStore.page == 4,
        ),
      ],
    );
  }
}
