import 'package:flutter/material.dart';
import 'dart:async';

// Fonksiyon tanımlamak
void main() {
  // Fonksiyon çağırmak
  String name = "Serbay";

  bool isDebug = false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Serbay";

    bool isDebug = false;

    const text = Text('data');
    return MaterialApp(
      debugShowCheckedModeBanner: isDebug,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Image.asset(
                'varliklar/notification.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                'varliklar/bag.png',
                width: 24,
                height: 24,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Search Anything...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFFD1D5DB),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All ->',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Wrap(
                      spacing: 60,
                      runSpacing: 20,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFECFDF5),
                                child: Image.asset('varliklar/fashion.png'),
                              ),
                            ),
                            const Text("Fashion"),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFFFF7ED),
                                child: Image.asset('varliklar/electronic.png'),
                              ),
                            ),
                            const Text("Electronics"),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFECFDF5),
                                child: Image.asset('varliklar/appliances.png'),
                              ),
                            ),
                            const Text("Appliances"),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFECFEFF),
                                child: Image.asset('varliklar/beauty.png'),
                              ),
                            ),
                            const Text("Beauty"),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 120,
                              width: 120,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFEFF6FF),
                                child: Image.asset('varliklar/furniture.png'),
                              ),
                            ),
                            const Text("Furniture"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 34),
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 200,
                            height: 170,
                            color: Color(0xFFFFE0B8),
                            child: Center(
                              child: Text("MIN %15 OFF",
                                  style: TextStyle(
                                      color: Color(0xFF3E1304),
                                      fontSize: 24,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0.05,
                                      letterSpacing: 2.88)),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30.0, top: 100),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text("SHOP NOW",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: 1.20,
                                          backgroundColor: Color(0xFFCC6522))),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Color(0xFFCC6522)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: Image.asset("varliklar/shoes.png"),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Deal of the day',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All-->',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
              AppCountDown(
                deadline: DateTime.now().add(const Duration(hours: 3)),
              ),
              Wrap(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFEFF6FF),
                              child: Image.asset('varliklar/runningShoes.png'),
                            ),
                          ),
                          const Text("Running Shoes"),
                          const SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            color: Colors.red,
                            child: const Text(
                              'Upto 40% OFF',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFEFF6FF),
                              child: Image.asset('varliklar/sneakers.png'),
                            ),
                          ),
                          const Text("Sneakers"),
                          const SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            color: Colors.red,
                            child: const Text(
                              '40-60% OFF',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 24,
                        height: 24,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                    width: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFEFF6FF),
                              child: Image.asset('varliklar/wristWatches.png'),
                            ),
                          ),
                          const Text("Wrist Watches"),
                          const SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            color: Colors.red,
                            child: const Text(
                              'Upto 40% OFF',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFEFF6FF),
                              child: Image.asset(
                                  'varliklar/bluetoothSpeakers.png'),
                            ),
                          ),
                          const Text("Bluetooth Speakers"),
                          const SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            color: Colors.red,
                            child: const Text(
                              '40-60% OFF',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 30,
                width: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Hot Selling Footwear',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All ->',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
                width: 20,
              ),
              // burası baş

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Wrap(
                      spacing: 60,
                      runSpacing: 20,
                      children: [
                        Column(
                          children: [
                            Stack(children: <Widget>[
                              Container(
                                height: 120,
                                width: 120,
                                child: Image.asset('varliklar/sneakers.png'),
                              ),
                              Container(
                                height: 19,
                                width: 56,
                                color: Color(0xFFEA580C),
                                child: Text(
                                  "Top Seller",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                height: 120,
                                width: 120,
                                child: IconButton(
                                  icon: Image.asset(
                                    'varliklar/Favourite.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ]),
                            SizedBox(width: 16, height: 5),
                            Container(
                              width: 120,
                              child: Text(
                                'Adidas white sneakers for men',
                                style: TextStyle(
                                  color: Color(0xFF1F2937),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 21,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$68',
                                    style: TextStyle(
                                      color: Color(0xFF1F2937),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.11,
                                      letterSpacing: 0.07,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '\$136',
                                    style: TextStyle(
                                      color: Color(0xFF9CA3AF),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.18,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '50% OFF',
                                    style: TextStyle(
                                      color: Color(0xFFEA580C),
                                      fontSize: 10,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset('varliklar/nike.jpeg'),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            height: 120,
                            width: 120,
                            child: IconButton(
                              icon: Image.asset(
                                'varliklar/Favourite.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                        Stack(children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset('varliklar/nike-2.jpeg'),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            height: 120,
                            width: 120,
                            child: IconButton(
                              icon: Image.asset(
                                'varliklar/Favourite.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: 24,
                height: 24,
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      ' Recommended for you',
                      style: TextStyle(
                        color: Color(0xFF1F2937),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.11,
                        letterSpacing: 0.07,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All ->',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(width: 24, height: 24),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Wrap(
                      spacing: 60,
                      runSpacing: 20,
                      children: [
                        Stack(children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset('varliklar/shirt1.jpeg'),
                          ),
                          Container(
                            height: 19,
                            width: 56,
                            color: Color(0xFFEA580C),
                            child: Text(
                              "Top Seller",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            height: 120,
                            width: 120,
                            child: IconButton(
                              icon: Image.asset(
                                'varliklar/Favourite.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                        Stack(children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset('varliklar/shirt2.jpeg'),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            height: 120,
                            width: 120,
                            child: IconButton(
                              icon: Image.asset(
                                'varliklar/Favourite.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                        Stack(children: <Widget>[
                          Container(
                            height: 120,
                            width: 120,
                            child: Image.asset('varliklar/shirt3.jpeg'),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            height: 120,
                            width: 120,
                            child: IconButton(
                              icon: Image.asset(
                                'varliklar/Favourite.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ]),
                      ],
                    ),
                  ],
                ),
              ),

              //burası son

              const SizedBox(
                height: 30,
                width: 400,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'varliklar/home.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Home'),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'varliklar/element-3.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Categories'),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'varliklar/clock.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Orders'),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'varliklar/profile-circle.png',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Profile'),
                ],
              ),
            ],
          ),
        ),
        drawer: const Drawer(),
      ),
    );
  }
}

class AppCountDown extends StatefulWidget {
  const AppCountDown({
    super.key,
    required this.deadline,
    this.textStyle,
    this.labelTextStyle,
  });

  final DateTime deadline;
  final TextStyle? textStyle;
  final TextStyle? labelTextStyle;

  @override
  State<AppCountDown> createState() => _AppCountDownState();
}

class _AppCountDownState extends State<AppCountDown> {
  late Timer timer;
  Duration duration = const Duration();

  @override
  void initState() {
    calculateTimeLeft(widget.deadline);

    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => calculateTimeLeft(widget.deadline),
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var textStyle =
        widget.textStyle ?? Theme.of(context).textTheme.headlineLarge!;

    var labelTextStyle =
        widget.labelTextStyle ?? Theme.of(context).textTheme.bodyMedium!;

    final hours = DefaultTextStyle(
      style: textStyle,
      child: Text(
        duration.inHours.toString().padLeft(2, '0'),
      ),
    );

    final minutes = DefaultTextStyle(
      style: textStyle,
      child: Text(
        duration.inMinutes.remainder(60).toString().padLeft(2, '0'),
      ),
    );

    final seconds = DefaultTextStyle(
      style: textStyle,
      child: Text(
        duration.inSeconds.remainder(60).toString().padLeft(2, '0'),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Color(0xFF92256),
                Color(0xFF9C254D),
              ]).createShader(
                Rect.fromLTWH(
                  0,
                  0,
                  bounds.width,
                  bounds.height,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: hours,
              ),
            ),
            DefaultTextStyle(
              style: labelTextStyle,
              child: const Text('Hours'),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Color(0xFF92256),
                Color(0xFF9C254D),
              ]).createShader(
                Rect.fromLTWH(
                  0,
                  0,
                  bounds.width,
                  bounds.height,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: minutes,
              ),
            ),
            DefaultTextStyle(
              style: labelTextStyle,
              child: const Text('Minutes'),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Color(0xFF92256),
                Color(0xFF9C254D),
              ]).createShader(
                Rect.fromLTWH(
                  0,
                  0,
                  bounds.width,
                  bounds.height,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: seconds,
              ),
            ),
            DefaultTextStyle(
              style: labelTextStyle,
              child: const Text('Seconds'),
            ),
          ],
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  calculateTimeLeft(DateTime deadline) {
    final seconds = deadline.difference(DateTime.now()).inSeconds;
    setState(() => duration = Duration(seconds: seconds));
  }
}
