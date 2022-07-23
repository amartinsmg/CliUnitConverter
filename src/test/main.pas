program test;
uses Calculate, Math;
const str: String = 'Test fail';
begin
  {$ASSERTIONS ON}
  Assert((SimpleRoundTo(Length(8, 6, 1), -3) = 1.852), str); // nmi -> km
  Assert((SimpleRoundTo(Length(5, 4, 1), -3) = 12), str); // ft -> in
  Assert((SimpleRoundTo(Area(7, 5, 1), -3) = 258.999), str); // mi^2 -> ha
  Assert((SimpleRoundTo(Area(3, 2, 1), -3) = 6.452), str); // in^2 -> cm^2
  Assert((SimpleRoundTo(Volume(6, 5, 1), -3) = 3.785), str); // gal -> L
  Assert((SimpleRoundTo(Volume(4, 2, 10), -3) = 295.735), str); // fl oz -> mL
  Assert((SimpleRoundTo(Mass(6, 5, 1), -3) = 2204.623), str); // t -> lb
  Assert((SimpleRoundTo(Mass(4, 3, 1), -3) = 28.35), str); // oz -> g
  Assert((SimpleRoundTo(Pressure(5, 4, 1), -3) = 1.013), str); // atm -> bar
  Assert((SimpleRoundTo(Time(5, 3, 1), -3) = 8766), str); // y -> h
  Assert((SimpleRoundTo(Speed(4, 3, 1), -3) = 1.609), str); // mi/h -> km/h
  Assert((SimpleRoundTo(Acceleration(6, 3, 1), -3) = 35.304), str); // g -> km/h*s
  Assert((SimpleRoundTo(Force(4, 2, 1), -3) = 980665), str); // kgf -> dyn
  Assert((SimpleRoundTo(Temperature(2, 3, 20), -3) = 68), str); // C -> F
  Assert((SimpleRoundTo(Energy(4, 2, 1), -3) = 3600), str); // kW/h -> kJ
  Assert((SimpleRoundTo(PowerC(4, 2, 1), -3) = 2684.52), str); // hp -> kJ/h
  WriteLn('Passed all tests successfully!');
end.
