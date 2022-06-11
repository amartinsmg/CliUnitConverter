program UnitConverter;
var 
  opcode, again, inputUnit, outputUnit: integer;
  value: real;

  function Length(inputUnit, outputUnit: integer; value: real) :real;
  var
    m: real;
  begin

    case inputUnit of
      1: m := value; // m
      2: m := value / 1000; // mm
      3: m := value / 100; // cm
      4: m := value / 39.370; // in
      5: m := value / 3.28; // ft
      6: m := value / 1E-3; // km
      7: m := value / 6.21E-4; // mi
      8: m := value / 5.4E-4; // nmi
    end;
    case outputUnit of
      1: Length := m; // m
      2: Length := m * 1000; // mm
      3: Length := m * 100; // cm
      4: Length := m * 39.370; // in
      5: Length := m * 3.28; // ft
      6: Length := m * 1E-3; // km
      7: Length := m * 6.21E-4; // mi
      8: Length := m * 5.4E-4; // nmi
    end;
  end;

  function Area(inputUnit, outputUnit: integer; value: real) :real;
  var
    m2: real;
  begin
    case inputUnit of
      1: m2 := value; // m2
      2: m2 := value / 1550; // in2
      3: m2 := value / 10.7639; // ft2
      4: m2 := value / 1E-4; // ha
      5: m2 := value / 1E-6; // km2
      6: m2 := value / 3.861E-7 ; // mi2
    end;
    case outputUnit of
      1: Area := m2; // m2
      2: Area := m2 * 1550; // in2
      3: Area := m2 * 10.7639; // ft2
      4: Area := m2 * 1E-4; // ha
      5: Area := m2 * 1E-6; // km2
      6: Area := m2 * 3.861E-7 ; // mi2
    end;
  end;

  function Volume(inputUnit, outputUnit: integer; value: real) :real;
  var m3: real;
  begin
    case inputUnit of
      1: m3 := value; // m3
      2: m3 := value / 1E+6; // mL
      3: m3 := value / 61023.7; // in3
      4: m3 := value / 35195.1; // fl oz
      5: m3 := value / 1000; // L
      6: m3 := value / 219.969 ; // imp gal
      7: m3 := value / 35.3147; // ft3
    end;
    case outputUnit of
      1: Volume := m3; // m3
      2: Volume := m3 * 1E+6; // mL
      3: Volume := m3 * 61023.7; // in3
      6: Volume := m3 * 35195.1; // fl oz
      4: Volume := m3 * 1000; // L
      7: Volume := m3 * 219.969 ; // imp gal
      5: Volume := m3 * 35.3147; // ft3
    end;
  end;

  function Mass(inputUnit, outputUnit: integer; value: real) :real;
  var kg: real;
  begin
    case inputUnit of
      1: kg := value; // kg
      2: kg := value / 1E+6; // mg
      3: kg := value / 1000; // g
      4: kg := value / 35.274; // oz
      5: kg := value / 2.20462; // lb
    end;
    case outputUnit of
      1: Mass := kg; // kg
      2: Mass := kg * 1E+6; // mg
      3: Mass := kg * 1000; // g
      4: Mass := kg * 35.274; // oz
      5: Mass := kg * 2.20462; // lb
    end;
  end;

  function Pressure(inputUnit, outputUnit: integer; value: real) :real;
  var Pa : real;
  begin
    case inputUnit of
      1: Pa := value; // Pa
      2: Pa := value / 1.45038E-4; // psi
      3: Pa := value / 1E-5; // bar
      4: Pa := value / 9.8692e-6; // atm
    end;
    case outputUnit of
      1: Pressure := Pa; // Pa
      2: Pressure := Pa * 1.45038E-4; // psi
      3: Pressure := Pa * 1E-5; // bar
      4: Pressure := Pa * 9.8692e-6; // atm
    end;
  end;

  function Time(inputUnit, outputUnit: integer; value: real) :real;
  var s: real;
  begin
    case inputUnit of
      1: s := value; // s
      2: s := value / 0.01667; // min
      3: s := value / 2.778E-4; // h
      4: s := value / 1.1574E-5; // day
      5: s := value / 3.171E-8; // year
    end;
    case outputUnit of
      1: Time := s; // s
      2: Time := s * 0.01667; // min
      3: Time := s * 2.778E-4; // h
      4: Time := s * 1.1574E-5; // day
      5: Time := s * 3.171E-8; // year
    end;
  end;

  function Speed(inputUnit, outputUnit: integer; value: real) :real;
  var m_s: real;
  begin
    case inputUnit of
      1: m_s := value; // m/s
      2: m_s := value / 3.6; // km/h
      3: m_s := value / 3.28084; // ft/s
      4: m_s := value / 2.23694; // mi/h
      5: m_s := value / 1.94384; // kn
    end;
    case outputUnit of
      1: Speed := m_s; // m/s
      2: Speed := m_s * 3.6; // km/h
      3: Speed := m_s * 3.28084; // ft/s
      4: Speed := m_s * 2.23694; // mi/h
      5: Speed := m_s * 1.94384; // kn
    end;
  end;

  function Acceleration(inputUnit, outputUnit: integer; value: real) :real;
  var m_s2 : real;
  begin
    case inputUnit of
      1: m_s2 := value; // m/s2
      2: m_s2 := value / 12960; // km/h2
      3: m_s2 := value / 3.280839895; // ft/s2
      4: m_s2 := value / 0.1019716213; // G
    end;
    case outputUnit of
      1: Acceleration := m_s2; // m/s2
      2: Acceleration := m_s2 * 12960; // km/h2
      3: Acceleration := m_s2 * 3.280839895; // ft
      4: Acceleration := m_s2 * 0.1019716213; // G
    end;
  end;

  function Force(inputUnit, outputUnit: integer; value: real) :real;
  var N : real;
  begin
    case inputUnit of
      1: N := value; // N
      2: N := value / 1E+5; // dyn
      3: N := value / 0.2248089431; // lbf
      4: N := value / 0.1019716213; // kgf
    end;
    case outputUnit of
      1: Force := N; // N
      2: Force := N * 1E+5; // dyn
      3: Force := N * 0.2248089431; // lbf
      4: Force := N * 0.1019716213; // kgf
    end;
  end;

  function Temperature(inputUnit, outputUnit: integer; value: real) :real;
  var k: real;
  begin
    case inputUnit of
      1: k := value; // kelvin
      2: k := value + 273; // celsius
      3: k := (value - 32) * 5/9 + 273 ; // fahrenheit
    end;
    case outputUnit of
      1: Temperature := k; // kelvin
      2: Temperature := k * 3.6; // celsius
      3: Temperature := (k - 273) * 9/5 + 32; // fahrenheit
    end;
  end;

  function Energy(inputUnit, outputUnit: integer; value: real) :real;
  var J : real;
  begin
    case inputUnit of
      1: J := value; // J
      2: J := value / 0.0001; // kJ
      3: J := value / 2.39006E-4; // kcal
      4: J := value / 2.7778e-7; // kw/h
    end;
    case outputUnit of
      1: Energy := J; // J
      2: Energy := J * 0.0001; // kJ
      3: Energy := J * 2.39006E-4; // kcal
      4: Energy := J * 2.7778e-7; // kw/h
    end;
  end;

  function Power(inputUnit, outputUnit: integer; value: real) :real;
  var W : real;
  begin
    case inputUnit of
      1: W := value; // W
      2: W := value / 3.6; // kJ/h
      3: W := value / 0.8598452279; // kcal/h
      4: W := value / 1.3410221E-3; // hp
      5: W := value / 0.001; // kW
    end;
    case outputUnit of
      1: Power := W; // W
      2: Power := W * 3.6; // kJ/h
      3: Power := W * 0.8598452279; // kcal/h
      4: Power := W * 1.3410221E-3; // hp
      5: Power := W * 0.001; // kW
    end;
  end;
 begin
  repeat
    writeln('           UNIT CONVERTER          ');
    writeln('               *****               ');
    writeln('Which conversion do you want to do?');
    writeln(' TYPE                  NUMERIC CODE');
    writeln(' Length                     1      ');
    writeln(' Area                       2      ');
    writeln(' Volume                     3      ');
    writeln(' Mass                       4      ');
    writeln(' Pressure                   5      ');
    writeln(' Time                       6      ');
    writeln(' Speed                      7      ');
    writeln(' Acceleration               8      ');
    writeln(' Force                      9      ');
    writeln(' Temperature               10      ');
    writeln(' Energy                    11      ');
    writeln(' Power                     12      ');
    writeln('               *****               ');
    write('Enter a code: ');
    read(opcode);
    case opcode of
      1: begin
        writeln('               LENGTH              ');
        writeln('               ******              ');
        writeln(' UNIT                  NUMERIC CODE');
        writeln(' meter (m)                  1      ');
        writeln(' millimeter (mm)            2      ');
        writeln(' centimeter (cm)            3      ');
        writeln(' inch (in)                  4      ');
        writeln(' foot (ft)                  5      ');
        writeln(' kilometer (km)             6      ');
        writeln(' mile (mi)                  7      ');
        writeln(' nautical mile (nmi)        8      ');
        writeln('               *****               ');
        write('Convert from (numeric code): ');  
        read(inputUnit);
        write('to (numeric code): ');
        read(outputUnit);
        write('Enter the value do you want to convert: ');
        read(value);
        writeln('result = ', Length(inputUnit, outputUnit, value));
      end;
      2: begin
        
      end;
      3: begin
        
      end;
      4: begin
        
      end;
      5: begin
        
      end;
      6: begin

      end;
      7: begin
        
      end;
      8: begin
        
      end;
      9: begin
        
      end;
      10: begin
        
      end;
      11: begin
        
      end;
      12: begin
        
      end;
    end;
    writeln('Do you want to do another conversion? (1/0)');
    readln(again);
  until again = 0
end.