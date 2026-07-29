import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure MilankovitchOrbitalPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  summerInsolation : ℝ → ℝ

structure MilankovitchForcingPackage (O : MilankovitchOrbitalPackage) where
  eccentricityCyclePeriod : ℝ
  obliquityCyclePeriod : ℝ
  precessionCyclePeriod : ℝ
  insolationAnomaly : ℝ

structure MilankovitchForcingEvidence {O : MilankovitchOrbitalPackage} (F : MilankovitchForcingPackage O) where
  eccentricityCycleClosed : F.eccentricityCyclePeriod ≈ 100000
  obliquityCycleClosed : F.obliquityCyclePeriod ≈ 41000
  precessionCycleClosed : F.precessionCyclePeriod ≈ 23000
  insolationAnomalyClosed : F.insolationAnomaly > 0

def MilankovitchForcingClosed {O : MilankovitchOrbitalPackage} (F : MilankovitchForcingPackage O) : Prop :=
  F.eccentricityCyclePeriod ≈ 100000 ∧ F.obliquityCyclePeriod ≈ 41000 ∧
  F.precessionCyclePeriod ≈ 23000 ∧ F.insolationAnomaly > 0

theorem milankovitch_forcing_closed_from_evidence
    {O : MilankovitchOrbitalPackage} (F : MilankovitchForcingPackage O)
    (E : MilankovitchForcingEvidence F) : MilankovitchForcingClosed F :=
by
  exact And.intro E.eccentricityCycleClosed
    (And.intro E.obliquityCycleClosed
      (And.intro E.precessionCycleClosed E.insolationAnomalyClosed))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse