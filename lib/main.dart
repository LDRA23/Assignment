import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyLayoutPage(title: 'App Example'),
    );
  }
}

class MyLayoutPage extends StatefulWidget {
  const MyLayoutPage({super.key, required this.title});

  final String title;

  @override
  State<MyLayoutPage> createState() => _MyLayoutPageState();
}

class _MyLayoutPageState extends State<MyLayoutPage> {
  bool _isMusicHovered = false;
  bool _isPlaylistHovered = false;
  bool _isRecentHovered = false;
  String _selectedTab = 'Music';

  bool _isRelaxHovered = false;
  bool _isGroovyHovered = false;
  bool _isRockHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white24, width: 2.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    onEnter: (_) => setState(() => _isMusicHovered = true),
                    onExit: (_) => setState(() => _isMusicHovered = false),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: _isMusicHovered ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedTab = 'Music';
                          });
                        },
                        child: Text(
                          'Music',
                          style: TextStyle(
                            fontFamily: 'sans-serif',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: _isMusicHovered ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) => setState(() => _isPlaylistHovered = true),
                    onExit: (_) => setState(() => _isPlaylistHovered = false),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: _isPlaylistHovered ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedTab = 'PlayList';
                          });
                        },
                        child: Text(
                          'PlayList',
                          style: TextStyle(
                            fontFamily: 'sans-serif',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: _isPlaylistHovered ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) => setState(() => _isRecentHovered = true),
                    onExit: (_) => setState(() => _isRecentHovered = false),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: _isRecentHovered ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _selectedTab = 'Recent';
                          });
                        },
                        child: Text(
                          'Recent',
                          style: TextStyle(
                            fontFamily: 'sans-serif',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: _isRecentHovered ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(30),
              ),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Search music...',
                  hintStyle: TextStyle(color: Colors.white54),
                  prefixIcon: Icon(Icons.search, color: Colors.white54),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Expanded(
              child: _selectedTab == 'PlayList'
                  ? ListView(
                      children: [
                        MouseRegion(
                          onEnter: (_) => setState(() => _isRelaxHovered = true),
                          onExit: (_) => setState(() => _isRelaxHovered = false),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: _isRelaxHovered ? Colors.white : Colors.deepPurple.shade900,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '💤🍃🥀',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      'Relax',
                                      style: TextStyle(
                                        fontFamily: 'sans-serif',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: _isRelaxHovered ? Colors.black : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '☰',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: _isRelaxHovered ? Colors.black : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() => _isGroovyHovered = true),
                          onExit: (_) => setState(() => _isGroovyHovered = false),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: _isGroovyHovered ? Colors.white : Colors.amber.shade900,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '🤌✨🌟',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      'Groovy',
                                      style: TextStyle(
                                        fontFamily: 'sans-serif',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: _isGroovyHovered ? Colors.black : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '☰',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: _isGroovyHovered ? Colors.black : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        MouseRegion(
                          onEnter: (_) => setState(() => _isRockHovered = true),
                          onExit: (_) => setState(() => _isRockHovered = false),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.only(bottom: 16),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: _isRockHovered ? Colors.white : Colors.red.shade900,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '🤟💀🤘',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    const SizedBox(width: 16),
                                    Text(
                                      'Rock',
                                      style: TextStyle(
                                        fontFamily: 'sans-serif',
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: _isRockHovered ? Colors.black : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '☰',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: _isRockHovered ? Colors.black : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/images (1).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Ivy Garden',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/images.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'I Will Not Be Moved',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/images (2).jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Im Still Standing',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/Dragon.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Dragon Maid S',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/One.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'The One',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/potsu.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Gazebo',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/sky.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Sky Line',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                    image: AssetImage('assets/images/thunder.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Text(
                                'Thunder Track',
                                style: TextStyle(
                                  fontFamily: 'sans-serif',
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}