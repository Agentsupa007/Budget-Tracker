import 'package:flutter/material.dart ';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpense();
}

class _AddExpense extends State<AddExpense> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectDate = DateTime.now();

  @override
  void initState(){
    dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Add Expense",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child : TextFormField(
                controller: expenseController,
                decoration: InputDecoration(
                  filled: true ,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 16,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            TextFormField(
              controller: categoryController,
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,
              onTap: (){


              },
              decoration: InputDecoration(
                  filled: true ,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.list,
                    size: 16,
                    color: Colors.grey,
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      showDialog(
                        context: context, 
                        builder: (ctx){
                          return AlertDialog(
                            title: const Text("Create a Category"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 16),
                                TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      filled: true ,
                                      fillColor: Colors.white,
                                      prefixIcon: const Icon(
                                        FontAwesomeIcons.clock,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      filled: true ,
                                      fillColor: Colors.white,
                                      prefixIcon: const Icon(
                                        FontAwesomeIcons.clock,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Icon",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                      filled: true ,
                                      fillColor: Colors.white,
                                      prefixIcon: const Icon(
                                        FontAwesomeIcons.clock,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Color",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                ),
                              ],
                            ),
                          );
                        }
                      );
                    },

                    icon: const Icon(
                      FontAwesomeIcons.plus,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: "Category",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: dateController,
              textAlignVertical: TextAlignVertical.center,
              readOnly: true,
              onTap: () async{
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: selectDate,
                  firstDate: DateTime.now(), 
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );

                if(newDate != null){
                  setState(() {
                    dateController.text = DateFormat('dd/MM/yyyy').format(newDate);
                    selectDate = newDate;
                  });
                }
              },
              decoration: InputDecoration(
                  filled: true ,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.clock,
                    size: 16,
                    color: Colors.grey,
                  ),
                  hintText: "Date",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: kToolbarHeight,
              child: TextButton(
              onPressed: (){}, 
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}