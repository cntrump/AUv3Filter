/*
See LICENSE folder for this sample’s licensing information.

Abstract:
AUv3FilterDemoViewController is the app extension's principal class, responsible for creating both the audio unit and its view.
*/

import CoreAudioKit

extension AUv3FilterDemoViewController: AUAudioUnitFactory {
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        audioUnit = try AUv3FilterDemo(componentDescription: componentDescription, options: [])
        return audioUnit!
    }
}
