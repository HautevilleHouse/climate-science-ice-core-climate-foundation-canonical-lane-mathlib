import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreProxyPackage where
  deltaO18Record : Prop
  deuteriumRecord : Prop
  accumulationRate : Prop
  gasFractionation : Prop
  ageDepthModel : Prop

structure IceCoreProxyEvidence (P : IceCoreProxyPackage) where
  deltaO18RecordClosed : P.deltaO18Record
  deuteriumRecordClosed : P.deuteriumRecord
  accumulationRateClosed : P.accumulationRate
  gasFractionationClosed : P.gasFractionation
  ageDepthModelClosed : P.ageDepthModel

def IceCoreProxyClosed (P : IceCoreProxyPackage) : Prop :=
  P.deltaO18Record ∧ P.deuteriumRecord ∧ P.accumulationRate ∧ P.gasFractionation ∧ P.ageDepthModel

theorem ice_core_proxy_closed_from_evidence (P : IceCoreProxyPackage) (E : IceCoreProxyEvidence P) : IceCoreProxyClosed P := by
  exact And.intro E.deltaO18RecordClosed
    (And.intro E.deuteriumRecordClosed
      (And.intro E.accumulationRateClosed
        (And.intro E.gasFractionationClosed E.ageDepthModelClosed)))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
