import Foundation

import EasyFlag

public final class PlistFileFeatureFlag: FeatureFlag {
    private var featureFlags: [String: Bool]?
    
    public init(bundle: Bundle = .main, decoder: PropertyListDecoder = PropertyListDecoder()) {
        let featureFlagFileName = "FeatureFlag"
        let featureFlagFileExtension = "plist"
        let featureFlagFileUrl = bundle.url(
            forResource: featureFlagFileName,
            withExtension: featureFlagFileExtension
        )
        featureFlags = featureFlagFileUrl
            .flatMap { url in try? Data(contentsOf: url) }
            .flatMap { data in try? decoder.decode([String: Bool].self, from: data) }
    }
    
    public func isOn(_ flag: String) -> Bool {
        featureFlags?[flag] ?? false
    }
    
    public func replaceFlag(_ flag: String, with value: Bool) {
        featureFlags?[flag] = value
    }
}
