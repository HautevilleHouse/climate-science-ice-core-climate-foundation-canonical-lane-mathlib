import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  rapidWarmingAmplitude : Float
  coolingBaseline : Float
  durationRapidPhase : Float
  durationGradualPhase : Float
  eventIdentified : Prop
  recurrencePattern : Prop

structure DansgaardOeschgerEventEvidence
    (D : DansgaardOeschgerEventPackage) where
  eventIdentifiedClosed : D.eventIdentified
  rapidWarmingPositive : D.rapidWarmingAmplitude > 0
  coolingBaselineNegative : D.coolingBaseline < 0
  durationRapidPhasePositive : D.durationRapidPhase > 0
  durationGradualPhasePositive : D.durationGradualPhase > 0
  recurrencePatternClosed : D.recurrencePattern

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  D.eventIdentified ∧ D.rapidWarmingAmplitude > 0 ∧ D.coolingBaseline < 0 ∧
  D.durationRapidPhase > 0 ∧ D.durationGradualPhase > 0 ∧ D.recurrencePattern

theorem dansgaard_oeschger_event_closed_from_evidence
    (D : DansgaardOeschgerEventPackage)
    (E : DansgaardOeschgerEventEvidence D) : DansgaardOeschgerEventClosed D := by
  exact And.intro E.eventIdentifiedClosed
    (And.intro E.rapidWarmingPositive
      (And.intro E.coolingBaselineNegative
        (And.intro E.durationRapidPhasePositive
          (And.intro E.durationGradualPhasePositive E.recurrencePatternClosed))))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse