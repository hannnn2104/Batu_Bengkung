import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Color(0xfff4f7f4),
      ),
      home: Pantai(),
    );
  }
}

class Pantai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff4f7f4),
        foregroundColor: Color(0xff174c4f),
        elevation: 0,
        title: Text(
          "BATU BENGKUNG BEACH",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(
              Icons.wb_sunny_outlined,
              color: Color(0xffe6a23c),
              size: 28,
            ),
          ),
        ],
      ),

      // BODY DENGAN BACKGROUND FOTO
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/pantai.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.75),
              BlendMode.lighten,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HERO SECTION
              Padding(
                padding: EdgeInsets.all(18),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Stack(
                    children: [
                      Image.asset(
                        'asset/batu.jpg',
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 18,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "DESTINASI ALAM",
                            style: TextStyle(
                              color: Color(0xff174c4f),
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 22,
                        right: 22,
                        bottom: 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discover the Blue",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 29,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Nikmati ketenangan di tepi lautan.",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // INTRODUCTION
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tentang Destinasi",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff174c4f),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Pantai Batu Bengkung merupakan salah satu destinasi wisata alam yang terletak di Kabupaten Malang, Jawa Timur. Pantai ini terkenal dengan formasi batu karang yang unik, hamparan pasir, serta ombak Samudra Hindia yang indah. Salah satu daya tariknya adalah cekungan alami di antara batu karang yang dapat menampung air laut saat ombak datang. Pemandangan laut yang luas dan suasana alam yang memukau menjadikan Pantai Batu Bengkung tempat yang menarik untuk menikmati keindahan alam, bersantai, dan mengabadikan momen.",
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.7,
                        color: Color(0xff627575),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // INFORMATION CARDS
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: InfoCard(
                        icon: Icons.waves_rounded,
                        title: "Pemandangan",
                        value: "Laut Biru",
                        color: Color(0xffd9f0ef),
                        iconColor: Color(0xff168b91),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: InfoCard(
                        icon: Icons.wb_sunny_rounded,
                        title: "Suasana",
                        value: "Tropis",
                        color: Color(0xffffedcf),
                        iconColor: Color(0xffd99328),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 28),

              // ACTIVITIES
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Aktivitas Menarik",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff174c4f),
                  ),
                ),
              ),

              SizedBox(height: 14),

              ActivityItem(
                icon: Icons.camera_alt_rounded,
                title: "Berburu Foto",
                subtitle: "Abadikan pemandangan laut.",
                color: Color(0xffd9f0ef),
              ),

              ActivityItem(
                icon: Icons.directions_walk_rounded,
                title: "Jalan di Tepi Pantai",
                subtitle: "Nikmati pasir dan angin laut.",
                color: Color(0xffffedcf),
              ),

              ActivityItem(
                icon: Icons.groups_rounded,
                title: "Waktu Bersama",
                subtitle: "Bersantai dengan teman dan keluarga.",
                color: Color(0xffe5e2f7),
              ),

              // LOCATION PANEL
              Padding(
                padding: EdgeInsets.all(18),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xff174c4f),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.location_on_rounded,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi Destinasi",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Indonesia",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),

              // QUOTE
              Padding(
                padding: EdgeInsets.fromLTRB(22, 5, 22, 15),
                child: Center(
                  child: Column(
                    children: [
                      Icon(
                        Icons.format_quote_rounded,
                        size: 38,
                        color: Color(0xff168b91),
                      ),
                      Text(
                        "\"Let the sea set you free.\"",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff174c4f),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "EXPLORE • ENJOY • REPEAT",
                        style: TextStyle(
                          fontSize: 11,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff168b91),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 15),

              // FOOTER
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Color(0xffe5eeea),
                child: Column(
                  children: [
                    Text(
                      "SEA ESCAPE",
                      style: TextStyle(
                        color: Color(0xff174c4f),
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Created by Moch.Reyhan Aulia",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff627575),
                      ),
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

// INFORMATION CARD
class InfoCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String value;
  final Color color;
  final Color iconColor;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
    required this.iconColor,
  });

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => isHovered = true);
      },
      onExit: (_) {
        setState(() => isHovered = false);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
          0,
          isHovered ? -5 : 0,
          0,
        ),
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: widget.iconColor.withOpacity(0.2),
                    blurRadius: 12,
                    offset: Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.icon,
              color: widget.iconColor,
              size: 30,
            ),
            SizedBox(height: 18),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff627575),
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.value,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: Color(0xff174c4f),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ACTIVITY ITEM
class ActivityItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const ActivityItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18, 0, 18, 12),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                icon,
                color: Color(0xff174c4f),
                size: 25,
              ),
            ),
            SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff174c4f),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff627575),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: Color(0xff168b91),
            ),
          ],
        ),
      ),
    );
  }
}
