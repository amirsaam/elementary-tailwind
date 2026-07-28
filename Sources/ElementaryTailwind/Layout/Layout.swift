import Elementary

extension MarkupAttribute {
    /// Controls the rendering mode of the element (block, flex, grid, hidden, etc.).
    /// Produces bare display classes (e.g. `block`, `flex`, `grid`, `hidden`, `inline-block`).
    public static func display(_ value: TWTDisplay, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the main axis direction for flexbox items.
    /// Produces `flex-*` classes (e.g. `flex-row`, `flex-col`, `flex-row-reverse`).
    public static func flexDirection(_ value: TWTFlexDirection, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether flexbox items wrap onto multiple lines.
    /// Produces `flex-*` classes (e.g. `flex-wrap`, `flex-nowrap`, `flex-wrap-reverse`).
    public static func flexWrap(_ value: TWTFlexWrap, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the initial main size and growth/shrink behavior of a flex item.
    /// Produces `flex-*` classes (e.g. `flex-1`, `flex-none`, `flex-auto`, `flex-initial`).
    public static func flex(_ value: TWTFlex, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how a flex item grows to fill available space.
    /// Produces `grow` or `grow-0` classes.
    public static func flexGrow(_ value: TWTFlexGrow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how a flex item shrinks when space is limited.
    /// Produces `shrink` or `shrink-0` classes.
    public static func flexShrink(_ value: TWTFlexShrink, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Aligns flex items along the cross axis.
    /// Produces `items-*` classes (e.g. `items-start`, `items-center`, `items-end`, `items-stretch`).
    public static func items(_ value: TWTItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Distributes items along the main axis.
    /// Produces `justify-*` classes (e.g. `justify-start`, `justify-center`, `justify-between`, `justify-around`).
    public static func justify(_ value: TWTJustify, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Aligns multi-line content within the container along the cross axis.
    /// Produces `content-*` classes (e.g. `content-start`, `content-center`, `content-between`, `content-around`).
    public static func alignContent(_ value: TWTAlignContent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Overrides the alignment for an individual item within the container.
    /// Produces `self-*` classes (e.g. `self-start`, `self-center`, `self-auto`, `self-stretch`).
    public static func alignSelf(_ value: TWTAlignSelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the spacing between grid and flexbox items in both directions.
    /// Produces `gap-*` classes (e.g. `gap-4`, `gap-8`, `gap-px`).
    public static func gap(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGap.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the horizontal spacing between grid columns or flexbox items.
    /// Produces `gap-x-*` classes (e.g. `gap-x-4`, `gap-x-8`).
    public static func gapX(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGapX.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the vertical spacing between grid rows.
    /// Produces `gap-y-*` classes (e.g. `gap-y-4`, `gap-y-8`).
    public static func gapY(_ size: Int, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: TWTGapY.size(size).rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the positioning method for the element (relative, absolute, fixed, sticky).
    /// Produces bare positioning classes (e.g. `relative`, `absolute`, `fixed`, `sticky`, `static`).
    public static func position(_ value: TWTPosition, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from all edges of its containing block.
    /// Produces `inset-*` classes (e.g. `inset-0`, `inset-4`, `inset-auto`, `inset-full`).
    public static func inset(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "inset-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the stacking order of positioned elements.
    /// Produces `z-*` classes (e.g. `z-10`, `z-50`, `z-auto`).
    public static func zIndex(_ value: TWTZIndex, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets a preferred width-to-height ratio for the element.
    /// Produces `aspect-*` classes (e.g. `aspect-auto`, `aspect-square`, `aspect-video`).
    public static func aspect(_ value: TWTAspectRatio, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Defines the number of multi-column tracks.
    /// Produces `columns-*` classes (e.g. `columns-2`, `columns-3`, `columns-auto`).
    public static func columns(_ value: TWTColumns, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the visual order of the element within its container.
    /// Produces `order-*` classes (e.g. `order-1`, `order-first`, `order-last`, `order-none`).
    public static func order(_ value: TWTOrder, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element on the left or right side of its container.
    /// Produces `float-*` classes (e.g. `float-right`, `float-left`, `float-none`).
    public static func float(_ value: TWTFloat, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Clears the element so it does not wrap around floated elements.
    /// Produces `clear-*` classes (e.g. `clear-left`, `clear-right`, `clear-both`, `clear-none`).
    public static func clear(_ value: TWTClear, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls what happens when content overflows the element's box.
    /// Produces `overflow-*` classes (e.g. `overflow-hidden`, `overflow-auto`, `overflow-scroll`).
    public static func overflow(_ value: TWTOverflow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls horizontal overflow behavior.
    /// Produces `overflow-x-*` classes (e.g. `overflow-x-hidden`, `overflow-x-auto`, `overflow-x-scroll`).
    public static func overflowX(_ value: TWTOverflowX, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls vertical overflow behavior.
    /// Produces `overflow-y-*` classes (e.g. `overflow-y-hidden`, `overflow-y-auto`, `overflow-y-scroll`).
    public static func overflowY(_ value: TWTOverflowY, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls what happens when the user scrolls past the content boundary.
    /// Produces `overscroll-*` classes (e.g. `overscroll-contain`, `overscroll-auto`, `overscroll-none`).
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

    /// Controls horizontal overscroll behavior.
    /// Produces `overscroll-x-*` classes (e.g. `overscroll-x-contain`, `overscroll-x-auto`).
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

    /// Controls vertical overscroll behavior.
    /// Produces `overscroll-y-*` classes (e.g. `overscroll-y-contain`, `overscroll-y-auto`).
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

    /// Controls whether the element is visible or hidden.
    /// Produces `visible` or `invisible` classes.
    public static func visibility(_ value: TWTVisibility, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets how replaced content (images, videos) fits its container.
    /// Produces `object-*` classes (e.g. `object-cover`, `object-contain`, `object-fill`).
    public static func objectFit(_ value: TWTObjectFit, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the alignment of replaced content within its container.
    /// Produces `object-*` classes (e.g. `object-center`, `object-top`, `object-left`).
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

    /// Creates a new stacking context for the element.
    /// Produces `isolate` or `isolation-auto` classes.
    public static func isolation(_ value: TWTIsolation, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets whether an element's total size includes padding and borders.
    /// Produces `box-border` or `box-content` classes.
    public static func boxSizing(_ value: TWTBoxSizing, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the break behavior after an element in a multi-column or print context.
    /// Produces `break-after-*` classes (e.g. `break-after-auto`, `break-after-column`, `break-after-page`).
    public static func breakAfter(_ value: TWTBreakAfter, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the break behavior before an element in a multi-column or print context.
    /// Produces `break-before-*` classes (e.g. `break-before-auto`, `break-before-column`).
    public static func breakBefore(_ value: TWTBreakBefore, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the break behavior inside an element in a multi-column or print context.
    /// Produces `break-inside-*` classes (e.g. `break-inside-auto`, `break-inside-avoid`).
    public static func breakInside(_ value: TWTBreakInside, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls whether box decorations are applied across page breaks.
    /// Produces `box-decoration-*` classes (e.g. `box-decoration-clone`, `box-decoration-slice`).
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

    /// Positions the element from the top edge of its container.
    /// Produces `top-*` classes (e.g. `top-0`, `top-4`, `top-auto`, `top-full`).
    public static func insetTop(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "top-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from the right edge of its container.
    /// Produces `right-*` classes (e.g. `right-0`, `right-4`, `right-auto`).
    public static func insetRight(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "right-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from the bottom edge of its container.
    /// Produces `bottom-*` classes (e.g. `bottom-0`, `bottom-4`, `bottom-auto`).
    public static func insetBottom(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "bottom-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from the left edge of its container.
    /// Produces `left-*` classes (e.g. `left-0`, `left-4`, `left-auto`).
    public static func insetLeft(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "left-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from both the left and right edges.
    /// Produces `inset-x-*` classes (e.g. `inset-x-0`, `inset-x-4`, `inset-x-auto`).
    public static func insetX(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "inset-x-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Positions the element from both the top and bottom edges.
    /// Produces `inset-y-*` classes (e.g. `inset-y-0`, `inset-y-4`, `inset-y-auto`).
    public static func insetY(_ value: TWTInset, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: "inset-y-\(value.rawValue)"),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    // MARK: - Grid

    /// Defines the column tracks of a grid layout.
    /// Produces `grid-cols-*` classes (e.g. `grid-cols-3`, `grid-cols-none`, `grid-cols-subgrid`).
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

    /// Defines the row tracks of a grid layout.
    /// Produces `grid-rows-*` classes (e.g. `grid-rows-3`, `grid-rows-none`, `grid-rows-subgrid`).
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

    /// Defines named areas within a grid layout.
    /// Produces `grid-areas-*` classes (e.g. `grid-areas-[...]`).
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

    /// Controls how the element spans across grid columns.
    /// Produces `col-*` classes (e.g. `col-span-2`, `col-start-1`, `col-end-3`, `col-auto`).
    public static func gridColumn(_ value: TWTGridColumn, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets where a grid item starts on the column axis.
    /// Produces `col-start-*` classes (e.g. `col-start-1`, `col-start-auto`).
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

    /// Sets where a grid item ends on the column axis.
    /// Produces `col-end-*` classes (e.g. `col-end-1`, `col-end-auto`).
    public static func gridColumnEnd(_ value: TWTGridColumnEnd, variants: [TWVariant] = []) -> Self
    {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how the element spans across grid rows.
    /// Produces `row-*` classes (e.g. `row-span-2`, `row-start-1`, `row-end-3`).
    public static func gridRow(_ value: TWTGridRow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets where a grid item starts on the row axis.
    /// Produces `row-start-*` classes (e.g. `row-start-1`, `row-start-auto`).
    public static func gridRowStart(_ value: TWTGridRowStart, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets where a grid item ends on the row axis.
    /// Produces `row-end-*` classes (e.g. `row-end-1`, `row-end-auto`).
    public static func gridRowEnd(_ value: TWTGridRowEnd, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Controls how auto-placed items flow through the grid.
    /// Produces `grid-flow-*` classes (e.g. `grid-flow-row`, `grid-flow-col`, `grid-flow-dense`).
    public static func gridAutoFlow(_ value: TWTGridAutoFlow, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets the size of implicitly generated grid columns.
    /// Produces `auto-cols-*` classes (e.g. `auto-cols-auto`, `auto-cols-min`, `auto-cols-fr`).
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

    /// Sets the size of implicitly generated grid rows.
    /// Produces `auto-rows-*` classes (e.g. `auto-rows-auto`, `auto-rows-min`, `auto-rows-fr`).
    public static func gridAutoRows(_ value: TWTGridAutoRows, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    // MARK: - Flexbox Extended

    /// Sets the initial main size of a flex item before free space is distributed.
    /// Produces `basis-*` classes (e.g. `basis-64`, `basis-full`, `basis-auto`).
    public static func flexBasis(_ value: TWTFlexBasis, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Aligns grid items along the inline (row) axis.
    /// Produces `justify-items-*` classes (e.g. `justify-items-start`, `justify-items-center`, `justify-items-end`).
    public static func justifyItems(_ value: TWTJustifyItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Overrides the inline-axis alignment for an individual grid item.
    /// Produces `justify-self-*` classes (e.g. `justify-self-start`, `justify-self-center`, `justify-self-auto`).
    public static func justifySelf(_ value: TWTJustifySelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets both justify-content and align-content in one declaration.
    /// Produces `place-content-*` classes (e.g. `place-content-center`, `place-content-between`).
    public static func placeContent(_ value: TWTPlaceContent, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets both justify-items and align-items in one declaration.
    /// Produces `place-items-*` classes (e.g. `place-items-start`, `place-items-center`, `place-items-end`).
    public static func placeItems(_ value: TWTPlaceItems, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }

    /// Sets both justify-self and align-self in one declaration.
    /// Produces `place-self-*` classes (e.g. `place-self-auto`, `place-self-start`, `place-self-center`).
    public static func placeSelf(_ value: TWTPlaceSelf, variants: [TWVariant] = []) -> Self {
        .init(
            name: "class",
            value: TWVariant.apply(variants, to: value.rawValue),
            mergedBy: .appending(separatedBy: " ")
        )
    }
}
