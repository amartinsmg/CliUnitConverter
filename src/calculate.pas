unit Calculate;

interface

function Length(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Area(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Volume(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Mass(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Pressure(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Time(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Speed(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Acceleration(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Force(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Temperature(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function Energy(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
function PowerC(InputUnit, OutputUnit: LongInt; Input: Real) :Real;

implementation

function Length(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m: Real;
begin
  case InputUnit of
    1: m := Input; // m
    2: m := Input / 1000; // mm
    3: m := Input / 100; // cm
    4: m := Input / 39.370079; // in
    5: m := Input / 3.28084; // ft
    6: m := Input * 1000; // km
    7: m := Input * 1609.35; // mi
    8: m := Input * 1852; // nmi
  end;
  case OutputUnit of
    1: Length := m; // m
    2: Length := m * 1000; // mm
    3: Length := m * 100; // cm
    4: Length := m * 39.370079; // in
    5: Length := m * 3.28084; // ft
    6: Length := m / 1000; // km
    7: Length := m / 1609.35; // mi
    8: Length := m / 1852; // nmi
  end;
end;

function Area(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m2: Real;
begin
  case InputUnit of
    1: m2 := Input; // m2
    2: m2 := Input / 1E+4; // cm2
    3: m2 := Input / 1550; // in2
    4: m2 := Input / 10.76391; // ft2
    5: m2 := Input * 1E+4; // ha
    6: m2 := Input * 1E+6; // km2
    7: m2 := Input * 2589990 ; // mi2
  end;
  case OutputUnit of
    1: Area := m2; // m2
    2: Area := m2 * 1E+4; // cm2
    3: Area := m2 * 1550; // in2
    4: Area := m2 * 10.76391; // ft2
    5: Area := m2 / 1E+4; // ha
    6: Area := m2 / 1E+6; // km2
    7: Area := m2 / 2589990 ; // mi2
  end;
end;

function Volume(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m3: Real;
begin
  case InputUnit of
    1: m3 := Input; // m3
    2: m3 := Input / 1E+6; // mL
    3: m3 := Input / 61023.744095; // in3
    4: m3 := Input / 33814.0227; // fl oz
    5: m3 := Input / 1000; // L
    6: m3 := Input / 264.172052 ; // gal
    7: m3 := Input / 35.31467; // ft3
  end;
  case OutputUnit of
    1: Volume := m3; // m3
    2: Volume := m3 * 1E+6; // mL
    3: Volume := m3 * 61023.744095; // in3
    4: Volume := m3 * 33814.022702; // fl oz
    5: Volume := m3 * 1000; // L
    6: Volume := m3 * 264.172052 ; // gal
    7: Volume := m3 * 35.314667; // ft3
  end;
end;

function Mass(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var kg: Real;
begin
  case InputUnit of
    1: kg := Input; // kg
    2: kg := Input / 1E+6; // mg
    3: kg := Input / 1000; // g
    4: kg := Input / 35.273963; // oz
    5: kg := Input / 2.204623; // lb
    6: kg := Input * 1000; // t
  end;
  case OutputUnit of
    1: Mass := kg; // kg
    2: Mass := kg * 1E+6; // mg
    3: Mass := kg * 1000; // g
    4: Mass := kg * 35.273963; // oz
    5: Mass := kg * 2.204623; // lb
    6: Mass := kg / 1000; // t
  end;
end;

function Pressure(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var Pa : Real;
begin
  case InputUnit of
    1: Pa := Input; // Pa
    2: Pa := Input * 133.322; // mmHg
    3: Pa := Input * 6894.76; // psi
    4: Pa := Input * 1E+5; // bar
    5: Pa := Input * 101325; // atm
  end;
  case OutputUnit of
    1: Pressure := Pa; // Pa
    2: Pressure := Pa / 133.322; // mmHg
    3: Pressure := Pa / 6894.76; // psi
    4: Pressure := Pa / 1E+5; // bar
    5: Pressure := Pa / 101325; // atm
  end;
end;

function Time(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var s: Real;
begin
  case InputUnit of
    1: s := Input; // s
    2: s := Input * 60; // min
    3: s := Input * 3600; // h
    4: s := Input * 86400; // d
    5: s := Input * 31557600; // y
  end;
  case OutputUnit of
    1: Time := s; // s
    2: Time := s / 60; // min
    3: Time := s / 3600; // h
    4: Time := s / 86400; // d
    5: Time := s / 31557600; // y
  end;
end;

function Speed(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m_s: Real;
begin
  case InputUnit of
    1: m_s := Input; // m/s
    2: m_s := Input / 196.850394; // ft/min
    3: m_s := Input / 3.6; // km/h
    4: m_s := Input / 2.23694; // mi/h
    5: m_s := Input / 1.94384; // kn
  end;
  case OutputUnit of
    1: Speed := m_s; // m/s
    2: Speed := m_s * 196.850394; // ft/min
    3: Speed := m_s * 3.6; // km/h
    4: Speed := m_s * 2.23694; // mi/h
    5: Speed := m_s * 1.94384; // kn
  end;
end;

function Acceleration(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m_s2 : Real;
begin
  case InputUnit of
    1: m_s2 := Input; // m/s2
    2: m_s2 := Input / 196.850394; // ft/min*s
    3: m_s2 := Input / 3.6; // km/h*s
    4: m_s2 := Input / 2.236936; // mi/h*s
    5: m_s2 := Input / 1.943845; // kn/s
    6: m_s2 := Input * 9.80665; // G
  end;
  case OutputUnit of
    1: Acceleration := m_s2; // m/s2
    2: Acceleration := m_s2 * 196.850394; // ft/min*s
    3: Acceleration := m_s2 * 3.6; // km/h*s
    4: Acceleration := m_s2 * 2.236936; // mi/h*s
    5: Acceleration := m_s2 * 1.943845; // kn/s
    6: Acceleration := m_s2 / 9.80665; // G
  end;
end;

function Force(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var N : Real;
begin
  case InputUnit of
    1: N := Input; // N
    2: N := Input / 1E+5; // dyn
    3: N := Input * 4.448221; // lbf
    4: N := Input * 9.80665; // kgf
  end;
  case OutputUnit of
    1: Force := N; // N
    2: Force := N * 1E+5; // dyn
    3: Force := N / 4.448221; // lbf
    4: Force := N / 9.80665; // kgf
  end;
end;

function Temperature(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var K: Real;
begin
  case InputUnit of
    1: K := Input; // K
    2: K := Input + 273.15; // C
    3: K := (Input - 32) * 5/9 + 273.15 ; // F
  end;
  case OutputUnit of
    1: Temperature := K; // K
    2: Temperature := K - 273.15; // C
    3: Temperature := (K - 273.15) * 9/5 + 32; // F
  end;
end;

function Energy(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var J : Real;
begin
  case InputUnit of
    1: J := Input; // J
    2: J := Input * 1000; // kJ
    3: J := Input * 4184; // kcal
    4: J := Input * 3.6E+6; // kW/h
  end;
  case OutputUnit of
    1: Energy := J; // J
    2: Energy := J / 1000; // kJ
    3: Energy := J / 4184; // kcal
    4: Energy := J / 3.6E+6; // kW/h
  end;
end;

function PowerC(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var W : Real;
begin
  case InputUnit of
    1: W := Input; // W
    2: W := Input / 3.6; // kJ/h
    3: W := Input * 1.163; // kcal/h
    4: W := Input * 745.7; // hp
    5: W := Input * 1000; // kW
  end;
  case OutputUnit of
    1: PowerC := W; // W
    2: PowerC := W * 3.6; // kJ/h
    3: PowerC := W / 1.163; // kcal/h
    4: PowerC := W / 745.7; // hp
    5: PowerC := W / 1000; // kW
  end;
end;
end.