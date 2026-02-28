
Program UnitConverter;

{$mode objfpc}

Uses Calculate, SysUtils;

Procedure MainMenu();
Begin
  Writeln(' UNIT CONVERTER' + sLineBreak);
  Writeln('  1  -  Length');
  Writeln('  2  -  Area');
  Writeln('  3  -  Volume');
  Writeln('  4  -  Mass');
  Writeln('  5  -  Pressure');
  Writeln('  6  -  TimeC');
  Writeln('  7  -  Speed');
  Writeln('  8  -  Acceleration');
  Writeln('  9  -  Force');
  Writeln('  10 -  Temperature');
  Writeln('  11 -  Energy');
  Writeln('  12 -  Power');
  Writeln('  13 -  Quit' + sLineBreak);
End;


Procedure Menus(Opcode: LongInt);
Begin
  Case Opcode Of 
    1:
       Begin
         Writeln(' LENGTH' + sLineBreak);
         Writeln('  1 -  meter (m)');
         Writeln('  2 -  millimeter (mm)');
         Writeln('  3 -  centimeter (cm)');
         Writeln('  4 -  inch (in)');
         Writeln('  5 -  foot (ft)');
         Writeln('  6 -  kilometer (km)');
         Writeln('  7 -  mile (mi)');
         Writeln('  8 -  nautical mile (nmi)');
       End;
    2:
       Begin
         Writeln(' AREA' + sLineBreak);
         Writeln('  1 -  square meter (m^2)');
         Writeln('  2 -  square centimeter (cm^2)');
         Writeln('  3 -  square inch (in^2)');
         Writeln('  4 -  square foot (ft^2)');
         Writeln('  5 -  hectare (ha)');
         Writeln('  6 -  square kilometer (km^2)');
         Writeln('  7 -  square mile (mi^2)');
       End;
    3:
       Begin
         Writeln(' VOLUME' + sLineBreak);
         Writeln('  1 -  cubic meter (m^3)');
         Writeln('  2 -  milliliter or cubic centimeter (mL or cm^3)');
         Writeln('  3 -  cubic inch (in^3)');
         Writeln('  4 -  fluid ounce(US) (fl oz)');
         Writeln('  5 -  liter (L)');
         Writeln('  6 -  gallon(US) (gal)');
         Writeln('  7 -  cubic foot (ft^3)');
       End;
    4:
       Begin
         Writeln(' MASS' + sLineBreak);
         Writeln('  1 -  kilogram (kg)');
         Writeln('  2 -  milligram (mg)');
         Writeln('  3 -  gram (g)');
         Writeln('  4 -  ounce (oz)');
         Writeln('  5 -  pound (lb)');
         Writeln('  6 -  tonne (t)');
       End;
    5:
       Begin
         Writeln(' PRESSURE' + sLineBreak);
         Writeln('  1 -  Pascal or Newton per square meter (Pa or N/m^2)');
         Writeln('  2 -  millimeter of mercury (mmHg)');
         Writeln('  3 -  psi');
         Writeln('  4 -  bar');
         Writeln('  5 -  standard atmosphere (atm)');
       End;
    6:
       Begin
         Writeln(' TIME' + sLineBreak);
         Writeln('  1 -  second (s)');
         Writeln('  2 -  minute (min)');
         Writeln('  3 -  hour (h)');
         Writeln('  4 -  day (d)');
         Writeln('  5 -  year (y)');
       End;
    7:
       Begin
         Writeln(' SPEED' + sLineBreak);
         Writeln('  1 -  meter per second (m/s)');
         Writeln('  2 -  foot per minute (ft/min)');
         Writeln('  3 -  kilometer per hour (km/h)');
         Writeln('  4 -  mile per hour (m/hi)');
         Writeln('  5 -  knot or nautical mile per hour (kn or kt or nmi/h)');
       End;
    8:
       Begin
         Writeln(' ACCELERATION' + sLineBreak);
         Writeln('  1 -  meter per square second (m/s^2)');
         Writeln('  2 -  foot per min per second (ft/min/s)');
         Writeln('  3 -  kilometer per hour per second (km/h/s)');
         Writeln('  4 -  mile per hour per second (mi/h/s)');
         Writeln('  5 -  knot per second (kn/s or kt/s)');
         Writeln('  6 -  acceleration of gravity (G)');
       End;
    9:
       Begin
         Writeln(' FORCE' + sLineBreak);
         Writeln('  1 -  Newton (N)');
         Writeln('  2 -  dyne (dyn)');
         Writeln('  3 -  pound-force (lbf)');
         Writeln('  4 -  kilometer-force (kgf)');
       End;
    10:
        Begin
          Writeln(' TEMPERATURE' + sLineBreak);
          Writeln('  1 -  kelvin (k)');
          Writeln('  2 -  Celsius (C)');
          Writeln('  3 -  Fahrenheit (F)');
        End;
    11:
        Begin
          Writeln(' ENERGY' + sLineBreak);
          Writeln('  1 -   joule (J)');
          Writeln('  2 -   kilojoule (kJ)');
          Writeln('  3 -   kilocalorie (kcal)');
          Writeln('  4 -   kilowatt per hour (kW/h)');
        End;
    12:
        Begin
          Writeln(' POWER' + sLineBreak);
          Writeln('  1 - watt (W)');
          Writeln('  2 - kilojoule per hour (kJ/h)');
          Writeln('  3 - kilocalorie per hour (kcal/h)');
          Writeln('  4 - hoursepower (hp)');
          Writeln('  5 - kilowatt (kW)');
        End;
  End;
