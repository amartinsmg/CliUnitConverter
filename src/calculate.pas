
Unit Calculate;

Interface

Function Length(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Area(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Volume(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Mass(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Pressure(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function TimeC(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Speed(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Acceleration(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Force(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Temperature(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function Energy(InputUnit, OutputUnit: LongInt; Input: Real) : Real;
Function PowerC(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Implementation

{$R+}

Const 
  LengthFactors: array[1..8] Of Real = (
                                        1,                    // m
                                        0.001,                // mm
                                        0.01,                 // cm
                                        0.0254,               // in
                                        0.3048,               // ft
                                        1000,                 // km
                                        1609.35,              // mi
                                        1852                  // nmi
                                       );
  AreaFactors: array[1..7] Of Real = (
                                      1,                      // m^2
                                      1E-4,                   // cm^2
                                      6.45161E-4,             // in^2
                                      0.0929,                 // ft^2
                                      1E+4,                   // ha
                                      1E+6,                   // km^2
                                      2589990                 // mi^2
                                     );
  VolumeFactors: array[1..7] Of Real = (
                                        1,                    // m^3
                                        1E+6,                 // mL
                                        61023.744095,         // in^3
                                        33814.022702,         // fl oz
                                        1000,                 // L
                                        264.172052 ,          // gal
                                        35.314667             // ft^3
                                       );
  MassFactors: array[1..6] Of Real = (
                                      1,                      // kg
                                      1E+6,                   // mg
                                      1000,                   // g
                                      35.273963,              // oz
                                      2.204623,               // lb
                                      1E-3                    // t
                                     );
  PressureFactors: array[1..5] Of Real = (
                                          1,                  // Pa
                                          133.322,            // mmHg
                                          6894.757293,        // psi
                                          1E+5,               // bar
                                          101325              // atm
                                         );
  TimeFactors: array[1..5] Of Real = (
                                      1,                      // s
                                      60,                     // min
                                      3600,                   // h
                                      86400,                  // d
                                      31557600                // y
                                     );
  SpeedFactors: array[1..5] Of Real = (
                                       1,                     // m/s
                                       196.850394,            // ft/min
                                       3.6,                   // km/h
                                       2.23694,               // mi/h
                                       1.94384                // kn
                                      );
  AccelerationFactors: array[1..6] Of Real = (
                                              1,              // m/s^2
                                              196.850394,     // ft/(min*s)
                                              3.6,            // km/(h*s)
                                              2.236936,       // mi/(h*s)
                                              1.943845,       // kn/s
                                              0.101971        // G
                                             );
  ForceFactors: array[1..4] Of Real = (
                                       1,                     // N
                                       1E-5,                  // dyn
                                       4.448221,              // lbf
                                       9.80665                // kgf
                                      );
  EnergyFactors: array[1..4] Of Real = (
                                        1,                    // J
                                        1000,                 // kJ
                                        4184,                 // kcal
                                        3.6E+6                // kW/h
                                       );
  PowerFactors: array[1..5] Of Real = (
                                       1,                     // W
                                       0.27777778,            // kJ/h
                                       1.163,                 // kcal/h
                                       745.699872,            // hp
                                       1000                   // kW
                                      );



Function Length(InputUnit, OutputUnit: LongInt; Input: Real): Real;

Var BaseValue: Real;
Begin
  BaseValue := Input * LengthFactors[InputUnit];
  Length := BaseValue / LengthFactors[OutputUnit];
End;

Function Area(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  BaseValue := Input * AreaFactors[InputUnit] ;
  Area := BaseValue / AreaFactors[OutputUnit] ;
End;

Function Volume(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  BaseValue := Input / VolumeFactors[InputUnit] ;
  Volume := BaseValue * VolumeFactors[OutputUnit] ;
End;

Function Mass(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  BaseValue := Input / MassFactors[InputUnit] ;
  Mass := BaseValue * MassFactors[OutputUnit] ;
End;

Function Pressure(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue : Real;
Begin
  BaseValue := Input * PressureFactors[InputUnit] ;
  Pressure := BaseValue / PressureFactors[OutputUnit] ;
End;

Function TimeC(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  BaseValue := Input * TimeFactors[InputUnit];
  TimeC := BaseValue / TimeFactors[OutputUnit];
End;

Function Speed(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  BaseValue := Input / SpeedFactors[InputUnit] ;
  Speed := BaseValue * SpeedFactors[OutputUnit] ;
End;

Function Acceleration(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue : Real;
Begin
  BaseValue := Input / AccelerationFactors[InputUnit] ;
  Acceleration := BaseValue * AccelerationFactors[OutputUnit] ;
End;

Function Force(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue : Real;
Begin
  BaseValue := Input * ForceFactors[InputUnit];
  Force := BaseValue / ForceFactors[OutputUnit];
End;

Function Temperature(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue: Real;
Begin
  Case InputUnit Of 
    1: BaseValue := Input;
    // Kelvin
    2: BaseValue := Input + 273.15;
    // Celsius
    3: BaseValue := (Input - 32) * 5 / 9 + 273.15 ;
    // Fahrenheit
  End;
  Case OutputUnit Of 
    1: Temperature := BaseValue;
    // Kelvin
    2: Temperature := BaseValue - 273.15;
    // Celsius
    3: Temperature := (BaseValue - 273.15) * 9 / 5 + 32;
    // Fahrenheit
  End;
End;

Function Energy(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue : Real;
Begin
  BaseValue := Input * EnergyFactors[InputUnit];
  Energy := BaseValue / EnergyFactors[OutputUnit];
End;

Function PowerC(InputUnit, OutputUnit: LongInt; Input: Real) : Real;

Var BaseValue : Real;
Begin
  BaseValue := Input * PowerFactors[InputUnit];
  PowerC := BaseValue / PowerFactors[OutputUnit];
End;

{$R-}

End.
