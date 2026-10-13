import Testing
import Photos

@testable import ExpoMediaLibrary

@Suite("MediaSubtypeNext")
struct MediaSubtypeNextTests {
  @Test(arguments: appleSubtypes)
  func `maps every Apple subtype to exactly one MediaSubtype and back`(phSubtype: PHAssetMediaSubtype) {
    let mapped = MediaSubtypeNext.from(phSubtype)

    #expect(mapped.count == 1)
    #expect(mapped.first?.toPHAssetMediaSubtype() == phSubtype)
  }
}

private let appleSubtypes: [PHAssetMediaSubtype] = [
  .photoPanorama,
  .photoHDR,
  .photoScreenshot,
  .photoLive,
  .photoDepthEffect,
  .photoAnimation,
  .spatialMedia,
  .videoStreamed,
  .videoHighFrameRate,
  .videoTimelapse,
  .videoScreenRecording,
  .videoCinematic,
]
