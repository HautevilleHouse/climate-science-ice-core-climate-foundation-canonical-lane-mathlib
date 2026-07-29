import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure EnergyBalanceBoxModelPackage where
  solarConstant : ℝ
  albedo : ℝ
  greenhouseForcing : ℝ
  surfaceTemperature : ℝ
  equilibriumTemperature : ℝ

structure BoxModelEvidence (E : EnergyBalanceBoxModelPackage) where
  temperatureConverges : E.surfaceTemperature = E.equilibriumTemperature
  forcingPositive : E.greenhouseForcing > 0

def BoxModelClosed (E : EnergyBalanceBoxModelPackage) : Prop :=
  E.surfaceTemperature = E.equilibriumTemperature ∧ E.greenhouseForcing > 0

theorem box_model_closed_from_evidence
    (E : EnergyBalanceBoxModelPackage)
    (Ev : BoxModelEvidence E) : BoxModelClosed E := by
  exact And.intro Ev.temperatureConverges Ev.forcingPositive

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse