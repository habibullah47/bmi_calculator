import 'package:flutter/material.dart';

class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        //key: GlobalKey(),
        child: TextFormField(
          controller: TextEditingController(),
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            hintText: 'Write your valuable feedback here',
            label: Text('Your feedback'),
            filled: true,
          ),
          maxLines: 10,
          maxLength: 1000,
          textInputAction: TextInputAction.done,
          validator: (String? text) {
            if (text == null || text.isEmpty) {
              return 'Please, enter your feedback';
            }
            return null;
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {},
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
