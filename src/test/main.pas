
Program test;

Uses Calculate, Math;
Begin
  {$ASSERTIONS ON}
  Assert(SameValue(SimpleRoundTo(Length(8, 6, 1), -3), 1.852, 0.0001), 'Test 1: Failed!');
  // nmi -> km
  Assert(SameValue(SimpleRoundTo(Length(5, 4, 1), -3), 12, 0.0001), 'Test 2: Failed!');
  // ft -> in
  Assert(SameValue(SimpleRoundTo(Area(7, 5, 1), -3), 258.999, 0.0001), 'Test 3: Failed!');
  // mi^2 -> ha
  Assert(SameValue(SimpleRoundTo(Area(3, 2, 1), -3), 6.452, 0.0001), 'Test 4: Failed!');
  // in^2 -> cm^2
  Assert(SameValue(SimpleRoundTo(Volume(6, 5, 1), -3), 3.785, 0.0001), 'Test 5: Failed!');
  // gal -> L
  Assert(SameValue(SimpleRoundTo(Volume(4, 2, 10), -3), 295.735, 0.0001), 'Test 6: Failed!');
  // fl oz -> mL
  Assert(SameValue(SimpleRoundTo(Mass(6, 5, 1), -3), 2204.623, 0.0001), 'Test 7: Failed!');
  // t -> lb
  Assert(SameValue(SimpleRoundTo(Mass(4, 3, 1), -3), 28.35, 0.0001), 'Test 8: Failed!');
  // oz -> g
  Assert(SameValue(SimpleRoundTo(Pressure(5, 4, 1), -3), 1.013, 0.0001), 'Test 9: Failed!');
  // atm -> bar
  Assert(SameValue(SimpleRoundTo(TimeC(5, 3, 1), -3), 8766, 0.0001), 'Test 10: Failed!');
  // y -> h
  Assert(SameValue(SimpleRoundTo(Speed(4, 3, 1), -3), 1.609, 0.0001), 'Test 11: Failed!');
  // mi/h -> km/h
  Assert(SameValue(SimpleRoundTo(Acceleration(6, 3, 1), -3), 35.304, 0.0001), 'Test 12: Failed!');
  // g -> km/h*s
  Assert(SameValue(SimpleRoundTo(Force(4, 2, 1), -3), 980665, 0.0001), 'Test 13: Failed!');
  // kgf -> dyn
  Assert(SameValue(SimpleRoundTo(Temperature(2, 3, 20), -3), 68, 0.0001), 'Test 14: Failed!');
  // C -> F
  Assert(SameValue(SimpleRoundTo(Energy(4, 2, 1), -3), 3600, 0.0001), 'Test 15: Failed!');
  // kW/h -> kJ
  Assert(SameValue(SimpleRoundTo(PowerC(4, 2, 1), -3), 2684.52, 0.0001), 'Test 16: Failed!');
  // hp -> kJ/h
  WriteLn('Passed all tests successfully!', sLineBreak);
End.
