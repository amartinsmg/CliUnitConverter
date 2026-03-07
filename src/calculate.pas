
unit Calculate;

interface

function Length(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Area(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Volume(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Mass(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Pressure(inputUnit, outputUnit: LongInt; input: Real) : Real;
function TimeC(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Speed(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Acceleration(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Force(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Temperature(inputUnit, outputUnit: LongInt; input: Real) : Real;
function Energy(inputUnit, outputUnit: LongInt; input: Real) : Real;
function PowerC(inputUnit, outputUnit: LongInt; input: Real) : Real;

implementation

{$R+}

const 
  LengthFactors: Array[1..8] of Real = (
                                        1,                    // m
                                        0.001,                // mm
                                        0.01,                 // cm
                                        0.0254,               // in
                                        0.3048,               // ft
                                        1000,                 // km
                                        1609.35,              // mi
                                        1852                  // nmi
                                       );
  AreaFactors: Array[1..7] of Real = (
                                      1,                      // m^2
                                      1E-4,                   // cm^2
                                      6.45161E-4,             // in^2
                                      0.0929,                 // ft^2
                                      1E+4,                   // ha
                                      1E+6,                   // km^2
                                      2589990                 // mi^2
                                     );
  VolumeFactors: Array[1..7] of Real = (
                                        1,                    // m^3
                                        1E+6,                 // mL
                                        61023.744095,         // in^3
                                        33814.022702,         // fl oz
                                        1000,                 // L
                                        264.172052 ,          // gal
                                        35.314667             // ft^3
                                       );
  MassFactors: Array[1..6] of Real = (
                                      1,                      // kg
                                      1E+6,                   // mg
                                      1000,                   // g
                                      35.273963,              // oz
                                      2.204623,               // lb
                                      1E-3                    // t
                                     );
  PressureFactors: Array[1..5] of Real = (
                                          1,                  // Pa
                                          133.322,            // mmHg
                                          6894.757293,        // psi
                                          1E+5,               // bar
                                          101325              // atm
                                         );
  TimeFactors: Array[1..5] of Real = (
                                      1,                      // s
                                      60,                     // min
                                      3600,                   // h
                                      86400,                  // d
                                      31557600                // y
                                     );
  SpeedFactors: Array[1..5] of Real = (
                                       1,                     // m/s
                                       196.850394,            // ft/min
                                       3.6,                   // km/h
                                       2.23694,               // mi/h
                                       1.94384                // kn
                                      );
  AccelerationFactors: Array[1..6] of Real = (
                                              1,              // m/s^2
                                              196.850394,     // ft/(min*s)
                                              3.6,            // km/(h*s)
                                              2.236936,       // mi/(h*s)
                                              1.943845,       // kn/s
                                              0.101971        // G
                                             );
  ForceFactors: Array[1..4] of Real = (
                                       1,                     // N
                                       1E-5,                  // dyn
                                       4.448221,              // lbf
                                       9.80665                // kgf
                                      );
  EnergyFactors: Array[1..4] of Real = (
                                        1,                    // J
                                        1000,                 // kJ
                                        4184,                 // kcal
                                        3.6E+6                // kW/h
                                       );
  PowerFactors: Array[1..5] of Real = (
                                       1,                     // W
                                       0.27777778,            // kJ/h
                                       1.163,                 // kcal/h
                                       745.699872,            // hp
                                       1000                   // kW
                                      );



function Length(inputUnit, outputUnit: LongInt; input: Real): Real;

var baseValue: Real;
begin
  baseValue := input * LengthFactors[inputUnit];
  Length := baseValue / LengthFactors[outputUnit];
end;

function Area(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  baseValue := input * AreaFactors[inputUnit] ;
  Area := baseValue / AreaFactors[outputUnit] ;
end;

function Volume(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  baseValue := input / VolumeFactors[inputUnit] ;
  Volume := baseValue * VolumeFactors[outputUnit] ;
end;

function Mass(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  baseValue := input / MassFactors[inputUnit] ;
  Mass := baseValue * MassFactors[outputUnit] ;
end;

function Pressure(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue : Real;
begin
  baseValue := input * PressureFactors[inputUnit] ;
  Pressure := baseValue / PressureFactors[outputUnit] ;
end;

function TimeC(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  baseValue := input * TimeFactors[inputUnit];
  TimeC := baseValue / TimeFactors[outputUnit];
end;

function Speed(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  baseValue := input / SpeedFactors[inputUnit] ;
  Speed := baseValue * SpeedFactors[outputUnit] ;
end;

function Acceleration(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue : Real;
begin
  baseValue := input / AccelerationFactors[inputUnit] ;
  Acceleration := baseValue * AccelerationFactors[outputUnit] ;
end;

function Force(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue : Real;
begin
  baseValue := input * ForceFactors[inputUnit];
  Force := baseValue / ForceFactors[outputUnit];
end;

function Temperature(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue: Real;
begin
  Case inputUnit of 
    1: baseValue := input;
    // Kelvin
    2: baseValue := input + 273.15;
    // Celsius
    3: baseValue := (input - 32) * 5 / 9 + 273.15 ;
    // Fahrenheit
  end;
  Case outputUnit of 
    1: Temperature := baseValue;
    // Kelvin
    2: Temperature := baseValue - 273.15;
    // Celsius
    3: Temperature := (baseValue - 273.15) * 9 / 5 + 32;
    // Fahrenheit
  end;
end;

function Energy(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue : Real;
begin
  baseValue := input * EnergyFactors[inputUnit];
  Energy := baseValue / EnergyFactors[outputUnit];
end;

function PowerC(inputUnit, outputUnit: LongInt; input: Real) : Real;

var baseValue : Real;
begin
  baseValue := input * PowerFactors[inputUnit];
  PowerC := baseValue / PowerFactors[outputUnit];
end;

{$R-}

end.
