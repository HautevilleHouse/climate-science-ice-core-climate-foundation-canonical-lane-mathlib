import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : IceCoreAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IceCoreWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse