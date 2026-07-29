import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClimateClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClimateClass) :
    gateClosed A :=
  A.gateWitness

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse