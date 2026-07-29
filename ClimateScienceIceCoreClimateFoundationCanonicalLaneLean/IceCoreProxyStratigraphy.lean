import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreSite (S : Type) where
  location : S
  accumulationRate : ℝ
  temperatureProxy : ℝ

structure IsotopicPaleothermometryPackage where
  delta18O : ℝ
  deltaD : ℝ
  temperatureReconstruction : ℝ
  deuteriumExcess : ℝ

structure IceCoreProxyStratigraphyPackage where
  coreDepth : ℕ
  ageModel : ℕ → ℝ
  isotopicProfile : ℕ → IsotopicPaleothermometryPackage
  annualLayerCounting : Prop

structure ProxyStratigraphyEvidence (P : IceCoreProxyStratigraphyPackage) where
  annualLayerCountingClosed : P.annualLayerCounting

def ProxyStratigraphyClosed (P : IceCoreProxyStratigraphyPackage) : Prop :=
  P.annualLayerCounting

theorem proxy_stratigraphy_closed_from_evidence
    (P : IceCoreProxyStratigraphyPackage)
    (E : ProxyStratigraphyEvidence P) : ProxyStratigraphyClosed P := by
  exact E.annualLayerCountingClosed

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse