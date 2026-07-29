import HautevilleHouse.ClimateScienceIceCoreClimateFoundationCanonicalLaneLean.ClimateScienceAdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure OrbitalParameters where
  eccentricity : Float
  obliquity : Float
  precession : Float

structure InsolationCurve where
  latitude : Float
  season : String
  insolationValues : List Float

def eccentricity_cycle (e : Float) : Float :=
  e * 0.03

def obliquity_cycle (o : Float) : Float :=
  o * 0.5

def precession_cycle (p : Float) : Float :=
  p * 0.1

def milankovitch_closed (O : OrbitalParameters) (I : InsolationCurve) : Prop :=
  O.eccentricity > 0 ∧ O.obliquity > 0 ∧ O.precession > 0 ∧
  I.insolationValues.length = 1000

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse