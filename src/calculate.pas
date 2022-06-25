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
function Power(InputUnit, OutputUnit: LongInt; Input: Real) :Real;

implementation

function Length(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m: Real;
begin
  case InputUnit of
    1: m := Input; // m
    2: m := Input / 1000; // mm
    3: m := Input / 100; // cm
    4: m := Input / 39.37007; // in
    5: m := Input / 3.28084; // ft
    6: m := Input / 1E-3; // km
    7: m := Input / 6.21371E-4; // mi
    8: m := Input / 5.39957E-4; // nmi
  end;
  case OutputUnit of
    1: Length := m; // m
    2: Length := m * 1000; // mm
    3: Length := m * 100; // cm
    4: Length := m * 39.37007; // in
    5: Length := m * 3.28084; // ft
    6: Length := m * 1E-3; // km
    7: Length := m * 6.21371E-4; // mi
    8: Length := m * 5.39957E-4; // nmi
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
    5: m2 := Input / 1E-4; // ha
    6: m2 := Input / 1E-6; // km2
    7: m2 := Input / 3.86102E-7 ; // mi2
  end;
  case OutputUnit of
    1: Area := m2; // m2
    2: Area := m2 * 1E+4; // cm2
    3: Area := m2 * 1550; // in2
    4: Area := m2 * 10.76391; // ft2
    5: Area := m2 * 1E-4; // ha
    6: Area := m2 * 1E-6; // km2
    7: Area := m2 * 3.86102E-7 ; // mi2
  end;
end;

function Volume(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m3: Real;
begin
  case InputUnit of
    1: m3 := Input; // m3
    2: m3 := Input / 1E+6; // mL
    3: m3 := Input / 61023.74409; // in3
    4: m3 := Input / 35195.02270; // fl oz
    5: m3 := Input / 1000; // L
    6: m3 := Input / 219.96924 ; // imp gal
    7: m3 := Input / 35.31467; // ft3
  end;
  case OutputUnit of
    1: Volume := m3; // m3
    2: Volume := m3 * 1E+6; // mL
    3: Volume := m3 * 61023.74409; // in3
    4: Volume := m3 * 35195.02270; // fl oz
    5: Volume := m3 * 1000; // L
    6: Volume := m3 * 219.96924 ; // imp gal
    7: Volume := m3 * 35.31467; // ft3
  end;
end;

function Mass(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var kg: Real;
begin
  case InputUnit of
    1: kg := Input; // kg
    2: kg := Input / 1E+6; // mg
    3: kg := Input / 1000; // g
    4: kg := Input / 35.27396; // oz
    5: kg := Input / 2.20462; // lb
    6: kg := Input / 1E-3; // t
  end;
  case OutputUnit of
    1: Mass := kg; // kg
    2: Mass := kg * 1E+6; // mg
    3: Mass := kg * 1000; // g
    4: Mass := kg * 35.27396; // oz
    5: Mass := kg * 2.20462; // lb
    6: Mass := kg * 1E-3; // t
  end;
end;

function Pressure(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var Pa : Real;
begin
  case InputUnit of
    1: Pa := Input; // Pa
    2: Pa := Input / 7.50062E-3; // mmHg
    3: Pa := Input / 1.45038E-4; // psi
    4: Pa := Input / 1E-5; // bar
    5: Pa := Input / 9.86932e-6; // atm
  end;
  case OutputUnit of
    1: Pressure := Pa; // Pa
    2: Pressure := Pa * 7.50062E-3; // mmHg
    3: Pressure := Pa * 1.45038E-4; // psi
    4: Pressure := Pa * 1E-5; // bar
    5: Pressure := Pa * 9.86923e-6; // atm
  end;
end;

function Time(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var s: Real;
begin
  case InputUnit of
    1: s := Input; // s
    2: s := Input / 0.01667; // min
    3: s := Input / 2.77778E-4; // h
    4: s := Input / 1.15741E-5; // d
    5: s := Input / 3.17198E-8; // y
  end;
  case OutputUnit of
    1: Time := s; // s
    2: Time := s * 0.01667; // min
    3: Time := s * 2.77778E-4; // h
    4: Time := s * 1.15741E-5; // d
    5: Time := s * 3.17198E-8; // y
  end;
end;

function Speed(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var m_s: Real;
begin
  case InputUnit of
    1: m_s := Input; // m/s
    2: m_s := Input / 196.85039; // ft/min
    3: m_s := Input / 3.6; // km/h
    4: m_s := Input / 2.23694; // mi/h
    5: m_s := Input / 1.94384; // kn
  end;
  case OutputUnit of
    1: Speed := m_s; // m/s
    2: Speed := m_s * 196.85039; // ft/min
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
    2: m_s2 := Input / 196.85039; // ft/min*s
    3: m_s2 := Input / 3.6; // km/h*s
    4: m_s2 := Input / 2.23694; // mi/h*s
    5: m_s2 := Input / 1.94384; // kn/s
    6: m_s2 := Input / 0.10197; // G
  end;
  case OutputUnit of
    1: Acceleration := m_s2; // m/s2
    2: Acceleration := m_s2 * 196.85039; // ft/min*s
    3: Acceleration := m_s2 * 3.6; // km/h*s
    4: Acceleration := m_s2 * 2.23694; // mi/h*s
    5: Acceleration := m_s2 * 1.94384; // kn/s
    6: Acceleration := m_s2 * 0.10197; // G
  end;
end;

function Force(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var N : Real;
begin
  case InputUnit of
    1: N := Input; // N
    2: N := Input / 1E+5; // dyn
    3: N := Input / 0.22480; // lbf
    4: N := Input / 0.10197; // kgf
  end;
  case OutputUnit of
    1: Force := N; // N
    2: Force := N * 1E+5; // dyn
    3: Force := N * 0.22480; // lbf
    4: Force := N * 0.10197; // kgf
  end;
end;

function Temperature(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var K: Real;
begin
  case InputUnit of
    1: K := Input; // K
    2: K := Input + 273; // C
    3: K := (Input - 32) * 5/9 + 273 ; // F
  end;
  case OutputUnit of
    1: Temperature := K; // K
    2: Temperature := K - 273; // C
    3: Temperature := (K - 273) * 9/5 + 32; // F
  end;
end;

function Energy(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var J : Real;
begin
  case InputUnit of
    1: J := Input; // J
    2: J := Input / 0.001; // kJ
    3: J := Input / 2.39006E-4; // kcal
    4: J := Input / 2.77778E-7; // kW/h
  end;
  case OutputUnit of
    1: Energy := J; // J
    2: Energy := J * 0.001; // kJ
    3: Energy := J * 2.39006E-4; // kcal
    4: Energy := J * 2.77778E-7; // kW/h
  end;
end;

function Power(InputUnit, OutputUnit: LongInt; Input: Real) :Real;
var W : Real;
begin
  case InputUnit of
    1: W := Input; // W
    2: W := Input / 3.6; // kJ/h
    3: W := Input / 0.85985; // kcal/h
    4: W := Input / 1.34102E-3; // hp
    5: W := Input / 0.001; // kW
  end;
  case OutputUnit of
    1: Power := W; // W
    2: Power := W * 3.6; // kJ/h
    3: Power := W * 0.85985; // kcal/h
    4: Power := W * 1.34102E-3; // hp
    5: Power := W * 0.001; // kW
  end;
end;
end.