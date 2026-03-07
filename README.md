# CliUnitConverter

A simple command-line unit converter written in **Pascal**.

This project was built to explore the Free Pascal Compiler (FPC), modular program structure, and structured error handling in a procedural context.

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

## Requirements

- Free Pascal Compiler (FPC)
  https://wiki.freepascal.org/Installing_the_Free_Pascal_Compiler

- Optional (for cross-platform builds):
  https://wiki.freepascal.org/Cross_compiling

## Build

```sh
make
```

## Run

```sh
./build/UnitConverter
```

## Tests

```sh
make test
```

## Implementation Notes

- Conversion logic is separated from the CLI interface.
- Most units are normalized to a base unit before conversion.
- Temperature conversions use formula-based transformations.
- Input validation and range checks are handled in the calculation layer.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE.md) file for details.

## Contributing

Contributions are welcome!
If you find a bug or have a feature request, feel free to open an issue or submit a pull request.
