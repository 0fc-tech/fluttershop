import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_cubit.dart';

void main() => runApp(BlocProvider(
      create: (context) => AuthCubit(),
      child: ConnexionApp(),
    ));

class ConnexionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tecEmail = TextEditingController(text: "");
    final tecPwd = TextEditingController(text: "");

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
                success: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Connecté")));
                },
                failed: (error) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(error)));
                },
                orElse: () {});
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Spacer(),
                  TextFormField(
                    controller: tecEmail,
                    decoration: InputDecoration(label: Text("Email")),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: InputDecoration(label: Text("Password")),
                    controller: tecPwd,
                    obscureText: true,
                  ),
                  Spacer(),
                  state.maybeMap(
                    loading: (_) => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FilledButton(
                            onPressed: null, child: Text("Se connecter"))),
                    orElse: () => SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: FilledButton(
                            onPressed: () {
                              context
                                  .read<AuthCubit>()
                                  .login(tecEmail.text, tecPwd.text);
                            },
                            child: Text("Se connecter"))),
                  ),
                  TextButton(
                      onPressed: () {
                        context.read<AuthCubit>().forgottenPwd();
                      },
                      child: Text("Mot de passe oublié")),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