End;

Procedure Options();
Begin
  Writeln(' OPTIONS' + sLineBreak);
  Writeln('  1 -  Do another conversion');
  Writeln('  2 -  Return to the menu');
  Writeln('  3 -  Return to the main menu');
  Writeln('  4 -  Quit');
End;

Function Converter(Opcode, InputUnit, OutputUnit: LongInt; Input: Real): Real;
Begin
  Case Opcode Of 
    1: Converter := Length(InputUnit, OutputUnit, Input);
    2: Converter := Area(InputUnit, OutputUnit, Input);
    3: Converter := Volume(InputUnit, OutputUnit, Input);
    4: Converter := Mass(InputUnit, OutputUnit, Input);
    5: Converter := Pressure(InputUnit, OutputUnit, Input);
    6: Converter := TimeC(InputUnit, OutputUnit, Input);
    7: Converter := Speed(InputUnit, OutputUnit, Input);
    8: Converter := Acceleration(InputUnit, OutputUnit, Input);
    9: Converter := Force(InputUnit, OutputUnit, Input);
    10: Converter := Temperature(InputUnit, OutputUnit, Input);
    11: Converter := Energy(InputUnit, OutputUnit, Input);
    12: Converter := PowerC(InputUnit, OutputUnit, Input);
  End;
End;


Var 
  Opcode, Option, InputUnit, OutputUnit: LongInt;
  Input, Output: Real;

Begin
  Write(sLineBreak);
  Repeat
    MainMenu();
    Write(' Enter a code: ');
    Read(Opcode);
    Write(sLineBreak, sLineBreak);
    If (Opcode = 13) Then Exit;
    If ((Opcode < 1) Or (Opcode > 13)) Then
    Begin
      Writeln('Invalid option!', sLineBreak);
      Option := 3;
      Continue;
    End;
    Repeat
      Menus(Opcode);
      Write(sLineBreak + ' Convert from: ');
      Read(InputUnit);
      Write(' to: ');
      Read(OutputUnit);
      Repeat
        Write(' Enter the value you want to convert: ');
        Read(Input);
        Write(sLineBreak);
        Try
          Output := Converter(Opcode, InputUnit, OutputUnit, Input);
          Write(' Result = ');
          If (Output > 1E-3) And (Output < 1E6) Then Write(Output:10:3)
          Else Write(Output);
          Write(sLineBreak, sLineBreak);
        Except
          On E: Exception Do
            Begin
              Writeln('An error was encountered, or an invalid option was selected.');
              Writeln('Error: ', E.Message, sLineBreak);
            End;
        End;
        Options();
        Write(sLineBreak, ' Enter an option: ');
        Read(Option);
        Write(sLineBreak, sLineBreak);
        If ((Option <= 0) Or (Option > 4)) Then
        Begin
          Writeln('Invalid Option, exiting the program!', sLineBreak);
          Exit;
        End;
      Until (Option <> 1);
    Until (Option <> 2);
  Until (Option <> 3);
End.
