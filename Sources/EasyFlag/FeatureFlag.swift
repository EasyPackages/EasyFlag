public protocol FeatureFlag {
    func isOn(_ flag: String) -> Bool
    
    func replaceFlag(_ flag: String, with value: Bool)
}
