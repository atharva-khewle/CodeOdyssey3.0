import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://imgv3.fotor.com/images/blog-richtext-image/10-profile-picture-ideas-to-make-you-stand-out.jpg'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Anthony Jones',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Available on card',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                '\$13,528.31',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Pay'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Deposit'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black, side: BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Operations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('View All'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              OperationItem(
                logo: 'https://static.vecteezy.com/system/resources/previews/020/336/373/original/netflix-logo-netflix-icon-free-free-vector.jpg',
                name: 'AT&T',
                description: 'Unlimited Family Plan',
                amount: -34.99,
              ),
              OperationItem(
                logo: 'https://static.vecteezy.com/system/resources/previews/020/336/373/original/netflix-logo-netflix-icon-free-free-vector.jpg',
                name: 'CC Subscription',
                description: 'CC All Apps',
                amount: -59.99,
              ),
              OperationItem(
                logo: 'https://static.vecteezy.com/system/resources/previews/020/336/373/original/netflix-logo-netflix-icon-free-free-vector.jpg',
                name: 'Blizzard Entertainment',
                description: '6-Month Subscription',
                amount: -79.89,
              ),
              OperationItem(
                logo: 'https://static.vecteezy.com/system/resources/previews/020/336/373/original/netflix-logo-netflix-icon-free-free-vector.jpg',
                name: 'Netflix',
                description: 'Basic Plan',
                amount: -7.99,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.insights), label: 'Insights'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}

class OperationItem extends StatelessWidget {
  final String logo;
  final String name;
  final String description;
  final double amount;

  const OperationItem({
    Key? key,
    required this.logo,
    required this.name,
    required this.description,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.network(logo, width: 40, height: 40),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(description, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            '\$${amount.abs().toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: amount < 0 ? Colors.red : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

