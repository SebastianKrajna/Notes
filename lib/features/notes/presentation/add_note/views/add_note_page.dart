import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/core/localizations/generated/l10n.dart';
import 'package:notes/core/toast/app_toast.dart';
import 'package:notes/features/notes/presentation/add_note/bloc/add_note_bloc.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteBloc, AddNoteState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == AddNoteStatus.success) {
          context.showSuccessToast(
            description: AppText.of(context).note_added_successfully,
          );
          context.pop();
        } else if (state.status == AddNoteStatus.failure) {
          context.showErrorToast(
            description:
                state.errorMessage ?? AppText.current.an_unknown_error_occurred,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppText.of(context).add_note),
          actions: [
            BlocBuilder<AddNoteBloc, AddNoteState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                if (state.status == AddNoteStatus.loading) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  );
                }

                return TextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      context.read<AddNoteBloc>().add(AddNoteSubmitted());
                    }
                  },
                  child: Text(AppText.of(context).save),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: TextFormField(
              maxLines: 3,
              minLines: 3,
              decoration: InputDecoration(
                hintText: AppText.of(context).add_note_hint,
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return AppText.of(context).note_cannot_be_empty;
                }
                return null;
              },
              onChanged: (value) {
                context.read<AddNoteBloc>().add(AddNoteContentChanged(value));
              },
            ),
          ),
        ),
      ),
    );
  }
}
