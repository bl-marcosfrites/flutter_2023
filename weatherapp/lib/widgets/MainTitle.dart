import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: SizedBox(
          height: 150,
          child: Column(
            children: [
              Text(
                'Search for a city',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FormField(
                    builder: (field) {
                      return const SizedBox(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter a city',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      );
                    }
                ),
              ),
            ],
          )
      ),
    );
  }
}
