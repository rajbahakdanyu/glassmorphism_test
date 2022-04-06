import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glassmorphism Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              "https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GlassmorphicContainer(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .55,
                  borderRadius: 20,
                  blur: 5,
                  alignment: Alignment.bottomCenter,
                  border: 0,
                  linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.1),
                      const Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ],
                  ),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.5),
                      const Color(0xFFFFFFFF).withOpacity(0.5),
                    ],
                  ),
                  child: const MainBody(),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .37,
              left: 20,
              child: Stack(
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.black,
                        ),
                  ),
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).viewPadding.top * 2,
              left: 20,
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        children: [
          CupertinoTextField.borderless(
            placeholder: 'Email',
            placeholderStyle: const TextStyle(
              color: CupertinoColors.black,
            ),
            decoration: BoxDecoration(
              color: CupertinoColors.extraLightBackgroundGray,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Continue',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * .8, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Colors.green.shade400,
            ),
          ),
          const SizedBox(height: 20),
          const Text('or'),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.facebook,
              color: CupertinoColors.activeBlue,
              size: 30,
            ),
            label: const Text(
              'Continue with Facebook',
              style: TextStyle(
                fontSize: 16,
                color: CupertinoColors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * .8, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Image.network(
              'http://pngimg.com/uploads/google/google_PNG19635.png',
              fit: BoxFit.cover,
              width: 30,
              height: 30,
            ),
            label: const Text(
              'Continue with Google',
              style: TextStyle(
                fontSize: 16,
                color: CupertinoColors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * .8, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.apple,
              color: CupertinoColors.black,
              size: 30,
            ),
            label: const Text(
              'Continue with Apple',
              style: TextStyle(
                fontSize: 16,
                color: CupertinoColors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width * .8, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(color: CupertinoColors.activeGreen),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CupertinoColors.activeGreen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
