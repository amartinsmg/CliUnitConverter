
program UnitConverter;

{$mode objfpc}

uses Calculate, SysUtils;

procedure MainMenu();
begin
  WriteLn(' UNIT CONVERTER' + sLineBreak);
  WriteLn('  1  -  Length');
  WriteLn('  2  -  Area');
  WriteLn('  3  -  Volume');
  WriteLn('  4  -  Mass');
  WriteLn('  5  -  Pressure');
  WriteLn('  6  -  TimeC');
  WriteLn('  7  -  Speed');
  WriteLn('  8  -  Acceleration');
  WriteLn('  9  -  Force');
  WriteLn('  10 -  Temperature');
  WriteLn('  11 -  Energy');
  WriteLn('  12 -  Power');
  WriteLn('  13 -  Quit' + sLineBreak);
end;


procedure Menus(Opcode: LongInt);
begin
  case Opcode of 
    1:
       begin
         WriteLn(' LENGTH' + sLineBreak);
         WriteLn('  1 -  meter (m)');
         WriteLn('  2 -  millimeter (mm)');
         WriteLn('  3 -  centimeter (cm)');
         WriteLn('  4 -  inch (in)');
         WriteLn('  5 -  foot (ft)');
         WriteLn('  6 -  kilometer (km)');
         WriteLn('  7 -  mile (mi)');
         WriteLn('  8 -  nautical mile (nmi)');
       end;
    2:
       begin
         WriteLn(' AREA' + sLineBreak);
         WriteLn('  1 -  square meter (m^2)');
         WriteLn('  2 -  square centimeter (cm^2)');
         WriteLn('  3 -  square inch (in^2)');
         WriteLn('  4 -  square foot (ft^2)');
         WriteLn('  5 -  hectare (ha)');
         WriteLn('  6 -  square kilometer (km^2)');
         WriteLn('  7 -  square mile (mi^2)');
       end;
    3:
       begin
         WriteLn(' VOLUME' + sLineBreak);
         WriteLn('  1 -  cubic meter (m^3)');
         WriteLn('  2 -  milliliter or cubic centimeter (mL or cm^3)');
         WriteLn('  3 -  cubic inch (in^3)');
         WriteLn('  4 -  fluid ounce(US) (fl oz)');
         WriteLn('  5 -  liter (L)');
         WriteLn('  6 -  gallon(US) (gal)');
         WriteLn('  7 -  cubic foot (ft^3)');
       end;
    4:
       begin
         WriteLn(' MASS' + sLineBreak);
         WriteLn('  1 -  kilogram (kg)');
         WriteLn('  2 -  milligram (mg)');
         WriteLn('  3 -  gram (g)');
         WriteLn('  4 -  ounce (oz)');
         WriteLn('  5 -  pound (lb)');
         WriteLn('  6 -  tonne (t)');
       end;
    5:
       begin
         WriteLn(' PRESSURE' + sLineBreak);
         WriteLn('  1 -  Pascal or Newton per square meter (Pa or N/m^2)');
         WriteLn('  2 -  millimeter of mercury (mmHg)');
         WriteLn('  3 -  psi');
         WriteLn('  4 -  bar');
         WriteLn('  5 -  standard atmosphere (atm)');
       end;
    6:
       begin
         WriteLn(' TIME' + sLineBreak);
         WriteLn('  1 -  second (s)');
         WriteLn('  2 -  minute (min)');
         WriteLn('  3 -  hour (h)');
         WriteLn('  4 -  day (d)');
         WriteLn('  5 -  year (y)');
       end;
    7:
       begin
         WriteLn(' SPEED' + sLineBreak);
         WriteLn('  1 -  meter per second (m/s)');
         WriteLn('  2 -  foot per minute (ft/min)');
         WriteLn('  3 -  kilometer per hour (km/h)');
         WriteLn('  4 -  mile per hour (m/hi)');
         WriteLn('  5 -  knot or nautical mile per hour (kn or kt or nmi/h)');
       end;
    8:
       begin
         WriteLn(' ACCELERATION' + sLineBreak);
         WriteLn('  1 -  meter per square second (m/s^2)');
         WriteLn('  2 -  foot per min per second (ft/min/s)');
         WriteLn('  3 -  kilometer per hour per second (km/h/s)');
         WriteLn('  4 -  mile per hour per second (mi/h/s)');
         WriteLn('  5 -  knot per second (kn/s or kt/s)');
         WriteLn('  6 -  acceleration of gravity (G)');
       end;
    9:
       begin
         WriteLn(' FORCE' + sLineBreak);
         WriteLn('  1 -  Newton (N)');
         WriteLn('  2 -  dyne (dyn)');
         WriteLn('  3 -  pound-force (lbf)');
         WriteLn('  4 -  kilometer-force (kgf)');
       end;
    10:
        begin
          WriteLn(' TEMPERATURE' + sLineBreak);
          WriteLn('  1 -  kelvin (k)');
          WriteLn('  2 -  Celsius (C)');
          WriteLn('  3 -  Fahrenheit (F)');
        end;
    11:
        begin
          WriteLn(' ENERGY' + sLineBreak);
          WriteLn('  1 -   joule (J)');
          WriteLn('  2 -   kilojoule (kJ)');
          WriteLn('  3 -   kilocalorie (kcal)');
          WriteLn('  4 -   kilowatt per hour (kW/h)');
        end;
    12:
        begin
          WriteLn(' POWER' + sLineBreak);
          WriteLn('  1 - watt (W)');
          WriteLn('  2 - kilojoule per hour (kJ/h)');
          WriteLn('  3 - kilocalorie per hour (kcal/h)');
          WriteLn('  4 - hoursepower (hp)');
          WriteLn('  5 - kilowatt (kW)');
        end;
  end;
