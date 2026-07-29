import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.IceCoreProxy
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.IsotopicPaleothermometry
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.OrbitalForcing

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure ClimateStateTransitionPackage {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} {R : IsotopicPaleothermometryPackage Q} {O : OrbitalForcingPackage} where
  glacialInterglacialCycle : Prop
  dansgaardOeschgerEvent : Prop
  heinrichEvent : Prop
  abruptTransitionMechanism : Prop
  bipolarSeesaw : Prop

structure ClimateStateTransitionEvidence {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} {R : IsotopicPaleothermometryPackage Q} {O : OrbitalForcingPackage} (S : ClimateStateTransitionPackage R O) where
  glacialInterglacialCycleClosed : S.glacialInterglacialCycle
  dansgaardOeschgerEventClosed : S.dansgaardOeschgerEvent
  heinrichEventClosed : S.heinrichEvent
  abruptTransitionMechanismClosed : S.abruptTransitionMechanism
  bipolarSeesawClosed : S.bipolarSeesaw

def ClimateStateTransitionClosed {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} {R : IsotopicPaleothermometryPackage Q} {O : OrbitalForcingPackage} (S : ClimateStateTransitionPackage R O) : Prop :=
  S.glacialInterglacialCycle ∧ S.dansgaardOeschgerEvent ∧ S.heinrichEvent ∧ S.abruptTransitionMechanism ∧ S.bipolarSeesaw

theorem climate_state_transition_closed_from_evidence {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} {R : IsotopicPaleothermometryPackage Q} {O : OrbitalForcingPackage} (S : ClimateStateTransitionPackage R O) (E : ClimateStateTransitionEvidence S) : ClimateStateTransitionClosed S := by
  exact And.intro E.glacialInterglacialCycleClosed
    (And.intro E.dansgaardOeschgerEventClosed
      (And.intro E.heinrichEventClosed
        (And.intro E.abruptTransitionMechanismClosed E.bipolarSeesawClosed)))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
