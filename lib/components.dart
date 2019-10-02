library components;

import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController emailController;
  final String errorMessage;
  final Function validateEmailChange;

  EmailInput({
    this.errorMessage,
    this.emailController,
    this.validateEmailChange,
  });

  @override
  Column build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            onChanged: validateEmailChange,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
        ),
        _buildEmailFieldErrorMessage(),
      ],
    );
  }

  Widget _buildEmailFieldErrorMessage() {
    if (errorMessage == null || errorMessage.isEmpty) {
      return Container(height: 20);
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        height: 20,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            errorMessage,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.red[400],
            ),
          ),
        ),
      );
    }
  }
}


