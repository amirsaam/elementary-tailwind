import Elementary

extension MarkupAttribute {
    /// Sets the CSS `display` property.
    public static func display(_ value: TWTDisplay) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `flex-direction` property.
    public static func flexDirection(_ value: TWTFlexDirection) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `flex-wrap` property.
    public static func flexWrap(_ value: TWTFlexWrap) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `flex` property.
    public static func flex(_ value: TWTFlex) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `flex-grow` property.
    public static func flexGrow(_ value: TWTFlexGrow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `flex-shrink` property.
    public static func flexShrink(_ value: TWTFlexShrink) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `align-items` property.
    public static func items(_ value: TWTItems) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `justify-content` property.
    public static func justify(_ value: TWTJustify) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `align-content` property.
    public static func alignContent(_ value: TWTAlignContent) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `align-self` property.
    public static func alignSelf(_ value: TWTAlignSelf) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `gap` property.
    public static func gap(_ size: Int) -> Self {
        .init(
            name: "class",
            value: TWTGap.size(size).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `column-gap` property.
    public static func gapX(_ size: Int) -> Self {
        .init(
            name: "class",
            value: TWTGapX.size(size).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `row-gap` property.
    public static func gapY(_ size: Int) -> Self {
        .init(
            name: "class",
            value: TWTGapY.size(size).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `position` property.
    public static func position(_ value: TWTPosition) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `inset` property.
    public static func inset(_ value: TWTInset) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `z-index` property.
    public static func zIndex(_ value: TWTZIndex) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `aspect-ratio` property.
    public static func aspect(_ value: TWTAspectRatio) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `columns` property.
    public static func columns(_ value: TWTColumns) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `order` property.
    public static func order(_ value: TWTOrder) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `float` property.
    public static func float(_ value: TWTFloat) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `clear` property.
    public static func clear(_ value: TWTClear) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overflow` property.
    public static func overflow(_ value: TWTOverflow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overflow-x` property.
    public static func overflowX(_ value: TWTOverflowX) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overflow-y` property.
    public static func overflowY(_ value: TWTOverflowY) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overscroll-behavior` property.
    public static func overscrollBehavior(_ value: TWTOverscrollBehavior) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overscroll-behavior-x` property.
    public static func overscrollBehaviorX(_ value: TWTOverscrollBehaviorX) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `overscroll-behavior-y` property.
    public static func overscrollBehaviorY(_ value: TWTOverscrollBehaviorY) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `visibility` property.
    public static func visibility(_ value: TWTVisibility) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `object-fit` property.
    public static func objectFit(_ value: TWTObjectFit) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `object-position` property.
    public static func objectPosition(_ value: TWTObjectPosition) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `isolation` property.
    public static func isolation(_ value: TWTIsolation) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `box-sizing` property.
    public static func boxSizing(_ value: TWTBoxSizing) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `break-after` property.
    public static func breakAfter(_ value: TWTBreakAfter) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `break-before` property.
    public static func breakBefore(_ value: TWTBreakBefore) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `break-inside` property.
    public static func breakInside(_ value: TWTBreakInside) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `box-decoration-break` property.
    public static func boxDecorationBreak(_ value: TWTBoxDecorationBreak) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `top` property.
    public static func top(_ value: TWTInset) -> Self {
        .init(name: "class", value: "top-\(value.rawValue)", mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `right` property.
    public static func right(_ value: TWTInset) -> Self {
        .init(
            name: "class",
            value: "right-\(value.rawValue)",
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `bottom` property.
    public static func bottom(_ value: TWTInset) -> Self {
        .init(
            name: "class",
            value: "bottom-\(value.rawValue)",
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `left` property.
    public static func left(_ value: TWTInset) -> Self {
        .init(
            name: "class",
            value: "left-\(value.rawValue)",
            mergedBy: .appending(separatedBy: " ")
        )
    }

    // MARK: - Grid

    /// Sets the CSS `grid-template-columns` property.
    public static func gridTemplateColumns(_ value: TWTGridTemplateColumns) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-template-rows` property.
    public static func gridTemplateRows(_ value: TWTGridTemplateRows) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-column` property.
    public static func gridColumn(_ value: TWTGridColumn) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-column-start` property.
    public static func gridColumnStart(_ value: TWTGridColumnStart) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-column-end` property.
    public static func gridColumnEnd(_ value: TWTGridColumnEnd) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-row` property.
    public static func gridRow(_ value: TWTGridRow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-row-start` property.
    public static func gridRowStart(_ value: TWTGridRowStart) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-row-end` property.
    public static func gridRowEnd(_ value: TWTGridRowEnd) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-auto-flow` property.
    public static func gridAutoFlow(_ value: TWTGridAutoFlow) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-auto-columns` property.
    public static func gridAutoColumns(_ value: TWTGridAutoColumns) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `grid-auto-rows` property.
    public static func gridAutoRows(_ value: TWTGridAutoRows) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    // MARK: - Flexbox Extended

    /// Sets the CSS `flex-basis` property.
    public static func flexBasis(_ value: TWTFlexBasis) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `justify-items` property.
    public static func justifyItems(_ value: TWTJustifyItems) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `justify-self` property.
    public static func justifySelf(_ value: TWTJustifySelf) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `place-content` property.
    public static func placeContent(_ value: TWTPlaceContent) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `place-items` property.
    public static func placeItems(_ value: TWTPlaceItems) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `place-self` property.
    public static func placeSelf(_ value: TWTPlaceSelf) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
