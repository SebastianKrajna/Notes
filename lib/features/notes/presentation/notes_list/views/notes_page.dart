import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:notes/core/localizations/generated/l10n.dart';
import 'package:notes/features/app/route/app_page.dart';
import 'package:notes/features/language/widgets/language_dropdown.dart';
import 'package:notes/features/notes/domain/entities/note.dart';
import 'package:notes/features/notes/presentation/notes_list/bloc/notes_list_bloc.dart';
import 'package:shimmer/shimmer.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppText.of(context).appName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: LanguageDropdown(),
          ),
        ],
      ),
      body: BlocBuilder<NotesListBloc, NotesListState>(
        builder: (context, state) {
          return switch (state.status) {
            NotesListStatus.failure => _ErrorList(),
            NotesListStatus.success => _SuccessList(),
            _ => _LoadingList(),
          };
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed(AppPage.addNote.name),
        icon: const Icon(Icons.add),
        label: Text(AppText.of(context).add_note),
      ),
    );
  }
}

class _ErrorList extends StatelessWidget {
  const _ErrorList();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: colorScheme.error,
          ),
          const Gap(16),
          Builder(builder: (context) {
            final errorMessage =
                context.select((NotesListBloc bloc) => bloc.state.errorMessage);
            return Text(
              errorMessage ?? AppText.of(context).an_unknown_error_occurred,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: colorScheme.error,
                  ),
            );
          }),
        ],
      ),
    );
  }
}

class _LoadingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 5,
        separatorBuilder: (context, index) => const Gap(8),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
          );
        },
      ),
    );
  }
}

class _SuccessList extends StatelessWidget {
  const _SuccessList();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final colorScheme = Theme.of(context).colorScheme;
        final notes = context.select((NotesListBloc bloc) => bloc.state.notes);

        if (notes.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.note_outlined,
                  size: 48,
                  color: colorScheme.primary,
                ),
                const Gap(16),
                Text(
                  AppText.of(context).no_notes,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Gap(8),
                Text(
                  AppText.of(context).add_your_first_note,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: notes.length,
          separatorBuilder: (context, index) => const Gap(8),
          itemBuilder: (context, index) {
            final note = notes[index];
            return NoteCard(note: note);
          },
        );
      },
    );
  }
}

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          // TODO: Implementacja edycji notatki
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.content,
                style: theme.textTheme.bodyLarge,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 16,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                  const Gap(4),
                  Text(
                    DateFormat('dd.MM.yyyy HH:mm').format(note.creationDate),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
