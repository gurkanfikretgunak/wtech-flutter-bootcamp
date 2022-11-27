
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


import '../core/data/api/ticket_client.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}

FutureBuilder<List<Tickets>> _buildBody(BuildContext context){
  final client = TicketClient(Dio(BaseOptions(contentType: "application/json")));

  return FutureBuilder<List<Tickets>>(
    future: client.getTickets(),
    builder: (context, snapshot) {
      
      if(snapshot.connectionState == ConnectionState.done){
        final List<Tickets>? tickets = snapshot.data;
        return _buildTickets(context,tickets!);
      }else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }, 
  );
}

ListView _buildTickets(BuildContext context,List<Tickets> tickets) {
  return ListView.builder(
    itemCount: tickets.length,
    padding: const EdgeInsets.all(8),
    itemBuilder: (context, index) {
      return Card(
        elevation: 4,
        child: ListTile(
          title: Text(tickets[index].kalkisYeri!,style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(tickets[index].trainTime!),
          
        ),
      );
    },
    
    
    );
}