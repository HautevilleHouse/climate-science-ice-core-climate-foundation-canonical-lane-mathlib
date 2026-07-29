import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

def ConstrainedClimateFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_foundation_endgame (A : AdmissibleClass) : ConstrainedClimateFoundationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
