program UnitConverter;
uses Calculate;

var 
  Opcode, Again, InputUnit, OutputUnit: LongInt;
  Input, Output: Real;

begin
  repeat
    Writeln('                  UNIT CONVERTER                 ');
    Writeln('                      *****                      ');
    Writeln('Which conversion do you want to do?'              );
    Writeln('TYPE                                         CODE');
    Writeln('Length                                         1 ');
    Writeln('Area                                           2 ');
    Writeln('Volume                                         3 ');
    Writeln('Mass                                           4 ');
    Writeln('Pressure                                       5 ');
    Writeln('Time                                           6 ');
    Writeln('Speed                                          7 ');
    Writeln('Acceleration                                   8 ');
    Writeln('Force                                          9 ');
    Writeln('Temperature                                   10 ');
    Writeln('Energy                                        11 ');
    Writeln('Power                                         12 ');
    Writeln('                       *****                     ');
    Write('Enter a code: ');
    Read(Opcode);
    Writeln(' ');
    case Opcode of
      1: begin
        Writeln('                      LENGTH                     ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('meter (m)                                      1 ');
        Writeln('millimeter (mm)                                2 ');
        Writeln('centimeter (cm)                                3 ');
        Writeln('inch (in)                                      4 ');
        Writeln('foot (ft)                                      5 ');
        Writeln('kilometer (km)                                 6 ');
        Writeln('mile (mi)                                      7 ');
        Writeln('nautical mile (nmi)                            8 ');
      end;
      2: begin
        Writeln('                       AREA                      ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('square meter (m^2)                             1 ');
        Writeln('square inch (in^2)                             2 ');
        Writeln('square foot (ft^2)                             3 ');
        Writeln('hectare (ha)                                   4 ');
        Writeln('square kilometer (km^2)                        5 ');
        Writeln('square mile (mi^2)                             6 ');
      end;
      3: begin
        Writeln('                      VOLUME                     ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('cubic meter (m^3)                              1 ');
        Writeln('milliliter (mL or cm^3)                        2 ');
        Writeln('cubic inch (in^3)                              3 ');
        Writeln('fluid ounce (fl oz)                            4 ');
        Writeln('liter (L)                                      5 ');
        Writeln('imperial gallon (imp gal)                      6 ');
        Writeln('cubic foot (ft^3)                              7 ');
      end;
      4: begin
        Writeln('                       MASS                      ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('kilogram (kg)                                  1 ');
        Writeln('milligram (mg)                                 2 ');
        Writeln('gram (g)                                       3 ');
        Writeln('ounce (oz)                                     4 ');
        Writeln('pound (lb)                                     5 ');
      end;
      5: begin
        Writeln('                     PRESSURE                    ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('pascal (Pa)                                    1 ');
        Writeln('psi                                            2 ');
        Writeln('bar                                            3 ');
        Writeln('standard atmosphere (atm)                      4 ');
      end;
      6: begin
        Writeln('                       TIME                      ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('second (s)                                     1 ');
        Writeln('minute (min)                                   2 ');
        Writeln('hour (h)                                       3 ');
        Writeln('day (d)                                        4 ');
        Writeln('year (y)                                       5 ');
      end;
      7: begin
        Writeln('                       SPEED                     ');
        Writeln('                       *****                     ');
        Writeln('UNIT                                         CODE');
        Writeln('meter/second (m/s)                             1 ');
        Writeln('foot/minute (ft/min)                           2 ');
        Writeln('kilometer/hour (km/h)                          3 ');
        Writeln('mile/hour (m/hi)                               4 ');
        Writeln('knot (kn or kt)                                5 ');
      end;
      8: begin
        Writeln('                   ACCELERATION                  ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('meter/square second (m/s^2)                    1 ');
        Writeln('kilometer/hour*second (km/h*s)                 2 ');
        Writeln('foot/square second (ft/s^2)                    3 ');
        Writeln('knot/second (kn/s or kt/s)                     4 ');
        Writeln('acceleration of gravity (G)                    5 ');
      end;
      9: begin
        Writeln('                       FORCE                     ');
        Writeln('                       *****                     ');
        Writeln('UNIT                                         CODE');
        Writeln('newton (N)                                     1 ');
        Writeln('dyne (dyn)                                     2 ');
        Writeln('pound-force (lbf)                              3 ');
        Writeln('kilometer-force (kmf)                          4 ');
      end;
      10: begin
        Writeln('                   TEMPERATURE                   ');
        Writeln('                      *****                      ');
        Writeln('UNIT                                         CODE');
        Writeln('kelvin (k)                                     1 ');
        Writeln('Celsius (o C)                                  2 ');
        Writeln('Fahrenheit (o F)                               3 ');
      end;
      11: begin
        Writeln('                      ENERGY                     ');
        Writeln('                      ******                     ');
        Writeln('UNIT                                         CODE');
        Writeln('joule (J)                                      1 ');
        Writeln('kilojoule (kJ)                                 2 ');
        Writeln('kilocalorie (kcal)                             3 ');
        Writeln('kilowatt/hour (kw/h)                           4 ');
      end;
      12: begin
        Writeln('                      POWER                      ');
        Writeln('                      *****                      ');
        Writeln('UNIT                                         CODE');
        Writeln('watt (W)                                       1 ');
        Writeln('kilojoule/hour (kJ/h)                          2 ');
        Writeln('hoursepower (hp)                               3 ');
        Writeln('kilowatt (kW)                                  4 ');
      end;
    end;
    Writeln(' ');
    Write('Convert from (code): ');  
    Read(InputUnit);
    Write('to (code): ');
    Read(OutputUnit);
    Write('Enter the Input do you want to convert: ');
    Read(Input);
    Writeln('');
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
      12: Output := Power(InputUnit, OutputUnit, Input);
    end;
    Writeln('Output = ', Output);
    Writeln(' ');
    Writeln('Do you want to do another conversion? (1/0)');
    Readln(Again);
    Writeln(' ');
  until Again = 0;
end.