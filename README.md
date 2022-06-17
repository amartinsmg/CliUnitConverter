# UnitConverter

An unit converter in Pascal with a version in WebAssembly.

The WebAssembly version was compiled using FreePascal and converted to text format using wasm2wat. The file was manually changed to export each function separately.

The calculate.wat file can be converted to binary format using wat2wasm with this commands:

````
npm install
npm run build
````
