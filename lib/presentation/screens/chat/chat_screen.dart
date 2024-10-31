import 'package:flutter/material.dart';
import 'package:yes_no_wtf/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_wtf/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_wtf/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://images.tagesschau.de/image/d0295fb9-e9c8-4aaf-a603-16b0b9c180e8/AAABkkX3FSs/AAABkZLngyM/1x1-256/sheinbaum-122.jpg'),
          ),
        ),
        title: const Text('Mi pinshesha🥰'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 ),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0 )
                ? const HerMessageBubble()
                : const MyMessageBubble();

              
            })
            ),
            
        /// Caja de Texto de mensajes
        
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
