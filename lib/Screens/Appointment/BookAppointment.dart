import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:time_range/time_range.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  // String _selectedDate = '';
  // String _dateCount = '';
  // String _range = '';
  // String _rangeCount = '';

  // /// The method for [DateRangePickerSelectionChanged] callback, which will be
  // /// called whenever a selection changed on the date picker widget.
  // void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
  //   /// The argument value will return the changed date as [DateTime] when the
  //   /// widget [SfDateRangeSelectionMode] set as single.
  //   ///
  //   /// The argument value will return the changed dates as [List<DateTime>]
  //   /// when the widget [SfDateRangeSelectionMode] set as multiple.
  //   ///
  //   /// The argument value will return the changed range as [PickerDateRange]
  //   /// when the widget [SfDateRangeSelectionMode] set as range.
  //   ///
  //   /// The argument value will return the changed ranges as
  //   /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
  //   /// multi range.
  //   setState(() {
  //     if (args.value is PickerDateRange) {
  //       _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
  //           // ignore: lines_longer_than_80_chars
  //           ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
  //     } else if (args.value is DateTime) {
  //       _selectedDate = args.value.toString();
  //     } else if (args.value is List<DateTime>) {
  //       _dateCount = args.value.length.toString();
  //     } else {
  //       _rangeCount = args.value.length.toString();
  //     }
  //   });
  // }
  late String _startDate, _endDate;
  late DateRangePickerController _controller;
  late DateTime _start, _end, _today;

  @override
  void initState() {
    _controller = DateRangePickerController();
    _startDate = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString();
    _endDate = DateFormat('dd, MMMM yyyy')
        .format(DateTime.now().add(Duration(days: 3)))
        .toString();
    _today = DateTime.now();
    _start = _today;
    _end = _today.add(Duration(days: 3));
    _controller.selectedRange = PickerDateRange(_start, _end);
    super.initState();
  }

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(
      () {
        _startDate =
            DateFormat('dd, MMMM yyyy').format(args.value.startDate).toString();
        _endDate =
            DateFormat('dd, MMMM yyyy').format(args.value.endDate).toString();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        title: const Text(
          "Book Appointment",
          style: TextStyle(
            fontFamily: 'Urbanist',
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Select Date",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Constants().ContainerBg2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SfDateRangePicker(
                      // show year
                      showNavigationArrow: true,
                      headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                        textStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // text style
                      selectionTextStyle: TextStyle(
                        fontFamily: 'Urbanist',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      yearCellStyle: DateRangePickerYearCellStyle(
                        textStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        textStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      backgroundColor: Constants().ContainerBg2,
                      selectionMode: DateRangePickerSelectionMode.single,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Time",
                  style: TextStyle(
                    fontFamily: 'Urbanist',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          // _selectedTime = index;
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Constants().ContainerBg2,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Constants().Button,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "10:00 AM",
                            style: TextStyle(
                              fontFamily: 'Urbanist',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
                // TimeRange(
                //   titlePadding: 20,
                //   minimalTimeRange: 30,
                //   textStyle: TextStyle(
                //     fontFamily: 'Urbanist',
                //     color: Colors.black,
                //     fontSize: 18,
                //     fontWeight: FontWeight.w600,
                //   ),
                //   activeTextStyle: TextStyle(
                //     fontFamily: 'Urbanist',
                //     color: Colors.white,
                //     fontSize: 18,
                //     fontWeight: FontWeight.w600,
                //   ),
                //   borderColor: Constants().Button,
                //   activeBorderColor: Constants().TextColorBlack,
                //   backgroundColor: Constants().ContainerBg2,
                //   activeBackgroundColor: Constants().Button,
                //   firstTime: TimeOfDay(hour: 9, minute: 0),
                //   lastTime: TimeOfDay(hour: 20, minute: 0),
                //   timeStep: 30,
                //   timeBlock: 30,
                //   onRangeCompleted: (range) => print(range),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
