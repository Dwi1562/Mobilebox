import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.orange),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.check, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.link, color: Colors.grey),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.grey),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            tabs: [
              Tab(text: "Details"),
              Tab(text: "Activity"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DetailsTab(), // Content for Details tab
            ActivityTab(), // Content for Activity tab
          ],
        ),
      ),
    );
  }
}

class DetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Project",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                        child: Center(
                          child:
                              Icon(Icons.person, color: Colors.black, size: 16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Assigned to",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Color(0xFFF69622),
                            ),
                          ),
                          Text(
                            "Username",
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                        child: Center(
                          child: Icon(Icons.calendar_today,
                              color: Colors.black, size: 16),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Due date",
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Color(0xFFF69622),
                            ),
                          ),
                          Text(
                            "Today - Aug 13",
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "My tasks",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            Text(
              "Projects",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "project task management",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                Spacer(),
                Text(
                  "working on",
                  style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Container for Priority
            Container(
              width: MediaQuery.of(context).size.width, // Full width
              color: Color(0xFFE3E3E3),
              padding: EdgeInsets.all(8),
              child: Text(
                "Priority",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            TextField(
              maxLines: 2,
              decoration: InputDecoration(
                hintText: "Add more details to this task......",
                hintStyle:
                    GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Subtasks",
              style: GoogleFonts.poppins(fontSize: 14),
            ),
            SizedBox(height: 20),
            // Container for Subtasks
            Container(
              width: MediaQuery.of(context).size.width, // Full width
              color: Color(0xFFE3E3E3), // Background color
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline),
                      SizedBox(width: 8),
                      Text(
                        "Melakukan mockup riset",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline),
                      SizedBox(width: 8),
                      Text(
                        "Mas Fais jual kebab",
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add, color: const Color.fromARGB(255, 0, 0, 0)),
                  SizedBox(width: 5),
                  Text(
                    "Subtask",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              borderRadius: BorderRadius.circular(4),
              splashColor: Colors.orange.withOpacity(0.2),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                
                Text(
                  "Attachments",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10), // Spasi antara judul dan kotak
            Container(
              width: 50, // Lebar kotak
              height: 50, // Tinggi kotak
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Warna border abu-abu
                  style: BorderStyle.solid, // Gaya border solid
                ),
                borderRadius: BorderRadius.circular(5), // Sudut border bulat
              ),
              child: Center(
                child: Icon(Icons.add,
                    color: Colors.black), // Ikon tambah di tengah
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Activity Content Here",
        style: GoogleFonts.poppins(fontSize: 16),
      ),
    );
  }
}
