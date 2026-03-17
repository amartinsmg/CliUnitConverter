# CLI Unit Converter

A simple ***command-line unit converter*** written in **Pascal**.

This project was built to explore the Free Pascal Compiler (FPC), modular program structure, and structured error handling in a procedural context.

---

## Implementation Notes

- Conversion logic is separated from the CLI interface.
- Convert values between multiple measurement categories
- Supports a wide range of units within each category
- The units are normalized to a base unit before conversion.

---

## Suppported Conversions

- Length
- Area
- Volume
- Mass
- Pressure
- Time
- Speed
- Acceleration
- Force
- Temperature
- Energy
- Power

---

## Requirements

- Free Pascal Compiler (FPC)
  https://wiki.freepascal.org/Installing_the_Free_Pascal_Compiler

- Optional (for cross-platform builds):
  https://wiki.freepascal.org/Cross_compiling

---

## Build

```sh
make
```

---

## Run

```sh
./build/UnitConverter
```

---

## Tests

```sh
make test
```

---

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE.md) file for details.

---

## Contributing

Contributions are welcome!
If you find a bug or have a feature request, feel free to open an issue or submit a pull request.
