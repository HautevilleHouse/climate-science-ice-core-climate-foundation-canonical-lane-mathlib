import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure EnergyBalanceModelPackage where
  radiativeForcing : Prop
  albedoFeedback : Prop
  iceAlbedoEffect : Prop
  greenhouseGasConcentration : Prop
  equilibriumTemperature : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  radiativeForcingClosed : E.radiativeForcing
  albedoFeedbackClosed : E.albedoFeedback
  iceAlbedoEffectClosed : E.iceAlbedoEffect
  greenhouseGasConcentrationClosed : E.greenhouseGasConcentration
  equilibriumTemperatureClosed : E.equilibriumTemperature

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.radiativeForcing ∧ E.albedoFeedback ∧ E.iceAlbedoEffect ∧ E.greenhouseGasConcentration ∧ E.equilibriumTemperature

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.radiativeForcingClosed
    (And.intro Ev.albedoFeedbackClosed
      (And.intro Ev.iceAlbedoEffectClosed
        (And.intro Ev.greenhouseGasConcentrationClosed Ev.equilibriumTemperatureClosed)))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
