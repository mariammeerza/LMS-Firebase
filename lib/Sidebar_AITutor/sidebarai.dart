import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 180, 216, 174),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: const Icon(
              Icons.arrow_back,
            ),
            onTap: () {
              // Handle the tap if necessary.
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.chat_outlined),
            title: const Text('New Chat  +'),
            onTap: () {
              // Handle the tap if necessary.
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.star_border,
            ),
            title: const Text('Starred Messages'),
            onTap: () {
              // Handle the tap if necessary.
            },
          ),
          const Divider(),
          ...List.generate(
            3,
            (index) => ListTile(
              title: const Text('Previous chat name'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit_outlined),
                    onPressed: () {
                      // Handle the edit action.
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outlined,
                    ),
                    onPressed: () {
                      // Handle the delete action.
                    },
                  ),
                ],
              ),
              onTap: () {
                // Handle the tap if necessary.
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.clear_all),
            title: const Text('Clear All chats'),
            onTap: () {
              // Handle the tap if necessary.
            },
          ),
        ],
      ),
    );
  }
}
