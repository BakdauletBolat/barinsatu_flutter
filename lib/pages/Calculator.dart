import 'package:barinsatu/ads/widgets/Picker.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key, this.price}) : super(key: key);

  final double? price;

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class Month {
  const Month(this.name, this.value);

  final String? name;
  final int? value;
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.calculate),
            Text('Ипотечный калькулятор')
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: const SingleChildScrollView(child: CalculatorObject()),
      ),
    );
  }
}

class CalculatorObject extends StatefulWidget {
  const CalculatorObject({Key? key, this.price}) : super(key: key);

  final double? price;

  @override
  _CalculatorObjectState createState() => _CalculatorObjectState();
}

class _CalculatorObjectState extends State<CalculatorObject> {
  var month = const [
    Month('1 месяц', 1),
    Month('3 мес', 3),
    Month('6 мес', 6),
    Month('9 мес', 9),
    Month('12 мес', 12),
    Month('1.5 год', 18),
    Month('2 года', 24),
    Month('3 года', 36),
    Month('4 года', 48),
    Month('5 лет', 60),
    Month('6 лет', 72),
    Month('7 лет', 84),
    Month('8 лет', 96),
    Month('9 лет', 108),
    Month('10 лет', 120),
    Month('11 лет', 132),
    Month('12 лет', 144),
    Month('13 лет', 156),
    Month('14 лет', 168),
    Month('15 лет', 180),
  ];

  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter(locale: 'Ru', decimalDigits: 0, symbol: 'т ');

  final CurrencyTextInputFormatter _Fformatter =
      CurrencyTextInputFormatter(locale: 'Ru', decimalDigits: 0, symbol: 'т ');

  double price = 0;
  double fPrice = 0;
  int selectedTime = 9;
  int time = 60;
  double percent = 0;

  TextEditingController priceController = TextEditingController();

  double requiredLoanAmount() {
    return price - fPrice;
  }

  double overpayment() {
    double overpayment = ((requiredLoanAmount() * percent) / 100) * (time / 12);
    return overpayment;
  }

  double totalToReturn() {
    return overpayment() + requiredLoanAmount();
  }

  double monthlyPayment() {
    double sum = totalToReturn() / time;
    return sum;
  }

  double percentToBarinatu() {
    double req = requiredLoanAmount();
    double totalRe = totalToReturn();
    double percent = (req * 100) / totalRe;
    return percent;
  }

  final priceFormat = NumberFormat("#,##0", "en_US");

  @override
  void initState() {
    if (widget.price != null) {
      priceController.text = widget.price.toString();
      setState(() {
        price = widget.price!;
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          controller: priceController,
          inputFormatters: [_formatter],
          decoration: const InputDecoration(label: Text('Цена(т)')),
          onChanged: (value) {
            if (value.isNotEmpty && value != '') {
              setState(() {
                price =
                    double.parse(_formatter.getUnformattedValue().toString());
              });
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Picker(
            title: 'Cрок ипотеки',
            onSelectedItemChanged: (value) {
              setState(() {
                time = month[value].value!;
                selectedTime = value;
              });
            },
            items: month,
            selectedValue: selectedTime),
        const SizedBox(
          height: 5,
        ),
        TextField(
          inputFormatters: [_Fformatter],
          keyboardType: TextInputType.number,
          decoration:
              const InputDecoration(label: Text('Первоначальный взнос(т)')),
          onChanged: (value) {
            if (value.isNotEmpty && value != '') {
              setState(() {
                fPrice =
                    double.parse(_Fformatter.getUnformattedValue().toString());
              });
            }
          },
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(label: Text('Процент(%)')),
          onChanged: (value) {
            if (value.isNotEmpty && value != '') {
              setState(() {
                percent = double.parse(value);
              });
            }
          },
        ),
        const SizedBox(
          height: 20,
        ),
        GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.only(bottom: 10),
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            RectangleWithIcon(
                icon: Icons.production_quantity_limits,
                placeholder: 'Переплата',
                title: overpayment().isNaN
                    ? "0 т"
                    : priceFormat.format(overpayment()) + ' т'),
            RectangleWithIcon(
                icon: Icons.credit_card,
                placeholder: 'В месяц',
                title: monthlyPayment().isNaN
                    ? "0 т"
                    : priceFormat.format(monthlyPayment()) + ' т'),
            RectangleWithIcon(
                icon: Icons.attach_money,
                placeholder: 'К возврату',
                title: totalToReturn().isNaN
                    ? "0 т"
                    : priceFormat.format(totalToReturn()) + ' т'),
            RectangleWithIcon(
                icon: Icons.account_balance,
                placeholder: 'Сумма для кредита',
                title: requiredLoanAmount().isNaN
                    ? "0 т"
                    : priceFormat.format(requiredLoanAmount())),
          ],
        )
      ],
    );
  }
}

class RectangleWithIcon extends StatelessWidget {
  const RectangleWithIcon(
      {Key? key,
      this.type,
      required this.icon,
      required this.placeholder,
      required this.title})
      : super(key: key);

  final IconData icon;
  final int? type;
  final String placeholder;
  final dynamic title;

  @override
  Widget build(BuildContext context) {
    double? fontSize = 20;

    if (type == 0) {
      fontSize = 12;
    }
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.07),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 6))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Text(
                placeholder,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
