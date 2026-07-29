import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure OrbitalForcingPackage where
  eccentricityParameter : Prop
  obliquityParameter : Prop
  precessionParameter : Prop
  insolationResponse : Prop
  spectralCoherency : Prop

structure OrbitalForcingEvidence (O : OrbitalForcingPackage) where
  eccentricityParameterClosed : O.eccentricityParameter
  obliquityParameterClosed : O.obliquityParameter
  precessionParameterClosed : O.precessionParameter
  insolationResponseClosed : O.insolationResponse
  spectralCoherencyClosed : O.spectralCoherency

def OrbitalForcingClosed (O : OrbitalForcingPackage) : Prop :=
  O.eccentricityParameter ∧ O.obliquityParameter ∧ O.precessionParameter ∧ O.insolationResponse ∧ O.spectralCoherency

theorem orbital_forcing_closed_from_evidence (O : OrbitalForcingPackage) (E : OrbitalForcingEvidence O) : OrbitalForcingClosed O := by
  exact And.intro E.eccentricityParameterClosed
    (And.intro E.obliquityParameterClosed
      (And.intro E.precessionParameterClosed
        (And.intro E.insolationResponseClosed E.spectralCoherencyClosed)))

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse
