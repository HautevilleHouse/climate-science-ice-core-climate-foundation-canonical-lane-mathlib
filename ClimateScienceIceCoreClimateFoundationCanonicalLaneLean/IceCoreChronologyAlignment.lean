import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreChronologyPackage where
  coreAges : List ℝ
  gasAges : List ℝ
  depthAgeModel : ℝ → ℝ
  alignmentOffset : ℝ

structure ChronologyAlignmentEvidence (C : IceCoreChronologyPackage) where
  depthAgeModelConsistent : ∀ d : ℝ, C.depthAgeModel d = 2024.0 - d * 0.1
  offsetPositive : C.alignmentOffset > 0

def ChronologyAlignmentClosed (C : IceCoreChronologyPackage) : Prop :=
  (∀ d : ℝ, C.depthAgeModel d = 2024.0 - d * 0.1) ∧ C.alignmentOffset > 0

theorem chronology_alignment_closed_from_evidence
    (C : IceCoreChronologyPackage)
    (E : ChronologyAlignmentEvidence C) : ChronologyAlignmentClosed C := by
  exact And.intro E.depthAgeModelConsistent E.offsetPositive

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse