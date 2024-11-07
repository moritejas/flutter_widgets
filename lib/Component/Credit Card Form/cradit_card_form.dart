import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardFormComponent extends StatefulWidget {
  const CreditCardFormComponent({super.key});

  @override
  State<CreditCardFormComponent> createState() => _CreditCardFormComponentState();
}

class _CreditCardFormComponentState extends State<CreditCardFormComponent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String cardNumber = '';
  String cardHolderName = '';
  String expirationDate = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit Card Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(  // Make the Column scrollable
          child: Column(
            children: [

              /// Add This dependency : flutter_credit_card: ^4.0.1
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expirationDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused, // true when you want to show CVV
                cardBgColor: Colors.blueAccent,
                labelCardHolder: 'Card Holder', // Custom label for the card holder
                isHolderNameVisible: true,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                  // Handle changes in card brand if needed
                },
                obscureCardNumber: false, // Obscure the card number if true
                obscureCardCvv: false, // Obscure the CVV if true
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Card Number'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cardNumber = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter card number';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Card Holder Name'),
                      onChanged: (value) {
                        setState(() {
                          cardHolderName = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter card holder name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Expiration Date (MM/YY)'),
                      onChanged: (value) {
                        setState(() {
                          expirationDate = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter expiration date';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'CVV'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          cvvCode = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter CVV';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Process payment or perform further actions
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Payment')),
                          );
                        }
                      },
                      child: const Text('Pay'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
