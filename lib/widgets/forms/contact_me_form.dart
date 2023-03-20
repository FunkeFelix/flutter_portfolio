import 'package:flutter/material.dart';
import 'package:portfolio/extensions/margin_padding.dart';
import 'package:portfolio/widgets/buttons/normal_button.dart';
import 'package:portfolio/widgets/forms/widgets/input_field.dart';
import 'package:dio/dio.dart';

class ContactMeForm extends StatefulWidget {
  const ContactMeForm({Key? key}) : super(key: key);

  @override
  _ContactMeFormState createState() => _ContactMeFormState();

  static _ContactMeFormState of(BuildContext context) =>
      context.findAncestorStateOfType<_ContactMeFormState>()!;
}

class _ContactMeFormState extends State<ContactMeForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  void _submitForm(BuildContext context) async {
    var dio = Dio();
    const uri = 'https://formsubmit.co/felixfunke456@gmail.com';
    var map = Map<String, dynamic>();

    map['name'] = _nameController.text;
    map['email'] = _emailController.text;
    map['message'] = _messageController.text;
    try {
      FormData formData = FormData.fromMap(map);
      await dio.post(
        uri.toString(),
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Success'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error'),
        ),
      );
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputField(
            label: 'Name',
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          InputField(
            label: 'Email',
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          InputField(
            label: 'Message',
            controller: _messageController,
            maxLines: 5,
            maxLength: 400,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your message';
              }
              return null;
            },
          ),
          NormalButton(
              text: 'SUBMIT',
              backgroundColor: Colors.brown[800],
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing Data'),
                    ),
                  );

                  _submitForm(context);
                }
              })
        ],
      ),
    ).paddingOnly(top: 24);
  }
}
