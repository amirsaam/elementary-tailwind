import Elementary

extension MarkupAttribute {
    /// Hides an element visually but keeps it accessible to screen readers.
    public static func screenReader(_ value: TWTScreenReader, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `forced-color-adjust` property.
    public static func forcedColorAdjust(
        _ value: TWTForcedColorAdjust,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
