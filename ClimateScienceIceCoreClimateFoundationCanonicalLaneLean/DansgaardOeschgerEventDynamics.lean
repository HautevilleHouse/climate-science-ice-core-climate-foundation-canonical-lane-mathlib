import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure DansgaardOeschgerEventPackage where
  abruptWarmingRate : ℝ
  eventDuration : ℝ
  iceCoreDepthRange : ℝ × ℝ
  interstadialPeriod : ℝ

structure DansgaardOeschgerEventEvidence (D : DansgaardOeschgerEventPackage) where
  abruptWarmingDetected : D.abruptWarmingRate > 10
  eventDurationClosed : D.eventDuration > 0
  interstadialPeriodClosed : D.interstadialPeriod > 500

def DansgaardOeschgerEventClosed (D : DansgaardOeschgerEventPackage) : Prop :=
  D.abruptWarmingRate > 10 ∧ D.eventDuration > 0 ∧ D.interstadialPeriod > 500

theorem dansgaard_oeschger_event_closed_from_evidence
    (D : DansgaardOeschgerEventPackage) (E : DansgaardOeschgerEventEvidence D) :
    DansgaardOeschgerEventClosed D :=
by
  exact And.intro E.abruptWarmingDetected
    (And.intro E.eventDurationClosed E.interstadialPeriodClosed)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse