import Elementary

extension MarkupAttribute {
    /// Sets the CSS `animation` property.
    public static func animation(_ value: TWTAnimation) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
