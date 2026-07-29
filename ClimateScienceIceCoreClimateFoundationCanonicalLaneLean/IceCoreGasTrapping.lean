import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

struct ClosedBubbleFormationPackage where
  bubbleCloseOffDepth : ℝ
  firnDensity : ℝ → ℝ
  closeOffPoreVolume : ℝ
  atmosphericPressure : ℝ
  temperature : ℝ

struct GasFractionationPackage (B : ClosedBubbleFormationPackage) where
  gravitationalFractionation : ℝ
  thermalFractionation : ℝ
  excessAir : ℝ
  delta15N : ℝ
  delta40Ar : ℝ

struct GasTrappingEvidence {B : ClosedBubbleFormationPackage} (G : GasFractionationPackage B) where
  bubbleCloseOffDepthClosed : B.bubbleCloseOffDepth > 50
  delta15NConsistent : G.delta15N > 0
  delta40ArConsistent : G.delta40Ar > 0
  excessAirClosed : G.excessAir < B.closeOffPoreVolume

def GasTrappingClosed {B : ClosedBubbleFormationPackage} (G : GasFractionationPackage B) : Prop :=
  B.bubbleCloseOffDepth > 50 ∧ G.delta15N > 0 ∧ G.delta40Ar > 0 ∧ G.excessAir < B.closeOffPoreVolume

theorem gas_trapping_closed_from_evidence
    {B : ClosedBubbleFormationPackage} (G : GasFractionationPackage B)
    (Ev : GasTrappingEvidence G) : GasTrappingClosed G :=
by
  exact And.intro Ev.bubbleCloseOffDepthClosed
    (And.intro Ev.delta15NConsistent
      (And.intro Ev.delta40ArConsistent Ev.excessAirClosed))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse