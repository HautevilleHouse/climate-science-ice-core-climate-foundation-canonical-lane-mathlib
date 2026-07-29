import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure PaleoTemperatureEquationPackage where
  delta18O : Float
  delta2H : Float
  temperatureAnomaly : Float
  calibrationSlope : Float
  calibrationIntercept : Float
  formulaValid : Prop

structure PaleoTemperatureEquationEvidence
    (P : PaleoTemperatureEquationPackage) where
  formulaValidClosed : P.formulaValid
  delta18OMeasured : P.delta18O > -50 ∧ P.delta18O < 10
  delta2HMeasured : P.delta2H > -400 ∧ P.delta2H < 50
  calibrationDataValid : P.calibrationSlope ≠ 0

def PaleoTemperatureEquationClosed (P : PaleoTemperatureEquationPackage) : Prop :=
  P.formulaValid ∧ P.calibrationSlope ≠ 0 ∧ P.delta18O > -50 ∧ P.delta18O < 10 ∧
  P.delta2H > -400 ∧ P.delta2H < 50

theorem paleo_temperature_equation_closed_from_evidence
    (P : PaleoTemperatureEquationPackage)
    (E : PaleoTemperatureEquationEvidence P) : PaleoTemperatureEquationClosed P := by
  exact And.intro E.formulaValidClosed
    (And.intro E.calibrationDataValid
      (And.intro E.delta18OMeasured.1
        (And.intro E.delta18OMeasured.2
          (And.intro E.delta2HMeasured.1 E.delta2HMeasured.2))))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse