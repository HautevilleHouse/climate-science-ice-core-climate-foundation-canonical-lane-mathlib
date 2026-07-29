import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.IceCoreProxy

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IsotopicPaleothermometryPackage {P : IceCoreProxyPackage} (Q : IceCoreProxyClosed P := by infer_instance) where
  temperatureCalibration : Prop
  spatialGradient : Prop
  seasonalCorrection : Prop
  uncertaintyModel : Prop

structure IsotopicPaleothermometryEvidence {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} (R : IsotopicPaleothermometryPackage Q) where
  temperatureCalibrationClosed : R.temperatureCalibration
  spatialGradientClosed : R.spatialGradient
  seasonalCorrectionClosed : R.seasonalCorrection
  uncertaintyModelClosed : R.uncertaintyModel

def IsotopicPaleothermometryClosed {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} (R : IsotopicPaleothermometryPackage Q) : Prop :=
  R.temperatureCalibration ∧ R.spatialGradient ∧ R.seasonalCorrection ∧ R.uncertaintyModel

theorem isotopic_paleothermometry_closed_from_evidence {P : IceCoreProxyPackage} {Q : IceCoreProxyClosed P} (R : IsotopicPaleothermometryPackage Q) (E : IsotopicPaleothermometryEvidence R) : IsotopicPaleothermometryClosed R := by
  exact And.intro E.temperatureCalibrationClosed
    (And.intro E.spatialGradientClosed
      (And.intro E.seasonalCorrectionClosed E.uncertaintyModelClosed))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
