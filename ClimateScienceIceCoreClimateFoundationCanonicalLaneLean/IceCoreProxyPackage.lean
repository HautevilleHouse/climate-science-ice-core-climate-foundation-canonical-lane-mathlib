import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreProxyPackage where
  coreSite : String
  depthInterval : Type u
  proxyData : depthInterval → Float
  ageModel : depthInterval → Float
  measurementUncertainty : Float

structure IceCoreProxyEvidence (P : IceCoreProxyPackage) where
  proxyDataCalibrated : Prop
  ageModelValidated : Prop
  measurementUncertaintyBounds : P.measurementUncertainty > 0
  proxyDataCalibratedTerm : proxyDataCalibrated
  ageModelValidatedTerm : ageModelValidated

def IceCoreProxyClosed (P : IceCoreProxyPackage) : Prop :=
  P.measurementUncertainty > 0

theorem ice_core_proxy_closed_from_evidence (P : IceCoreProxyPackage)
    (E : IceCoreProxyEvidence P) : IceCoreProxyClosed P := by
  exact E.measurementUncertaintyBounds

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse