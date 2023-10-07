import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainTitle extends ConsumerStatefulWidget {
  final TextEditingController cityController;

  const MainTitle({
    required this.cityController,
    super.key,
  });

  @override
  ConsumerState<MainTitle> createState() => _MainTitleState();
}

class _MainTitleState extends ConsumerState<MainTitle> {
  @override
  void initState() {
    super.initState();
  }

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
                    return SizedBox(
                      child: TextField(
                        controller: widget.cityController,
                        onChanged: (String value) {
                          widget.cityController.text = value;
                        },
                        onEditingComplete: () {
                          field.didChange(widget.cityController.text);
                        },
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
