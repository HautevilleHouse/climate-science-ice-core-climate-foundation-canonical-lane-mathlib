import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceIceCoreClimateFoundationCanonicalLaneLean

structure IceCoreDepthInterval where
  depthUpper : Float
  depthLower : Float

def depthIntervalMid (I : IceCoreDepthInterval) : Float :=
  (I.depthUpper + I.depthLower) / 2.0

structure IceCoreSample where
  depthInterval : IceCoreDepthInterval
  isotopicRatioDeltaD : Float
  isotopicRatioDelta18O : Float
  deuteriumExcess : Float

def sampleAgeEstimate (sample : IceCoreSample) (accumulationRate : Float) (depthDensity : Float) : Float :=
  depthIntervalMid sample.depthInterval / (accumulationRate * depthDensity)

end ClimateScienceIceCoreClimateFoundationCanonicalLaneLean
end HautevilleHouse