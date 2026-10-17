import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/data/repositories/ayah_repository.dart';
import '../../../core/data/models/ayah.dart';

final ayahRepositoryProvider = Provider((ref) => AyahRepository());

final randomAyahProvider = FutureProvider<Ayah>((ref) async {
  final repo = ref.watch(ayahRepositoryProvider);
  return await repo.fetchRandomAyah();
});

class QuranAudioScreen extends ConsumerWidget {
  const QuranAudioScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAyah = ref.watch(randomAyahProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Random Ayah')),
      body: asyncAyah.when(
        data: (ayah) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ayah.text,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              if (ayah.translation != null)
                Text(
                  ayah.translation!,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.play_arrow),
                label: const Text('Play Audio (placeholder)'),
                onPressed: () {},
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
