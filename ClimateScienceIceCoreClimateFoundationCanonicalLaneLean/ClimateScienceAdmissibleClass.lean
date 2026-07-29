import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreObject where
  coreIdentifier : String
  depthIntervalMeters : ℕ × ℕ
  ageKa : Float
  isotopeRatioDelta : Float
  temperatureProxy : Float

def IceCoreClosed (O : IceCoreObject) : Prop :=
  O.temperatureProxy > 0

structure AdmissibleClimateClass where
  object : IceCoreObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClimateClass) : Prop :=
  IceCoreClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse