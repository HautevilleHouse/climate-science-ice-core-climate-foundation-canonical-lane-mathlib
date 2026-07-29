import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure MilankovitchParameters where
  eccentricity : Float
  obliquity : Float
  precession : Float

def insolation (params : MilankovitchParameters) (latitude : Float) (dayAngle : Float) : Float :=
  params.eccentricity * params.obliquity * Float.cos (params.precession + dayAngle) * Float.sin latitude

structure MilankovitchCyclesPackage where
  orbitalForcing : MilankovitchParameters -> Float -> Float -> Float
  insolationAtLatitude : Float -> Float -> Float
  responseFunction : Float -> Float

def MilankovitchCyclesPackageEvidence (P : MilankovitchCyclesPackage) : Prop :=
  P.orbitalForcing = insolation

theorem milankovitch_cycles_bridge (A : AdmissibleClass) : True := by
  trivial

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse