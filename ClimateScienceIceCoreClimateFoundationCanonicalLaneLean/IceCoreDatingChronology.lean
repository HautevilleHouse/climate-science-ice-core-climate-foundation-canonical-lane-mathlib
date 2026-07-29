import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreLayeringPackage where
  annualLayerCount : ℕ
  layerThickness : ℝ → ℝ
  depthRange : ℝ × ℝ
  accumulationRate : ℝ

structure IceCoreDatingPackage (L : IceCoreLayeringPackage) where
  ageDepthModel : ℝ → ℝ
  countedYears : ℕ
  volcanicHorizons : List ℝ
  tiePoints : List (ℝ × ℝ)

structure IceCoreDatingEvidence {L : IceCoreLayeringPackage} (D : IceCoreDatingPackage L) where
  ageModelConsistent : D.ageDepthModel 0 = 0
  layerCountMatches : D.countedYears = L.annualLayerCount
  tiePointsClosed : ∀ (depth, age) ∈ D.tiePoints, age = D.ageDepthModel depth

def IceCoreDatingClosed {L : IceCoreLayeringPackage} (D : IceCoreDatingPackage L) : Prop :=
  D.ageDepthModel 0 = 0 ∧ D.countedYears = L.annualLayerCount ∧
  ∀ (depth, age) ∈ D.tiePoints, age = D.ageDepthModel depth

theorem ice_core_dating_closed_from_evidence
    {L : IceCoreLayeringPackage} (D : IceCoreDatingPackage L)
    (E : IceCoreDatingEvidence D) : IceCoreDatingClosed D :=
by
  exact And.intro E.ageModelConsistent
    (And.intro E.layerCountMatches E.tiePointsClosed)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse