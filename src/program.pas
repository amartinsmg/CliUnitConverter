program UnitConverter;
uses Calculate;

procedure MainMenu();
begin
  Writeln(' UNIT CONVERTER' + sLineBreak);
  Writeln('  1  -  Length');
  Writeln('  2  -  Area');
  Writeln('  3  -  Volume');
  Writeln('  4  -  Mass');
  Writeln('  5  -  Pressure');
  Writeln('  6  -  Time');
  Writeln('  7  -  Speed');
  Writeln('  8  -  Acceleration');
  Writeln('  9  -  Force');
  Writeln('  10 -  Temperature');
  Writeln('  11 -  Energy');
  Writeln('  12 -  Power');
  Writeln('  13 -  Quit' + sLineBreak);
end;


procedure Menus(Opcode: LongInt);
begin
  case Opcode of
    1: begin
      Writeln(' LENGTH' + sLineBreak);
      Writeln('  1 -  meter (m)');
      Writeln('  2 -  millimeter (mm)');
      Writeln('  3 -  centimeter (cm)');
      Writeln('  4 -  inch (in)');
      Writeln('  5 -  foot (ft)');
      Writeln('  6 -  kilometer (km)');
      Writeln('  7 -  mile (mi)');
      Writeln('  8 -  nautical mile (nmi)');
    end;
    2: begin
      Writeln(' AREA' + sLineBreak);
      Writeln('  1 -  square meter (m^2)');
      Writeln('  2 -  square centimeter (cm^2)');
      Writeln('  3 -  square inch (in^2)');
      Writeln('  4 -  square foot (ft^2)');
      Writeln('  5 -  hectare (ha)');
      Writeln('  6 -  square kilometer (km^2)');
      Writeln('  7 -  square mile (mi^2)');
    end;
    3: begin
      Writeln(' VOLUME' + sLineBreak);
      Writeln('  1 -  cubic meter (m^3)');
      Writeln('  2 -  milliliter or cubic centimeter (mL or cm^3)');
      Writeln('  3 -  cubic inch (in^3)');
      Writeln('  4 -  fluid ounce(US) (fl oz)');
      Writeln('  5 -  liter (L)');
      Writeln('  6 -  gallon(US) (gal)');
      Writeln('  7 -  cubic foot (ft^3)');
    end;
    4: begin
      Writeln(' MASS' + sLineBreak);
      Writeln('  1 -  kilogram (kg)');
      Writeln('  2 -  milligram (mg)');
      Writeln('  3 -  gram (g)');
      Writeln('  4 -  ounce (oz)');
      Writeln('  5 -  pound (lb)');
      Writeln('  6 -  tonne (t)');
    end;
    5: begin
      Writeln(' PRESSURE' + sLineBreak);
      Writeln('  1 -  pascal e Newton per square meter (Pa or N/m^2)');
      Writeln('  2 -  millimeter of mercury (mmHg)');
      Writeln('  3 -  psi');
      Writeln('  4 -  bar');
      Writeln('  5 -  standard atmosphere (atm)');
    end;
    6: begin
      Writeln(' TIME' + sLineBreak);
      Writeln('  1 -  second (s)');
      Writeln('  2 -  minute (min)');
      Writeln('  3 -  hour (h)');
      Writeln('  4 -  day (d)');
      Writeln('  5 -  year (y)');
    end;
    7: begin
      Writeln(' SPEED' + sLineBreak);
      Writeln('  1 -  meter per second (m/s)');
      Writeln('  2 -  foot per minute (ft/min)');
      Writeln('  3 -  kilometer per hour (km/h)');
      Writeln('  4 -  mile per hour (m/hi)');
      Writeln('  5 -  knot (kn or kt)');
    end;
    8: begin
      Writeln(' ACCELERATION' + sLineBreak);
      Writeln('  1 -  meter per square second (m/s^2)');
      Writeln('  2 -  foot per min per second (ft/min/s)');
      Writeln('  3 -  kilometer per hour per second (km/h/s)');
      Writeln('  4 -  mile per hour per second (mi/h/s)');
      Writeln('  5 -  knot per second (kn/s or kt/s)');
      Writeln('  6 -  acceleration of gravity (G)');
    end;
    9: begin
      Writeln(' FORCE' + sLineBreak);
      Writeln('  1 -  Newton (N)');
      Writeln('  2 -  dyne (dyn)');
      Writeln('  3 -  pound-force (lbf)');
      Writeln('  4 -  kilometer-force (kmf)');
    end;
    10: begin
      Writeln(' TEMPERATURE' + sLineBreak);
      Writeln('  1 -  kelvin (k)');
      Writeln('  2 -  Celsius (C)');
      Writeln('  3 -  Fahrenheit (F)');
    end;
    11: begin
      Writeln(' ENERGY' + sLineBreak);
      Writeln('  1 -   joule (J)');
      Writeln('  2 -   kilojoule (kJ)');
      Writeln('  3 -   kilocalorie (kcal)');
      Writeln('  4 -   kilowatt per hour (kW/h)');
    end;
    12: begin
      Writeln(' POWER' + sLineBreak);
      Writeln('  1 - watt (W)');
      Writeln('  2 - kilojoule per hour (kJ/h)');
      Writeln('  3 - kilocalorie per hour (kcal/h)');
      Writeln('  4 - hoursepower (hp)');
      Writeln('  5 - kilowatt (kW)');
    end;
  end;
end;

procedure Options();
begin
  Writeln(' OPTIONS' + sLineBreak);
  Writeln('  1 -  Do another conversion');
  Writeln('  2 -  Return to the menu');
  Writeln('  3 -  Return to the main menu');
  Writeln('  4 -  Quit');
end;

var 
  Opcode, Option, InputUnit, OutputUnit: LongInt;
  Input, Output: Real;

begin
  Write(sLineBreak);
  repeat
    MainMenu();
    Write(' Enter a code: ');
    Read(Opcode);
    Write(sLineBreak + sLineBreak);
    if ((Opcode < 1) or (Opcode > 12)) then exit;
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
        case Opcode of
          1: Output := Length(InputUnit, OutputUnit, Input);
          2: Output := Area(InputUnit, OutputUnit, Input);
          3: Output := Volume(InputUnit, OutputUnit, Input);
          4: Output := Mass(InputUnit, OutputUnit, Input);
          5: Output := Pressure(InputUnit, OutputUnit, Input);
          6: Output := Time(InputUnit, OutputUnit, Input);
          7: Output := Speed(InputUnit, OutputUnit, Input);
          8: Output := Acceleration(InputUnit, OutputUnit, Input);
          9: Output := Force(InputUnit, OutputUnit, Input);
          10: Output := Temperature(InputUnit, OutputUnit, Input);
          11: Output := Energy(InputUnit, OutputUnit, Input);
          12: Output := PowerC(InputUnit, OutputUnit, Input);
        end;
        Write(' Output = ');
        if (Output > 1E-3) and (Output < 1E6) then Write(Output:10:3)
        else Write(Output);
        Write(sLineBreak + sLineBreak);
        Options();
        Write(sLineBreak + ' Enter an option: ');
        Read(Option);
        Write(sLineBreak + sLineBreak);
      until (Option <> 1);
    until (Option <> 2);
  until (Option <> 3);
end.