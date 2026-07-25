import Elementary

extension MarkupAttribute {
    /// Sets the CSS `cursor` property.
    public static func cursor(_ value: TWTCursor) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `user-select` property.
    public static func userSelect(_ value: TWTUserSelect) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `resize` property.
    public static func resize(_ value: TWTResize) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-behavior` property.
    public static func scrollBehavior(_ value: TWTScrollBehavior) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-snap-align` property.
    public static func scrollSnapAlign(_ value: TWTScrollSnapAlign) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-snap-type` property.
    public static func scrollSnapType(_ value: TWTScrollSnapType) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `touch-action` property.
    public static func touchAction(_ value: TWTTouchAction) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `pointer-events` property.
    public static func pointerEvents(_ value: TWTPointerEvents) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `will-change` property.
    public static func willChange(_ value: TWTWillChange) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `accent-color` property.
    public static func accentColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTAccentColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `appearance` property.
    public static func appearance(_ value: TWTAppearance) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `caret-color` property.
    public static func caretColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTCaretColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `color-scheme` property.
    public static func colorScheme(_ value: TWTColorScheme) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `field-sizing` property.
    public static func fieldSizing(_ value: TWTFieldSizing) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scrollbar-color` property.
    public static func scrollbarColor(_ color: TWColor) -> Self {
        .init(
            name: "class",
            value: TWTScrollbarColor(color).rawValue,
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the CSS `scrollbar-width` property.
    public static func scrollbarWidth(_ value: TWTScrollbarWidth) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scrollbar-gutter` property.
    public static func scrollbarGutter(_ value: TWTScrollbarGutter) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-snap-stop` property.
    public static func scrollSnapStop(_ value: TWTScrollSnapStop) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-margin` property.
    public static func scrollMargin(_ value: TWTScrollMargin) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }

    /// Sets the CSS `scroll-padding` property.
    public static func scrollPadding(_ value: TWTScrollPadding) -> Self {
        .init(name: "class", value: value.rawValue, mergedBy: .appending(separatedBy: " "))
    }
}
