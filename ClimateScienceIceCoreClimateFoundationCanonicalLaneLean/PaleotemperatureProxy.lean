import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.ClimateScienceAdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IsotopicPaleothermometerPackage where
  isotope18O : Float
  isotope16O : Float
  deltaValue : Float
  calibrationSlope : Float
  temperatureEstimate : Float

def delta_from_ratio (ratio : Float) : Float :=
  (ratio / 0.0020052 - 1) * 1000

def temperature_from_delta (delta : Float) : Float :=
  delta * 0.12

def paleotemperature_closed (P : IsotopicPaleothermometerPackage) : Prop :=
  P.deltaValue = delta_from_ratio (P.isotope18O / P.isotope16O) ∧
  abs (P.temperatureEstimate - temperature_from_delta P.deltaValue) < 0.5

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse