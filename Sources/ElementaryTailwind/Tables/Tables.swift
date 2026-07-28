import Elementary

extension MarkupAttribute {
    /// Sets whether table borders collapse into a single border or remain separate.
    /// Produces `border-*` classes (e.g. `border-collapse`, `border-separate`).
    public static func borderCollapse(
        _ value: TWTBorderCollapse,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the spacing between borders of separated table cells.
    /// Produces `border-spacing-*` classes (e.g. `border-spacing-4`, `border-spacing-0`).
    public static func borderSpacing(
        _ value: TWTBorderSpacing,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the algorithm used to lay out the table cells.
    /// Produces `table-*` classes (e.g. `table-auto`, `table-fixed`).
    public static func tableLayout(
        _ value: TWTTableLayout,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the position of the table caption.
    /// Produces `caption-*` classes (e.g. `caption-top`, `caption-bottom`).
    public static func captionSide(
        _ value: TWTCaptionSide,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
