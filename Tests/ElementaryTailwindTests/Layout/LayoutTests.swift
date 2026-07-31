import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct LayoutTests {
    @Test func testDisplay() throws {
        try HTMLAssertEqual(
            div(.display(.flex)) {},
            try String(contentsOf: fixtureURL("display-flex.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.grid)) {},
            try String(contentsOf: fixtureURL("display-grid.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.block)) {},
            try String(contentsOf: fixtureURL("display-block.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.hidden)) {},
            try String(contentsOf: fixtureURL("display-hidden.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.block, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("display-block-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlexDirection() throws {
        try HTMLAssertEqual(
            div(.flexDirection(.row)) {},
            try String(contentsOf: fixtureURL("flex-direction-row.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexDirection(.column)) {},
            try String(contentsOf: fixtureURL("flex-direction-column.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexDirection(.row, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("flex-direction-row-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlexWrap() throws {
        try HTMLAssertEqual(
            div(.flexWrap(.wrap)) {},
            try String(contentsOf: fixtureURL("flex-wrap.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexWrap(.wrap, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("flex-wrap-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlex() throws {
        try HTMLAssertEqual(
            div(.flex(.one)) {},
            try String(contentsOf: fixtureURL("flex-one.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flex(.auto)) {},
            try String(contentsOf: fixtureURL("flex-auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flex(.one, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("flex-one-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlexGrow() throws {
        try HTMLAssertEqual(
            div(.flexGrow(.grow)) {},
            try String(contentsOf: fixtureURL("grow.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexGrow(.grow, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("grow-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlexShrink() throws {
        try HTMLAssertEqual(
            div(.flexShrink(.shrink)) {},
            try String(contentsOf: fixtureURL("shrink.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexShrink(.shrink, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("shrink-hover.html"), encoding: .utf8)
        )
    }

    @Test func testItems() throws {
        try HTMLAssertEqual(
            div(.items(.center)) {},
            try String(contentsOf: fixtureURL("items-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.items(.start)) {},
            try String(contentsOf: fixtureURL("items-start.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.items(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("items-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testJustify() throws {
        try HTMLAssertEqual(
            div(.justify(.center)) {},
            try String(contentsOf: fixtureURL("justify-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.justify(.between)) {},
            try String(contentsOf: fixtureURL("justify-between.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.justify(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("justify-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testAlignContent() throws {
        try HTMLAssertEqual(
            div(.alignContent(.center)) {},
            try String(contentsOf: fixtureURL("content-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.alignContent(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("content-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testAlignSelf() throws {
        try HTMLAssertEqual(
            div(.alignSelf(.center)) {},
            try String(contentsOf: fixtureURL("self-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.alignSelf(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("self-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testGap() throws {
        try HTMLAssertEqual(
            div(.gap(.size(4))) {},
            try String(contentsOf: fixtureURL("gap-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gap(.size(4), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("gap-4-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gap(.zero)) {},
            try String(contentsOf: fixtureURL("gap-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapX(.size(4))) {},
            try String(contentsOf: fixtureURL("gap-x-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapX(.size(4), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("gap-x-4-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapX(.zero)) {},
            try String(contentsOf: fixtureURL("gap-x-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapY(.size(4))) {},
            try String(contentsOf: fixtureURL("gap-y-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapY(.size(4), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("gap-y-4-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapY(.zero)) {},
            try String(contentsOf: fixtureURL("gap-y-0.html"), encoding: .utf8)
        )
    }

    @Test func testPosition() throws {
        try HTMLAssertEqual(
            div(.position(.relative)) {},
            try String(contentsOf: fixtureURL("position-relative.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.position(.absolute)) {},
            try String(contentsOf: fixtureURL("position-absolute.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.position(.fixed)) {},
            try String(contentsOf: fixtureURL("position-fixed.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.position(.relative, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("position-relative-hover.html"), encoding: .utf8)
        )
    }

    @Test func testInset() throws {
        try HTMLAssertEqual(
            div(.inset(.size(4))) {},
            try String(contentsOf: fixtureURL("inset-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("inset-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.zero)) {},
            try String(contentsOf: fixtureURL("inset-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.auto)) {},
            try String(contentsOf: fixtureURL("inset-auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.full)) {},
            try String(contentsOf: fixtureURL("inset-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.arbitrary("20px"))) {},
            try String(contentsOf: fixtureURL("inset-arbitrary.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.inset(.zero, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("inset-0-hover.html"), encoding: .utf8)
        )
    }

    @Test func testInsetDirectional() throws {
        try HTMLAssertEqual(
            div(.insetTop(.size(4))) {},
            try String(contentsOf: fixtureURL("top-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetTop(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("top-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetTop(.zero)) {},
            try String(contentsOf: fixtureURL("top-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetTop(.size(4), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("top-4-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetRight(.size(4))) {},
            try String(contentsOf: fixtureURL("right-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetRight(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("right-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetRight(.zero)) {},
            try String(contentsOf: fixtureURL("right-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetBottom(.size(4))) {},
            try String(contentsOf: fixtureURL("bottom-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetBottom(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("bottom-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetBottom(.zero)) {},
            try String(contentsOf: fixtureURL("bottom-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetLeft(.size(4))) {},
            try String(contentsOf: fixtureURL("left-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetLeft(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("left-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetLeft(.zero)) {},
            try String(contentsOf: fixtureURL("left-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetX(.size(4))) {},
            try String(contentsOf: fixtureURL("inset-x-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetX(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("inset-x-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetX(.zero)) {},
            try String(contentsOf: fixtureURL("inset-x-0.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetX(.size(4), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("inset-x-4-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetY(.size(4))) {},
            try String(contentsOf: fixtureURL("inset-y-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetY(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("inset-y-negative-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.insetY(.zero)) {},
            try String(contentsOf: fixtureURL("inset-y-0.html"), encoding: .utf8)
        )
    }

    @Test func testZIndex() throws {
        try HTMLAssertEqual(
            div(.zIndex(.number(10))) {},
            try String(contentsOf: fixtureURL("z-10.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.zIndex(.number(10), negative: true)) {},
            try String(contentsOf: fixtureURL("z-negative-10.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.zIndex(.auto)) {},
            try String(contentsOf: fixtureURL("z-auto.html"), encoding: .utf8)
        )
    }

    @Test func testAspect() throws {
        try HTMLAssertEqual(
            div(.aspect(.square)) {},
            try String(contentsOf: fixtureURL("aspect-square.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.aspect(.square, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("aspect-square-hover.html"), encoding: .utf8)
        )
    }

    @Test func testColumns() throws {
        try HTMLAssertEqual(
            div(.columns(.number(3))) {},
            try String(contentsOf: fixtureURL("columns-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.columns(.number(3), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("columns-3-hover.html"), encoding: .utf8)
        )
    }

    @Test func testOrder() throws {
        try HTMLAssertEqual(
            div(.order(.first)) {},
            try String(contentsOf: fixtureURL("order-first.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.order(.number(3))) {},
            try String(contentsOf: fixtureURL("order-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.order(.number(3), negative: true)) {},
            try String(contentsOf: fixtureURL("order-negative-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.order(.first, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("order-first-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFloat() throws {
        try HTMLAssertEqual(
            div(.float(.right)) {},
            try String(contentsOf: fixtureURL("float-right.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.float(.right, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("float-right-hover.html"), encoding: .utf8)
        )
    }

    @Test func testClear() throws {
        try HTMLAssertEqual(
            div(.clear(.both)) {},
            try String(contentsOf: fixtureURL("clear-both.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.clear(.both, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("clear-both-hover.html"), encoding: .utf8)
        )
    }

    @Test func testOverflow() throws {
        try HTMLAssertEqual(
            div(.overflow(.hidden)) {},
            try String(contentsOf: fixtureURL("overflow-hidden.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overflow(.hidden, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overflow-hidden-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overflowX(.auto)) {},
            try String(contentsOf: fixtureURL("overflow-x-auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overflowX(.auto, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overflow-x-auto-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overflowY(.scroll)) {},
            try String(contentsOf: fixtureURL("overflow-y-scroll.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overflowY(.scroll, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overflow-y-scroll-hover.html"), encoding: .utf8)
        )
    }

    @Test func testOverscrollBehavior() throws {
        try HTMLAssertEqual(
            div(.overscrollBehavior(.contain)) {},
            try String(contentsOf: fixtureURL("overscroll-contain.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overscrollBehavior(.contain, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overscroll-contain-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overscrollBehaviorX(.contain)) {},
            try String(contentsOf: fixtureURL("overscroll-x-contain.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overscrollBehaviorX(.contain, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overscroll-x-contain-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overscrollBehaviorY(.contain)) {},
            try String(contentsOf: fixtureURL("overscroll-y-contain.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.overscrollBehaviorY(.contain, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("overscroll-y-contain-hover.html"), encoding: .utf8)
        )
    }

    @Test func testVisibility() throws {
        try HTMLAssertEqual(
            div(.visibility(.invisible)) {},
            try String(contentsOf: fixtureURL("invisible.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.visibility(.invisible, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("invisible-hover.html"), encoding: .utf8)
        )
    }

    @Test func testObjectFit() throws {
        try HTMLAssertEqual(
            div(.objectFit(.cover)) {},
            try String(contentsOf: fixtureURL("object-cover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.objectFit(.cover, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("object-cover-hover.html"), encoding: .utf8)
        )
    }

    @Test func testObjectPosition() throws {
        try HTMLAssertEqual(
            div(.objectPosition(.center)) {},
            try String(contentsOf: fixtureURL("object-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.objectPosition(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("object-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testIsolation() throws {
        try HTMLAssertEqual(
            div(.isolation(.auto)) {},
            try String(contentsOf: fixtureURL("isolate.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.isolation(.auto, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("isolate-hover.html"), encoding: .utf8)
        )
    }

    @Test func testBoxSizing() throws {
        try HTMLAssertEqual(
            div(.boxSizing(.border)) {},
            try String(contentsOf: fixtureURL("box-border.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.boxSizing(.border, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("box-border-hover.html"), encoding: .utf8)
        )
    }

    @Test func testBreak() throws {
        try HTMLAssertEqual(
            div(.breakAfter(.column)) {},
            try String(contentsOf: fixtureURL("break-after-column.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.breakAfter(.column, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("break-after-column-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.breakBefore(.page)) {},
            try String(contentsOf: fixtureURL("break-before-page.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.breakBefore(.page, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("break-before-page-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.breakInside(.avoid)) {},
            try String(contentsOf: fixtureURL("break-inside-avoid.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.breakInside(.avoid, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("break-inside-avoid-hover.html"), encoding: .utf8)
        )
    }

    @Test func testBoxDecorationBreak() throws {
        try HTMLAssertEqual(
            div(.boxDecorationBreak(.slice)) {},
            try String(contentsOf: fixtureURL("box-decoration-slice.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.boxDecorationBreak(.slice, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("box-decoration-slice-hover.html"), encoding: .utf8)
        )
    }

    @Test func testGridTemplate() throws {
        try HTMLAssertEqual(
            div(.gridTemplateColumns(.value(3))) {},
            try String(contentsOf: fixtureURL("grid-cols-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridTemplateColumns(.value(3), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("grid-cols-3-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridTemplateRows(.value(3))) {},
            try String(contentsOf: fixtureURL("grid-rows-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridTemplateRows(.value(3), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("grid-rows-3-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridTemplateAreas(.none)) {},
            try String(contentsOf: fixtureURL("grid-areas-none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridTemplateAreas(.none, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("grid-areas-none-hover.html"), encoding: .utf8)
        )
    }

    @Test func testGridColumn() throws {
        try HTMLAssertEqual(
            div(.gridColumn(.span(2))) {},
            try String(contentsOf: fixtureURL("col-span-2.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridColumn(.span(2), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("col-span-2-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridColumnStart(.value(1))) {},
            try String(contentsOf: fixtureURL("col-start-1.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridColumnStart(.value(1), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("col-start-1-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridColumnEnd(.value(3))) {},
            try String(contentsOf: fixtureURL("col-end-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridColumnEnd(.value(3), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("col-end-3-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRow(.span(2))) {},
            try String(contentsOf: fixtureURL("row-span-2.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRow(.span(2), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("row-span-2-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRowStart(.value(1))) {},
            try String(contentsOf: fixtureURL("row-start-1.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRowStart(.value(1), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("row-start-1-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRowEnd(.value(3))) {},
            try String(contentsOf: fixtureURL("row-end-3.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRowEnd(.value(3), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("row-end-3-hover.html"), encoding: .utf8)
        )
    }

    @Test func testGridAuto() throws {
        try HTMLAssertEqual(
            div(.gridAutoFlow(.column)) {},
            try String(contentsOf: fixtureURL("grid-flow-col.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoFlow(.column, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("grid-flow-col-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoColumns(.smallest)) {},
            try String(contentsOf: fixtureURL("auto-cols-min.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoColumns(.smallest, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("auto-cols-min-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoRows(.smallest)) {},
            try String(contentsOf: fixtureURL("auto-rows-min.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoRows(.smallest, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("auto-rows-min-hover.html"), encoding: .utf8)
        )
    }

    @Test func testFlexBasis() throws {
        try HTMLAssertEqual(
            div(.flexBasis(.value(64))) {},
            try String(contentsOf: fixtureURL("basis-64.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexBasis(.value(64), variants: [.hover])) {},
            try String(contentsOf: fixtureURL("basis-64-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexBasis(.fraction("1/2"))) {},
            try String(contentsOf: fixtureURL("basis-1-2.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.flexBasis(.arbitrary("20px"))) {},
            try String(contentsOf: fixtureURL("basis-arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testPlacement() throws {
        try HTMLAssertEqual(
            div(.justifyItems(.center)) {},
            try String(contentsOf: fixtureURL("justify-items-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.justifyItems(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("justify-items-center-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.justifySelf(.center)) {},
            try String(contentsOf: fixtureURL("justify-self-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.justifySelf(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("justify-self-center-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeContent(.center)) {},
            try String(contentsOf: fixtureURL("place-content-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeContent(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("place-content-center-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeItems(.center)) {},
            try String(contentsOf: fixtureURL("place-items-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeItems(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("place-items-center-hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeSelf(.center)) {},
            try String(contentsOf: fixtureURL("place-self-center.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.placeSelf(.center, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("place-self-center-hover.html"), encoding: .utf8)
        )
    }

    @Test func testDisplayArbitrary() throws {
        try HTMLAssertEqual(
            div(.display(.arbitrary("grid"))) {},
            try String(contentsOf: fixtureURL("display.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testAspectArbitrary() throws {
        try HTMLAssertEqual(
            div(.aspect(.arbitrary("4/3"))) {},
            try String(contentsOf: fixtureURL("aspect.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testColumnsArbitrary() throws {
        try HTMLAssertEqual(
            div(.columns(.arbitrary("30vw"))) {},
            try String(contentsOf: fixtureURL("columns.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testGapArbitrary() throws {
        try HTMLAssertEqual(
            div(.gap(.arbitrary("10vw"))) {},
            try String(contentsOf: fixtureURL("gap.arbitrary.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapX(.arbitrary("10vw"))) {},
            try String(contentsOf: fixtureURL("gapX.arbitrary.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapY(.arbitrary("10vw"))) {},
            try String(contentsOf: fixtureURL("gapY.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testZIndexArbitrary() throws {
        try HTMLAssertEqual(
            div(.zIndex(.arbitrary("calc(var(--index)+1)"))) {},
            try String(contentsOf: fixtureURL("zIndex.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testOrderArbitrary() throws {
        try HTMLAssertEqual(
            div(.order(.arbitrary("min(var(--total-items),10)"))) {},
            try String(contentsOf: fixtureURL("order.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testObjectPositionArbitrary() throws {
        try HTMLAssertEqual(
            div(.objectPosition(.arbitrary("50%_50%"))) {},
            try String(contentsOf: fixtureURL("objectPosition.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testGridTemplateArbitrary() throws {
        try HTMLAssertEqual(
            div(.gridTemplateColumns(.arbitrary("200px_minmax(900px,1fr)_100px"))) {},
            try String(
                contentsOf: fixtureURL("gridTemplateColumns.arbitrary.html"),
                encoding: .utf8
            )
        )
        try HTMLAssertEqual(
            div(.gridTemplateRows(.arbitrary("200px_minmax(900px,1fr)_100px"))) {},
            try String(
                contentsOf: fixtureURL("gridTemplateRows.arbitrary.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testGridColumnArbitrary() throws {
        try HTMLAssertEqual(
            div(.gridColumn(.arbitrary("16"))) {},
            try String(contentsOf: fixtureURL("gridColumn.arbitrary.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridRow(.arbitrary("16"))) {},
            try String(contentsOf: fixtureURL("gridRow.arbitrary.html"), encoding: .utf8)
        )
    }

    @Test func testGridAutoArbitrary() throws {
        try HTMLAssertEqual(
            div(.gridAutoColumns(.arbitrary("minmax(0,2fr)"))) {},
            try String(contentsOf: fixtureURL("gridAutoColumns.arbitrary.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gridAutoRows(.arbitrary("minmax(0,2fr)"))) {},
            try String(contentsOf: fixtureURL("gridAutoRows.arbitrary.html"), encoding: .utf8)
        )
    }
}
