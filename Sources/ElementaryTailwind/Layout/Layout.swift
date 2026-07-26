import Elementary

extension MarkupAttribute {
    /// Sets the CSS `display` property.
    public static func display(_ value: TWTDisplay, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `flex-direction` property.
    public static func flexDirection(_ value: TWTFlexDirection, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `flex-wrap` property.
    public static func flexWrap(_ value: TWTFlexWrap, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `flex` property.
    public static func flex(_ value: TWTFlex, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `flex-grow` property.
    public static func flexGrow(_ value: TWTFlexGrow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `flex-shrink` property.
    public static func flexShrink(_ value: TWTFlexShrink, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `align-items` property.
    public static func items(_ value: TWTItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `justify-content` property.
    public static func justify(_ value: TWTJustify, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `align-content` property.
    public static func alignContent(_ value: TWTAlignContent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `align-self` property.
    public static func alignSelf(_ value: TWTAlignSelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `gap` property.
    public static func gap(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGap.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `column-gap` property.
    public static func gapX(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGapX.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `row-gap` property.
    public static func gapY(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGapY.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `position` property.
    public static func position(_ value: TWTPosition, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `inset` property.
    public static func inset(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `z-index` property.
    public static func zIndex(_ value: TWTZIndex, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `aspect-ratio` property.
    public static func aspect(_ value: TWTAspectRatio, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `columns` property.
    public static func columns(_ value: TWTColumns, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `order` property.
    public static func order(_ value: TWTOrder, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `float` property.
    public static func float(_ value: TWTFloat, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `clear` property.
    public static func clear(_ value: TWTClear, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overflow` property.
    public static func overflow(_ value: TWTOverflow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overflow-x` property.
    public static func overflowX(_ value: TWTOverflowX, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overflow-y` property.
    public static func overflowY(_ value: TWTOverflowY, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overscroll-behavior` property.
    public static func overscrollBehavior(
        _ value: TWTOverscrollBehavior,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overscroll-behavior-x` property.
    public static func overscrollBehaviorX(
        _ value: TWTOverscrollBehaviorX,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `overscroll-behavior-y` property.
    public static func overscrollBehaviorY(
        _ value: TWTOverscrollBehaviorY,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `visibility` property.
    public static func visibility(_ value: TWTVisibility, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `object-fit` property.
    public static func objectFit(_ value: TWTObjectFit, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `object-position` property.
    public static func objectPosition(
        _ value: TWTObjectPosition,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `isolation` property.
    public static func isolation(_ value: TWTIsolation, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `box-sizing` property.
    public static func boxSizing(_ value: TWTBoxSizing, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `break-after` property.
    public static func breakAfter(_ value: TWTBreakAfter, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `break-before` property.
    public static func breakBefore(_ value: TWTBreakBefore, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `break-inside` property.
    public static func breakInside(_ value: TWTBreakInside, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `box-decoration-break` property.
    public static func boxDecorationBreak(
        _ value: TWTBoxDecorationBreak,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `top` property.
    public static func top(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "top-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `right` property.
    public static func right(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "right-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `bottom` property.
    public static func bottom(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "bottom-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `left` property.
    public static func left(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "left-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    // MARK: - Grid

    /// Sets the CSS `grid-template-columns` property.
    public static func gridTemplateColumns(
        _ value: TWTGridTemplateColumns,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-template-rows` property.
    public static func gridTemplateRows(
        _ value: TWTGridTemplateRows,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-template-areas` property.
    public static func gridTemplateAreas(
        _ value: TWTGridTemplateAreas,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-column` property.
    public static func gridColumn(_ value: TWTGridColumn, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-column-start` property.
    public static func gridColumnStart(
        _ value: TWTGridColumnStart,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-column-end` property.
    public static func gridColumnEnd(_ value: TWTGridColumnEnd, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-row` property.
    public static func gridRow(_ value: TWTGridRow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-row-start` property.
    public static func gridRowStart(_ value: TWTGridRowStart, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-row-end` property.
    public static func gridRowEnd(_ value: TWTGridRowEnd, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-auto-flow` property.
    public static func gridAutoFlow(_ value: TWTGridAutoFlow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-auto-columns` property.
    public static func gridAutoColumns(
        _ value: TWTGridAutoColumns,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `grid-auto-rows` property.
    public static func gridAutoRows(_ value: TWTGridAutoRows, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    // MARK: - Flexbox Extended

    /// Sets the CSS `flex-basis` property.
    public static func flexBasis(_ value: TWTFlexBasis, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `justify-items` property.
    public static func justifyItems(_ value: TWTJustifyItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `justify-self` property.
    public static func justifySelf(_ value: TWTJustifySelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `place-content` property.
    public static func placeContent(_ value: TWTPlaceContent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `place-items` property.
    public static func placeItems(_ value: TWTPlaceItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `place-self` property.
    public static func placeSelf(_ value: TWTPlaceSelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
