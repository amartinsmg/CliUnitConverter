unit Calculate;

interface

function Convert(units: Array of Real; inputUnit, outputUnit: Integer; value: Real): Real;
function Length(inputUnit, outputUnit: Integer; value: Real) :Real;
function Area(inputUnit, outputUnit: Integer; value: Real) :Real;
function Volume(inputUnit, outputUnit: Integer; value: Real) :Real;
function Mass(inputUnit, outputUnit: Integer; value: Real) :Real;
function Pressure(inputUnit, outputUnit: Integer; value: Real) :Real;
function Time(inputUnit, outputUnit: Integer; value: Real) :Real;
function Speed(inputUnit, outputUnit: Integer; value: Real) :Real;
function Acceleration(inputUnit, outputUnit: Integer; value: Real) :Real;
function Force(inputUnit, outputUnit: Integer; value: Real) :Real;
function Temperature(inputUnit, outputUnit: Integer; value: Real) :Real;
function Energy(inputUnit, outputUnit: Integer; value: Real) :Real;
function Power(inputUnit, outputUnit: Integer; value: Real) :Real;

implementation

function Convert(units: Array of Real; inputUnit, outputUnit: Integer; value: Real): Real;
var intermediary, result: Real;
begin
  intermediary := value / units[inputUnit - 1];
  result := intermediary * units[outputUnit - 1];
  Convert := result;
end;

function Length(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..7] of Real =
  (1 (* m *),
  1000 (* mm *),
  100 (* cm *),
  39.370 (* in *),
  3.28  (* ft *),
  1E-3 (* km *),
  6.21E-4 (* mi *),
  5.4E-4 (* nmi *));
begin
  Length := Convert(units, inputUnit, outputUnit, value);
end;

function Area(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..5] of Real =
  (1 (* m2 *),
  1550 (* in2 *),
  10.7639  (* ft2 *),
  1E-4  (* ha *),
  1E-6 (* km2 *),
  3.861E-7 (* mi2 *));
begin
  Area := Convert(units, inputUnit, outputUnit, value);
end;

function Volume(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..6] of Real =
  (1 (* m3 *),
  1E+6 (* mL *),
  61023.7 (* in3 *),
  35195.1 (* fl oz *),
  1000 (* L *),
  219.969  (* imp gal *),
  35.3147 (* ft3 *));
begin
  Volume := Convert(units, inputUnit, outputUnit, value);
end;

function Mass(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..4] of Real =
  (1 (* kg *),
  1E+6 (* mg *),
  1000 (* g *),
  35.274 (* oz *),
  2.20462 (* lb *));
begin
  Mass := Convert(units, inputUnit, outputUnit, value);
end;

function Pressure(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..3] of Real =
  (1 (* Pa *),
  1.45038E-4 (* psi *),
  1E-5 (* bar *),
  9.8692e-6 (* atm *));
begin
  Pressure := Convert(units, inputUnit, outputUnit, value);
end;

function Time(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..4] of Real =
  (1 (* s *),
  0.01667 (* min *),
  2.778E-4 (* h *),
  1.1574E-5 (* d *),
  3.171E-8 (* y *));
begin
  Time := Convert(units, inputUnit, outputUnit, value);
end;

function Speed(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..4] of Real =
  (1 (* m/s *),
  196.8503937 (* ft/min *),
  3.6 (* km/h *),
  2.23694 (* mi/h *),
  1.94384 (* kn *));
begin
  Speed := Convert(units, inputUnit, outputUnit, value);
end;

function Acceleration(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..4] of Real =
  (1 (* m/s2 *),
  3.6 (* km/hs *),
  3.280839895 (* ft/s2 *),
  1.94 (* kn/s *),
  0.1019716213 (* G *));
begin
  Acceleration := Convert(units, inputUnit, outputUnit, value);
end;

function Force(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..3] of Real =
  (1 (* N *),
  1E+5 (* dyn *),
  0.2248089431 (* lbf *),
  0.1019716213 (* kgf *));
begin
  Force := Convert(units, inputUnit, outputUnit, value);
end;

function Temperature(inputUnit, outputUnit: Integer; value: Real) :Real;
var K: Real;
begin
  case inputUnit of
    1: K := value; // kelvin
    2: K := value + 273; // celsius
    3: K := (value - 32) * 5/9 + 273 ; // fahrenheit
  end;
  case outputUnit of
    1: Temperature := K; // kelvin
    2: Temperature := K * 3.6; // celsius
    3: Temperature := (K - 273) * 9/5 + 32; // fahrenheit
  end;
end;

function Energy(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..3] of Real =
  (1 (* J *),
  0.0001 (* kJ *),
  2.39006E-4 (* kcal *),
  2.7778e-7 (* kw/h *));
begin
  Energy := Convert(units, inputUnit, outputUnit, value);
end;

function Power(inputUnit, outputUnit: Integer; value: Real) :Real;
var units: Array[0..4] of Real =
  (1 (* W *),
  3.6 (* kJ/h *),
  0.8598452279 (* kcal/h *),
  1.3410221E-3 (* hp *),
  0.001 (* kW *));
begin
  Power := Convert(units, inputUnit, outputUnit, value);
end;

end.