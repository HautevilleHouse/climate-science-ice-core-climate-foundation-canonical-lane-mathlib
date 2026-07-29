import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure MilankovitchOrbitalForcingPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precessionIndex : ℝ
  summerInsolation65N : ℝ
  insolationAnomaly : ℝ

structure OrbitalForcingEvidence
    (M : MilankovitchOrbitalForcingPackage) where
  summerInsolationComputed : M.summerInsolation65N = M.eccentricity + M.obliquity - M.precessionIndex
  insolationAnomalyPositive : M.insolationAnomaly > 0

def OrbitalForcingClosed (M : MilankovitchOrbitalForcingPackage) : Prop :=
  M.summerInsolation65N = M.eccentricity + M.obliquity - M.precessionIndex ∧
  M.insolationAnomaly > 0

theorem orbital_forcing_closed_from_evidence
    (M : MilankovitchOrbitalForcingPackage)
    (E : OrbitalForcingEvidence M) : OrbitalForcingClosed M := by
  exact And.intro E.summerInsolationComputed E.insolationAnomalyPositive

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse