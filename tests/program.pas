
program Test;

{$mode objfpc}

uses Calculate, Math, SysUtils;

{$ASSERTIONS ON}

procedure Check(actual, expected: Real; const msg: string);
begin
  if not SameValue(SimpleRoundTo(actual, -3), expected, 0.0001) then
    raise Exception.CreateFmt('Error in %s: Expected: %g, recived: %g', [msg, expected, actual])
end;

begin
  try
    Check(Length(8, 6, 1), 1.852, 'Test 1 (nmi -> km)');
    Check(Length(5, 4, 1), 12, 'Test 2 (ft -> in)');
    Check(Area(7, 5, 1), 258.999, 'Test 3 (mi^2 -> ha)');
    Check(Area(3, 2, 1), 6.452, 'Test 4 (in^2 -> cm^2)');
    Check(Volume(6, 5, 1), 3.785, 'Test 5 (gal -> L)');
    Check(Volume(4, 2, 10), 295.735, 'Test 6 (fl oz -> mL)');
    Check(Mass(6, 5, 1), 2204.623, 'Test 7 (t -> lb)');
    Check(Mass(4, 3, 1), 28.35, 'Test 8 (oz -> g)');
    Check(Pressure(5, 4, 1), 1.013, 'Test 9 (atm -> bar)');
    Check(TimeC(5, 3, 1), 8766, 'Test 10 (y -> h)');
    Check(Speed(4, 3, 1), 1.609, 'Test 11 (mi/h -> km/h)');
    Check(Acceleration(6, 3, 1), 35.304, 'Test 12 (g -> km/h*s)');
    Check(Force(4, 2, 1), 980665, 'Test 13 (kgf -> dyn)');
    Check(Temperature(2, 3, 20), 68, 'Test 14 (C -> F)');
    Check(Energy(4, 2, 1), 3600, 'Test 15 (kW/h -> kJ)');
    Check(PowerC(4, 2, 1), 2684.52, 'Test 16 (hp -> kJ/h)');
    WriteLn('Passed all tests successfully!', sLineBreak);
  except
    on E: Exception do WriteLn(E.Message, sLineBreak);
  end;
end.
