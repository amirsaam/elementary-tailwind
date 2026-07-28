import Elementary

extension MarkupAttribute {
    /// Sets the cursor style when hovering over the element.
    /// Produces `cursor-*` classes (e.g. `cursor-pointer`, `cursor-default`, `cursor-wait`).
    public static func cursor(_ value: TWTCursor, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the user can select the element's content.
    /// Produces `select-*` classes (e.g. `select-none`, `select-all`, `select-text`).
    public static func userSelect(_ value: TWTUserSelect, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the element is resizable by the user.
    /// Produces `resize-*` classes (e.g. `resize`, `resize-none`, `resize-y`).
    public static func resize(_ value: TWTResize, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the scrolling behavior for a scrollable container.
    /// Produces `scroll-*` classes (e.g. `scroll-auto`, `scroll-smooth`).
    public static func scrollBehavior(
        _ value: TWTScrollBehavior,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the alignment of elements within a scroll snap container.
    /// Produces `snap-*` classes (e.g. `snap-start`, `snap-center`, `snap-end`).
    public static func scrollSnapAlign(
        _ value: TWTScrollSnapAlign,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the scroll snap axis and strictness.
    /// Produces `snap-*` classes (e.g. `snap-x`, `snap-y`, `snap-mandatory`, `snap-proximity`).
    public static func scrollSnapType(
        _ value: TWTScrollSnapType,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how touch events are handled on the element.
    /// Produces `touch-*` classes (e.g. `touch-pan-x`, `touch-pan-y`, `touch-manipulation`).
    public static func touchAction(_ value: TWTTouchAction, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether the element reacts to pointer events.
    /// Produces `pointer-events-*` classes (e.g. `pointer-events-none`, `pointer-events-auto`).
    public static func pointerEvents(_ value: TWTPointerEvents, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Tells the browser what CSS properties may change, enabling optimization.
    /// Produces `will-change-*` classes (e.g. `will-change-auto`, `will-change-transform`).
    public static func willChange(_ value: TWTWillChange, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the accent color for form controls.
    /// Produces `accent-*` classes (e.g. `accent-blue-500`, `accent-red-600/50`).
    public static func accentColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTAccentColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Removes the default native appearance of form controls.
    /// Produces `appearance-*` classes (e.g. `appearance-none`, `appearance-auto`).
    public static func appearance(_ value: TWTAppearance, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the text input cursor.
    /// Produces `caret-*` classes (e.g. `caret-blue-500`, `caret-red-600/50`).
    public static func caretColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTCaretColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the preferred color scheme (light or dark).
    /// Produces `scheme-*` classes (e.g. `scheme-light`, `scheme-dark`, `scheme-light-dark`).
    public static func colorScheme(_ value: TWTColorScheme, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether form fields grow to fit their content.
    /// Produces `field-sizing-*` classes (e.g. `field-sizing-fixed`, `field-sizing-content`).
    public static func fieldSizing(_ value: TWTFieldSizing, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the color of the scrollbar.
    /// Produces `scrollbar-*` classes (e.g. `scrollbar-gray-500`, `scrollbar-blue-600/50`).
    public static func scrollbarColor(
        _ color: TWColor,
        opacity: Int? = nil,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(
                variants,
                to: TWTScrollbarColor(color, opacity: opacity).rawValue
            ),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the width of the scrollbar.
    /// Produces `scrollbar-*` classes (e.g. `scrollbar-auto`, `scrollbar-thin`, `scrollbar-none`).
    public static func scrollbarWidth(
        _ value: TWTScrollbarWidth,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the gutter space reserved for the scrollbar.
    /// Produces `scrollbar-gutter-*` classes (e.g. `scrollbar-gutter-auto`, `scrollbar-gutter-stable`).
    public static func scrollbarGutter(
        _ value: TWTScrollbarGutter,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether scroll snapping stops at the given alignment point.
    /// Produces `snap-*` classes (e.g. `snap-normal`, `snap-always`).
    public static func scrollSnapStop(
        _ value: TWTScrollSnapStop,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the scroll margin on all sides of a snap target.
    /// Produces `scroll-m-*` classes (e.g. `scroll-m-4`, `scroll-m-8`).
    public static func scrollMargin(_ value: TWTScrollMargin, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the scroll padding on all sides of a snap container.
    /// Produces `scroll-p-*` classes (e.g. `scroll-p-4`, `scroll-p-8`).
    public static func scrollPadding(_ value: TWTScrollPadding, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal scroll margin (left + right).
    /// Produces `scroll-mx-*` classes (e.g. `scroll-mx-4`, `scroll-mx-8`).
    public static func scrollMarginX(_ value: TWTScrollMarginX, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical scroll margin (top + bottom).
    /// Produces `scroll-my-*` classes (e.g. `scroll-my-4`, `scroll-my-8`).
    public static func scrollMarginY(_ value: TWTScrollMarginY, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the top scroll margin.
    /// Produces `scroll-mt-*` classes (e.g. `scroll-mt-4`, `scroll-mt-8`).
    public static func scrollMarginTop(
        _ value: TWTScrollMarginTop,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the right scroll margin.
    /// Produces `scroll-mr-*` classes (e.g. `scroll-mr-4`, `scroll-mr-8`).
    public static func scrollMarginRight(
        _ value: TWTScrollMarginRight,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the bottom scroll margin.
    /// Produces `scroll-mb-*` classes (e.g. `scroll-mb-4`, `scroll-mb-8`).
    public static func scrollMarginBottom(
        _ value: TWTScrollMarginBottom,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the left scroll margin.
    /// Produces `scroll-ml-*` classes (e.g. `scroll-ml-4`, `scroll-ml-8`).
    public static func scrollMarginLeft(
        _ value: TWTScrollMarginLeft,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal scroll padding of the snap container.
    /// Produces `scroll-px-*` classes (e.g. `scroll-px-4`, `scroll-px-8`).
    public static func scrollPaddingX(
        _ value: TWTScrollPaddingX,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical scroll padding of the snap container.
    /// Produces `scroll-py-*` classes (e.g. `scroll-py-4`, `scroll-py-8`).
    public static func scrollPaddingY(
        _ value: TWTScrollPaddingY,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the top scroll padding of the snap container.
    /// Produces `scroll-pt-*` classes (e.g. `scroll-pt-4`, `scroll-pt-8`).
    public static func scrollPaddingTop(
        _ value: TWTScrollPaddingTop,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the right scroll padding of the snap container.
    /// Produces `scroll-pr-*` classes (e.g. `scroll-pr-4`, `scroll-pr-8`).
    public static func scrollPaddingRight(
        _ value: TWTScrollPaddingRight,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the bottom scroll padding of the snap container.
    /// Produces `scroll-pb-*` classes (e.g. `scroll-pb-4`, `scroll-pb-8`).
    public static func scrollPaddingBottom(
        _ value: TWTScrollPaddingBottom,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the left scroll padding of the snap container.
    /// Produces `scroll-pl-*` classes (e.g. `scroll-pl-4`, `scroll-pl-8`).
    public static func scrollPaddingLeft(
        _ value: TWTScrollPaddingLeft,
        variants: [TWVariant] = []
    ) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
