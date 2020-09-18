import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../components/home_grid_view_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Today\n${DateTime.now().day.toString()} / ${DateTime.now().month.toString()} / ${DateTime.now().year.toString()}',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 3) - 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            CircularPercentIndicator(
              radius: MediaQuery.of(context).size.width / 2,
              lineWidth: 25.0,
              animation: true,
              percent: 0.8,
//                fillColor: Color(0xffF0F0EF),
              backgroundColor: Colors.white,
              center: Container(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 17),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF0F0EF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Level 2",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xff4996FE)),
                    ),
                    Text(
                      '04:00',
                      style: TextStyle(
                          color: Color(0xff023490),
                          fontSize: 45,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Total Activity\n1518',
                      style: TextStyle(
                          color: Color(0xff023490),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Color(0xff4996FE),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF0F0EF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.5,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 160,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 2 * 0.45,
                        ),
                        children: <Widget>[
                          HomeGridViewItem(
                            icon: Icons.filter_1,
                            disting: 'Steps',
                            number: '1400',
                          ),
                          HomeGridViewItem(
                            icon: Icons.filter_2,
                            disting: 'Tap',
                            number: '98',
                          ),
                          HomeGridViewItem(
                            icon: Icons.filter_3,
                            disting: 'Shake',
                            number: '20',
                          ),
                          HomeGridViewItem(
                            icon: Icons.location_on,
                            disting: 'Distance',
                            number: '560',
                          ),
                          HomeGridViewItem(
                            icon: Icons.filter_5,
                            disting: 'Calories',
                            number: '140',
                          ),
                          HomeGridViewItem(
                            icon: Icons.filter_6,
                            disting: 'Daily rewards',
                            number: '0/5',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Level 2!',
                                style: TextStyle(
                                    color: Color(0xff5961D1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Reach 10 points today to upgrade to level 3! \nRedeem more coins to buy more products',
                                style: TextStyle(
                                  color: Color(0xff5961D1),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff5961D1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
