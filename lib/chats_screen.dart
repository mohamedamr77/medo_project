import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _chats = [
    {
      'name': 'Ask Gesture',
      'message': 'The System Translates Signs In Real-time',
      'time': '10:05PM',
      'unreadCount': '1',
      'read': false,
    },
    {
      'name': 'William',
      'message': 'Okay',
      'time': '6:00PM',
      'read': true,
    },
    {
      'name': 'John',
      'message': 'I am waiting for you',
      'time': '6:00PM',
      'unreadCount': '1',
      'read': false,
    },
    {
      'name': 'Jacob',
      'message': 'Okay, Thank you',
      'time': '5:00PM',
      'read': true,
    },
    {
      'name': 'Yara',
      'message': 'Hello, Please Can You Help Me?',
      'time': '5:00PM',
      'read': true,
    },
    {
      'name': 'Sarah',
      'message': 'Hi',
      'time': 'Yesterday',
      'read': true,
    },
  ];

  List<Map<String, dynamic>> _filteredChats = [];

  @override
  void initState() {
    super.initState();
    _filteredChats = _chats;
    _searchController.addListener(_filterChats);
  }

  void _filterChats() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredChats = _chats.where((chat) {
        final name = chat['name'].toLowerCase();
        final message = chat['message'].toLowerCase();
        return name.contains(query) || message.contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAAFAAA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(fontSize: 20, color: Colors.black),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredChats.length,
              itemBuilder: (context, index) {
                final chat = _filteredChats[index];
                return chatTile(
                  name: chat['name'],
                  message: chat['message'],
                  time: chat['time'],
                  read: chat['read'] ?? false,
                  unreadCount: chat['unreadCount'],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        onPressed: () {},
        child: const Icon(Icons.add, size: 32, color: Colors.white),
      ),
    );
  }

  Widget chatTile({
    required String name,
    required String message,
    required String time,
    bool read = false,
    String? unreadCount,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 30, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  FittedBox(
                    child: Row(
                      children: [
                        Text(
                          message,
                          style: const TextStyle(color: Colors.black54),
                        ),
                        if (read) const SizedBox(width: 4),
                        if (read)
                          const Icon(Icons.done_all, color: Colors.blue, size: 18),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  time,
                  style: const TextStyle(color: Colors.black54, fontSize: 12),
                ),
                const SizedBox(height: 8),
                if (unreadCount != null)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFFAAFAAA),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      unreadCount,
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
