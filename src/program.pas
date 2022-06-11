program UnitConverter;
var 
  opcode, again, inputUnit, outputUnit: integer;
  value: real;

  function Length(inputUnit, outputUnit: integer; value: real) :real;
  var
    meters: real;
  begin

    case inputUnit of
      1: meters := value; //m
      2: meters := value / 1000; //mm
      3: meters := value / 100; //cm
      4: meters := value / 39.370; //in
      5: meters := value / 3.28; //ft
      6: meters := value / 0.001; //km
      7: meters := value / 0.000621; //mi
      8: meters := value / 0.00054; //nmi
    end;
    case outputUnit of
      1: Length := meters; //m
      2: Length := meters * 1000; //mm
      3: Length := meters * 100; //cm
      4: Length := meters * 39.370; //in
      5: Length := meters * 3.28; //ft
      6: Length := meters * 0.001; //km
      7: Length := meters * 0.000621; //mi
      8: Length := meters * 0.00054; //nmi
    end;
  end;

  function Area(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Volume(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Mass(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Time(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Speed(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Temperature(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Force(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Acceleration(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Presure(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Energy(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
  end;

  function Power(inputUnit, outputUnit: integer; value: real) :real;;
  begin
    
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
    writeln(' Time                       5      ');
    writeln(' Speed                      6      ');
    writeln(' Temperature                7      ');
    writeln(' Force                      8      ');
    writeln(' Acceleration               9      ');
    writeln(' Pressure                  10      ');
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
        writeln(Length(inputUnit, outputUnit, value));
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