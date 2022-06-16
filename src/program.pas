program UnitConverter;
uses Calculate;

var 
  opcode, again, inputUnit, outputUnit: LongInt;
  value, result: Real;

begin
  repeat
    writeln('                  UNIT CONVERTER                 ');
    writeln('                      *****                      ');
    writeln('Which conversion do you want to do?'              );
    writeln('TYPE                                         CODE');
    writeln('Length                                         1 ');
    writeln('Area                                           2 ');
    writeln('Volume                                         3 ');
    writeln('Mass                                           4 ');
    writeln('Pressure                                       5 ');
    writeln('Time                                           6 ');
    writeln('Speed                                          7 ');
    writeln('Acceleration                                   8 ');
    writeln('Force                                          9 ');
    writeln('Temperature                                   10 ');
    writeln('Energy                                        11 ');
    writeln('Power                                         12 ');
    writeln('                       *****                     ');
    write('Enter a code: ');
    read(opcode);
    writeln(' ');
    case opcode of
      1: begin
        writeln('                      LENGTH                     ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('meter (m)                                      1 ');
        writeln('millimeter (mm)                                2 ');
        writeln('centimeter (cm)                                3 ');
        writeln('inch (in)                                      4 ');
        writeln('foot (ft)                                      5 ');
        writeln('kilometer (km)                                 6 ');
        writeln('mile (mi)                                      7 ');
        writeln('nautical mile (nmi)                            8 ');
      end;
      2: begin
        writeln('                       AREA                      ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('square meter (m^2)                             1 ');
        writeln('square inch (in^2)                             2 ');
        writeln('square foot (ft^2)                             3 ');
        writeln('hectare (ha)                                   4 ');
        writeln('square kilometer (km^2)                        5 ');
        writeln('square mile (mi^2)                             6 ');
      end;
      3: begin
        writeln('                      VOLUME                     ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('cubic meter (m^3)                              1 ');
        writeln('milliliter (mL or cm^3)                        2 ');
        writeln('cubic inch (in^3)                              3 ');
        writeln('fluid ounce (fl oz)                            4 ');
        writeln('liter (L)                                      5 ');
        writeln('imperial gallon (imp gal)                      6 ');
        writeln('cubic foot (ft^3)                              7 ');
      end;
      4: begin
        writeln('                       MASS                      ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('kilogram (kg)                                  1 ');
        writeln('milligram (mg)                                 2 ');
        writeln('gram (g)                                       3 ');
        writeln('ounce (oz)                                     4 ');
        writeln('pound (lb)                                     5 ');
      end;
      5: begin
        writeln('                     PRESSURE                    ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('pascal (Pa)                                    1 ');
        writeln('psi                                            2 ');
        writeln('bar                                            3 ');
        writeln('standard atmosphere (atm)                      4 ');
      end;
      6: begin
        writeln('                       TIME                      ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('second (s)                                     1 ');
        writeln('minute (min)                                   2 ');
        writeln('hour (h)                                       3 ');
        writeln('day (d)                                        4 ');
        writeln('year (y)                                       5 ');
      end;
      7: begin
        writeln('                       SPEED                     ');
        writeln('                       *****                     ');
        writeln('UNIT                                         CODE');
        writeln('meter/second (m/s)                             1 ');
        writeln('foot/minute (ft/min)                           2 ');
        writeln('kilometer/hour (km/h)                          3 ');
        writeln('mile/hour (m/hi)                               4 ');
        writeln('knot (kn or kt)                                5 ');
      end;
      8: begin
        writeln('                   ACCELERATION                  ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('meter/square second (m/s^2)                    1 ');
        writeln('kilometer/hour*second (km/h*s)                 2 ');
        writeln('foot/square second (ft/s^2)                    3 ');
        writeln('knot/second (kn/s or kt/s)                     4 ');
        writeln('acceleration of gravity (G)                    5 ');
      end;
      9: begin
        writeln('                       FORCE                     ');
        writeln('                       *****                     ');
        writeln('UNIT                                         CODE');
        writeln('newton (N)                                     1 ');
        writeln('dyne (dyn)                                     2 ');
        writeln('pound-force (lbf)                              3 ');
        writeln('kilometer-force (kmf)                          4 ');
      end;
      10: begin
        writeln('                   TEMPERATURE                   ');
        writeln('                      *****                      ');
        writeln('UNIT                                         CODE');
        writeln('kelvin (k)                                     1 ');
        writeln('Celsius (o C)                                  2 ');
        writeln('Fahrenheit (o F)                               3 ');
      end;
      11: begin
        writeln('                      ENERGY                     ');
        writeln('                      ******                     ');
        writeln('UNIT                                         CODE');
        writeln('joule (J)                                      1 ');
        writeln('kilojoule (kJ)                                 2 ');
        writeln('kilocalorie (kcal)                             3 ');
        writeln('kilowatt/hour (kw/h)                           4 ');
      end;
      12: begin
        writeln('                      POWER                      ');
        writeln('                      *****                      ');
        writeln('UNIT                                         CODE');
        writeln('watt (W)                                       1 ');
        writeln('kilojoule/hour (kJ/h)                          2 ');
        writeln('hoursepower (hp)                               3 ');
        writeln('kilowatt (kW)                                  4 ');
      end;
    end;
    writeln(' ');
    write('Convert from (code): ');  
    read(inputUnit);
    write('to (code): ');
    read(outputUnit);
    write('Enter the value do you want to convert: ');
    read(value);
    writeln('');
    case opcode of
      1: result := Length(inputUnit, outputUnit, value);
      2: result := Area(inputUnit, outputUnit, value);
      3: result := Volume(inputUnit, outputUnit, value);
      4: result := Mass(inputUnit, outputUnit, value);
      5: result := Pressure(inputUnit, outputUnit, value);
      6: result := Time(inputUnit, outputUnit, value);
      7: result := Speed(inputUnit, outputUnit, value);
      8: result := Acceleration(inputUnit, outputUnit, value);
      9: result := Force(inputUnit, outputUnit, value);
      10: result := Temperature(inputUnit, outputUnit, value);
      11: result := Energy(inputUnit, outputUnit, value);
      12: result := Power(inputUnit, outputUnit, value);
    end;
    writeln('result = ', result);
    writeln(' ');
    writeln('Do you want to do another conversion? (1/0)');
    readln(again);
    writeln(' ');
  until again = 0;
end.