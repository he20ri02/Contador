import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child:Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    ),
    );
  }
}

////////////////Contenido////////////////////////////////////////
class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Welcome to your account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Datos(),
          ],
        ),
      ),
    );
  }
}

//////////Datos usado en contenido///

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Flexible(child:
    Container(
      padding: const EdgeInsets.all(20),
      //decoracion
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      //Se agrega el child
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'email@example.com',
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            obscureText: obs,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Password here',
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = false : obs = true;
                  });
                },
              ),
            ),
          ),
          const Remember(),
          const SizedBox(),
          const Botones(),
        ],
      ),
    ),
    );
  }
}

///////////Remember////////////////

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child:Row(
      children: [
        Checkbox(
            value: valor,
            onChanged: (value) {
              setState(() {
                valor == false ? valor = true : valor = false;
              });
            }),
        const Text('Remember me'),
        const Spacer(),
        TextButton(onPressed: () {}, child: const Text('Forgot Password'))
      ],
    ),
    );
  }
}

///////////Botones////

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
      children: [
        //Boton login
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),

        const SizedBox(
          width: double.infinity,
          height: 25,
        ),

        const Text(
          'Or sign with',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),

        const SizedBox(
          width: double.infinity,
          height: 25,
        ),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: () {},
              child: (const Text(
                'Sign with google',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontSize: 18,
                ),
              ))),
        ), //google
        //Facebook
        const SizedBox(
          width: double.infinity,
          height: 25,
        ),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: () {},
              child: (const Text(
                'Sign with facebook',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontSize: 18,
                ),
              ))),
        ) //facebook
      ],
    ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child:Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue.shade200, Colors.blue],
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft)),
    ),
    );
  }
}
