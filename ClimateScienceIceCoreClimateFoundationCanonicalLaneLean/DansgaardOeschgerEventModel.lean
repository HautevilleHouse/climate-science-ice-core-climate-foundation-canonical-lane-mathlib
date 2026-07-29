import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure DansgaardOeschgerEvent where
  eventNumber : ℕ
  onsetRate : ℝ
  magnitudeDeltaT : ℝ
  durationYears : ℕ

structure DOEventSequencePackage where
  events : List DansgaardOeschgerEvent
  greenlandInterstadial : Prop
  bondCyclePhase : Prop

structure DOEventSequenceEvidence (D : DOEventSequencePackage) where
  eventCountNonempty : D.events ≠ []
  interstadialIdentified : D.greenlandInterstadial

def DOEventSequenceClosed (D : DOEventSequencePackage) : Prop :=
  D.events ≠ [] ∧ D.greenlandInterstadial

theorem do_event_sequence_closed_from_evidence
    (D : DOEventSequencePackage)
    (E : DOEventSequenceEvidence D) : DOEventSequenceClosed D := by
  exact And.intro E.eventCountNonempty E.interstadialIdentified

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse