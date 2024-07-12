import 'package:flutter/material.dart';

import '../models/country.dart';
import '../screens/country_picker_screen.dart';

class CountryPicker extends StatelessWidget {
  const CountryPicker({
    super.key,
    this.country,
    required this.onSubmitted,
    this.enabled = true,
  });

  final Country? country;
  final ValueSetter<Country> onSubmitted;
  final bool enabled;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const ShapeDecoration(
          color: Color(0xFF9D8A59),
          shape: StadiumBorder(),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          onTap: enabled
              ? () async {
                  final Country? updated = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CountryPickerScreen(initial: country),
                    ),
                  );

                  if (context.mounted && updated != null) {
                    onSubmitted(updated);
                  }
                }
              : null,
          title: Text(
            country?.name ?? 'Country of residence',
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
      );
}
