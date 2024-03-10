import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_management/ctrl/article_list_controller.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AsyncNotifierProvider Usage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            minimumSize: MaterialStateProperty.all(const Size(200, 40)),
          ),
        ),
      ),
      home: const ItemListViewPage(),
    );
  }
}

class ItemListViewPage extends ConsumerWidget {
  const ItemListViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncNotifierProvider = ref.watch(authControllerProvider);
    final notifier = ref.read(authControllerProvider.notifier);

    return Scaffold(
        appBar: AppBar(
          title: const Text('AsyncNotifierProvider Usage'),
        ),
        body: asyncNotifierProvider.when(
          data: (data) {
            return ListView(
              children: data.articleList
                  .map(
                    (article) => ListTile(
                      leading: Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                      ),
                      title: Text(article.title),
                      subtitle: Text(article.detail),
                    ),
                  )
                  .toList(),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) {
            return Text('Error: $error');
          },
        ),
        bottomNavigationBar: ElevatedButton(
          onPressed: () => notifier.readMore(),
          child: const Text('さらに読み込む'),
        ));
  }
}
