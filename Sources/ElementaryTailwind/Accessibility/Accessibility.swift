import Elementary

extension MarkupAttribute {
    /// Hides an element visually but keeps it accessible to screen readers.
    public static func screenReader(_ value: TWTScreenReader) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `forced-color-adjust` property.
    public static func forcedColorAdjust(_ value: TWTForcedColorAdjust) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
