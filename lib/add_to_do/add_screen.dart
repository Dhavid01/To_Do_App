import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddToDo extends StatefulWidget {
  final Function(Map<String, dynamic>) onSave;
  const AddToDo({Key? key, required this.onSave}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  String title = 'Date Picker';
 

  DateTime _date = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2001),
      lastDate: DateTime(2222),
    );

    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
      });
    }
  }

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue.shade500,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade900,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    Text(
                      "New Task",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                "What is to be done?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: _taskController,
                      decoration: const InputDecoration(
                          hintText: "Enter Task here",
                          hintStyle: TextStyle(color: Colors.white)),
                      validator: (value) {
                        if (value?.isEmpty ?? true) return "Required";
                        return null;
                      },
                    ),
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                "Due Date",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      onTap: () async {
                        await _selectDate(context);
                        setState(() {
                          _dateController.text =
                              DateFormat.yMMMd().format(_date);
                        });
                      },
                      controller: _dateController,
                      validator: (value) {
                        if (value?.isEmpty ?? true) return "Required";
                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: "Date not set",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  widget.onSave(
                    {
                      'text1': _taskController.text,
                      'text2': _dateController.text
                    },
                  );
                  Navigator.pop(context);
                }
              },
              child: Center(
                child: Container(
                  height: 45,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
