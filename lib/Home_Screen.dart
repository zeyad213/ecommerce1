import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Route',
          style: TextStyle(
            fontFamily: 'Sansita',
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.blue),
            onPressed: () {
              // handle cart action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'What do you search for?',
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              child: PageView(
                children: [
                  _buildPromoBanner('Up to 25% OFF', 'Headphones & AirPods'),
                  _buildPromoBanner('Summer Sale', 'Up to 50% OFF on fashion'),
                  _buildPromoBanner('Best Deals', 'Electronics up to 30% OFF'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 10),
            _buildCategoriesSection(),
            SizedBox(height: 20),
            Text(
              'Home Appliance',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 10),
            _buildProductsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildPromoBanner(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    final categories = [
      {'name': 'Women\'s Fashion', 'image': 'assets/images/m.jfif'},
      {'name': 'Men\'s Fashion', 'image': 'assets/images/aaa.jfif'},
      {'name': 'Electronics', 'image': 'assets/images/dd.jfif'},
      {'name': 'Beauty', 'image': 'assets/images/xx.jfif'},
      {'name': 'Headphones', 'image': 'assets/images/a.webp'},
    ];

    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories.map((category) {
          return _buildCategoryItem(category['name'] as String, category['image'] as String);
        }).toList(),
      ),
    );
  }

  Widget _buildCategoryItem(String category, String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageUrl), // استخدام الصورة الخاصة بالفئة
          ),
          SizedBox(height: 5),
          Text(
            category,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsSection() {
    final products = [
      {'name': 'Laptop', 'image': 'assets/images/z.jpg'},
      {'name': 'Electronic', 'image': 'assets/images/d.jpg'},
      {'name': 'Sports', 'image': 'assets/images/sport.jpg'},
      {'name': 'Clothes', 'image': 'assets/images/xx.jfif'},
      {'name': 'Headphones', 'image': 'assets/images/h.jfif'},
    ];

    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: products.map((product) {
          return _buildProductItem(product['name'] as String, product['image'] as String);
        }).toList(),
      ),
    );
  }

  Widget _buildProductItem(String name, String imageUrl) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              imageUrl, // استخدام صورة من الأصول
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name, // استخدام اسم المنتج
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
