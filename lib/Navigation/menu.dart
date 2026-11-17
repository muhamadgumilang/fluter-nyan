import 'package:flutter/material.dart';
import 'package:flutter_gumilang/Navigation/about_page.dart';

class Contoh extends StatelessWidget {
  const Contoh({super.key});

  static const Color navy = Color(0xFF172554);
  static const Color gold = Color(0xFFD4AF70);
  static const Color background = Color(0xFFF5F6FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(25, 35, 25, 40),
                decoration: const BoxDecoration(
                  color: navy,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.school_rounded,
                            color: gold,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "STUDENT DASHBOARD",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 35),

                    const Text(
                      "Selamat Datang,",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      "Muhamad Gumilang",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "XII RPL TILOE  •  Learning Dashboard",
                      style: TextStyle(
                        color: gold,
                        fontSize: 13,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),

              // CONTENT
              Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Menu Pembelajaran",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: navy,
                      ),
                    ),

                    const SizedBox(height: 7),

                    const Text(
                      "Pilih materi latihan yang ingin kamu pelajari.",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),

                    const SizedBox(height: 22),

                    // MENU ABOUT
                    menuCard(
                      context,
                      icon: Icons.person_rounded,
                      title: "About Me",
                      subtitle: "Informasi profil pribadi",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AboutPage(
                                nama: "Muhamad Gumilang",
                                kelas: "XII RPL TILOE",
                                umur: 17,
                              );
                            },
                          ),
                        );
                      },
                    ),

                    // MENU GRID
                    menuCard(
                      context,
                      icon: Icons.grid_view_rounded,
                      title: "Latihan Grid",
                      subtitle: "Belajar layout menggunakan Grid",
                      onTap: () {
                        Navigator.pushNamed(context, '/grid');
                      },
                    ),

                    // MENU LIST
                    menuCard(
                      context,
                      icon: Icons.view_list_rounded,
                      title: "Latihan List",
                      subtitle: "Belajar membuat tampilan List",
                      onTap: () {
                        Navigator.pushNamed(context, '/list');
                      },
                    ),

                    // MENU ROW COLUMN
                    menuCard(
                      context,
                      icon: Icons.view_week_rounded,
                      title: "Latihan Row & Column",
                      subtitle: "Belajar mengatur posisi widget",
                      onTap: () {
                        Navigator.pushNamed(context, '/latihanrowcolumn');
                      },
                    ),

                    // MENU SIZEBOX
                    menuCard(
                      context,
                      icon: Icons.aspect_ratio_rounded,
                      title: "Latihan SizedBox",
                      subtitle: "Belajar mengatur ukuran dan jarak",
                      onTap: () {
                        Navigator.pushNamed(context, '/latihanpakacedua');
                      },
                    ),

                    menuCard(
                      context,
                      icon: Icons.aspect_ratio_rounded,
                      title: "Formulir",
                      subtitle: "Formulir",
                      onTap: () {
                        Navigator.pushNamed(context, '/FormEkskul');
                      },
                    ),

                    menuCard(
                      context,
                      icon: Icons.library_books_rounded,
                      title: "Perpustakaan",
                      subtitle: "Latihan Membuat Perpustakaan",
                      onTap: () {
                        Navigator.pushNamed(context, '/Perpustakaan');
                      },
                    ),

                    const SizedBox(height: 25),

                    Center(
                      child: Text(
                        "© 2026 Muhamad Gumilang",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
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

  // WIDGET MENU CARD
  Widget menuCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.05),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              children: [
                // ICON
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEF1F8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(icon, color: navy, size: 27),
                ),

                const SizedBox(width: 15),

                // TEXT
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: navy,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                // ARROW
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6FA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: gold,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