end;

procedure Options();
begin
  WriteLn(' OPTIONS' + sLineBreak);
  WriteLn('  1 -  Do another conversion');
  WriteLn('  2 -  Return to the menu');
  WriteLn('  3 -  Return to the main menu');
  WriteLn('  4 -  Quit');
end;

Function Converter(Opcode, InputUnit, OutputUnit: LongInt; Input: Real): Real;
begin
  case Opcode of 
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
  end;
end;


Var 
  Opcode, Option, InputUnit, OutputUnit: LongInt;
  Input, Output: Real;

begin
  Write(sLineBreak);
  repeat
    MainMenu();
    Write(' Enter a code: ');
    Read(Opcode);
    Write(sLineBreak, sLineBreak);
    if (Opcode = 13) then exit;
    if ((Opcode < 1) or (Opcode > 13)) then
    begin
      WriteLn('Invalid option!', sLineBreak);
      Option := 3;
      continue;
    end;
    repeat
      Menus(Opcode);
      Write(sLineBreak + ' Convert from: ');
      Read(InputUnit);
      Write(' to: ');
      Read(OutputUnit);
      repeat
        Write(' Enter the value you want to convert: ');
        Read(Input);
        Write(sLineBreak);
        try
          Output := Converter(Opcode, InputUnit, OutputUnit, Input);
          Write(' Result = ');
          if (Output > 1E-3) And (Output < 1E6) then Write(Output:10:3)
          else Write(Output);
          Write(sLineBreak, sLineBreak);
        except
          on E: Exception do
            begin
              WriteLn('An error was encountered, or an invalid option was selected.');
              WriteLn('Error: ', E.Message, sLineBreak);
            end;
        end;
        Options();
        Write(sLineBreak, ' Enter an option: ');
        Read(Option);
        Write(sLineBreak, sLineBreak);
        if ((Option <= 0) or (Option > 4)) then
        begin
          WriteLn('Invalid Option, exiting the program!', sLineBreak);
          exit;
        end;
      until (Option <> 1);
    until (Option <> 2);
  until (Option <> 3);
end.
