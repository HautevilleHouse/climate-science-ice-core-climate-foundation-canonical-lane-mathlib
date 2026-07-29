import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure DansgaardOeschgerEvent where
  temperatureAnomaly : Float
  durationYears : Float
  startYearBP : Float
  amplitude : Float

def abruptTransition (event : DansgaardOeschgerEvent) : Bool :=
  event.durationYears < 100.0

structure DansgaardOeschgerPackage where
  eventSequence : List DansgaardOeschgerEvent
  meanRecurrenceInterval : Float
  lastEventStart : Float

def DansgaardOeschgerPackageEvidence (P : DansgaardOeschgerPackage) : Prop :=
  P.meanRecurrenceInterval > 0.0 ∧ P.lastEventStart > 0.0

theorem dansgaard_oeschger_gate (A : AdmissibleClass) : True := by
  trivial

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse