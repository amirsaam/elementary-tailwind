import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct InteractivityTests {
    @Test func testCursor() throws {
        try HTMLAssertEqual(
            div(.cursor(.pointer)) {},
            try String(contentsOf: fixtureURL("cursor.pointer.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.cursor(.notAllowed)) {},
            try String(contentsOf: fixtureURL("cursor.notAllowed.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.cursor(.grab)) {},
            try String(contentsOf: fixtureURL("cursor.grab.html"), encoding: .utf8)
        )
    }

    @Test func testUserSelect() throws {
        try HTMLAssertEqual(
            div(.userSelect(.none)) {},
            try String(contentsOf: fixtureURL("userSelect.none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.userSelect(.text)) {},
            try String(contentsOf: fixtureURL("userSelect.text.html"), encoding: .utf8)
        )
    }

    @Test func testResize() throws {
        try HTMLAssertEqual(
            div(.resize(.none)) {},
            try String(contentsOf: fixtureURL("resize.none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.resize(.both)) {},
            try String(contentsOf: fixtureURL("resize.both.html"), encoding: .utf8)
        )
    }

    @Test func testScrollBehavior() throws {
        try HTMLAssertEqual(
            div(.scrollBehavior(.smooth)) {},
            try String(contentsOf: fixtureURL("scrollBehavior.smooth.html"), encoding: .utf8)
        )
    }

    @Test func testScrollSnapAlign() throws {
        try HTMLAssertEqual(
            div(.scrollSnapAlign(.start)) {},
            try String(contentsOf: fixtureURL("scrollSnapAlign.start.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.scrollSnapAlign(.center)) {},
            try String(contentsOf: fixtureURL("scrollSnapAlign.center.html"), encoding: .utf8)
        )
    }

    @Test func testScrollSnapType() throws {
        try HTMLAssertEqual(
            div(.scrollSnapType(.x)) {},
            try String(contentsOf: fixtureURL("scrollSnapType.x.html"), encoding: .utf8)
        )
    }

    @Test func testTouchAction() throws {
        try HTMLAssertEqual(
            div(.touchAction(.manipulation)) {},
            try String(contentsOf: fixtureURL("touchAction.manipulation.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.touchAction(.none)) {},
            try String(contentsOf: fixtureURL("touchAction.none.html"), encoding: .utf8)
        )
    }

    @Test func testPointerEvents() throws {
        try HTMLAssertEqual(
            div(.pointerEvents(.none)) {},
            try String(contentsOf: fixtureURL("pointerEvents.none.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.pointerEvents(.auto)) {},
            try String(contentsOf: fixtureURL("pointerEvents.auto.html"), encoding: .utf8)
        )
    }

    @Test func testWillChange() throws {
        try HTMLAssertEqual(
            div(.willChange(.transform)) {},
            try String(contentsOf: fixtureURL("willChange.transform.html"), encoding: .utf8)
        )
    }

    @Test func testAccentColor() throws {
        try HTMLAssertEqual(
            div(.accentColor(.blue)) {},
            try String(contentsOf: fixtureURL("accentColor.blue.html"), encoding: .utf8)
        )
    }

    @Test func testAppearance() throws {
        try HTMLAssertEqual(
            div(.appearance(.none)) {},
            try String(contentsOf: fixtureURL("appearance.none.html"), encoding: .utf8)
        )
    }

    @Test func testCaretColor() throws {
        try HTMLAssertEqual(
            div(.caretColor(.red)) {},
            try String(contentsOf: fixtureURL("caretColor.red.html"), encoding: .utf8)
        )
    }

    @Test func testColorScheme() throws {
        try HTMLAssertEqual(
            div(.colorScheme(.dark)) {},
            try String(contentsOf: fixtureURL("colorScheme.dark.html"), encoding: .utf8)
        )
    }

    @Test func testFieldSizing() throws {
        try HTMLAssertEqual(
            div(.fieldSizing(.content)) {},
            try String(contentsOf: fixtureURL("fieldSizing.content.html"), encoding: .utf8)
        )
    }

    @Test func testScrollbarColor() throws {
        try HTMLAssertEqual(
            div(.scrollbarColor(.gray)) {},
            try String(contentsOf: fixtureURL("scrollbarColor.gray.html"), encoding: .utf8)
        )
    }

    @Test func testScrollbarWidth() throws {
        try HTMLAssertEqual(
            div(.scrollbarWidth(.thin)) {},
            try String(contentsOf: fixtureURL("scrollbarWidth.thin.html"), encoding: .utf8)
        )
    }

    @Test func testScrollbarGutter() throws {
        try HTMLAssertEqual(
            div(.scrollbarGutter(.stable)) {},
            try String(contentsOf: fixtureURL("scrollbarGutter.stable.html"), encoding: .utf8)
        )
    }

    @Test func testScrollSnapStop() throws {
        try HTMLAssertEqual(
            div(.scrollSnapStop(.always)) {},
            try String(contentsOf: fixtureURL("scrollSnapStop.always.html"), encoding: .utf8)
        )
    }

    @Test func testScrollMargin() throws {
        try HTMLAssertEqual(
            div(.scrollMargin(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMargin.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginX() throws {
        try HTMLAssertEqual(
            div(.scrollMarginX(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginX.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginY() throws {
        try HTMLAssertEqual(
            div(.scrollMarginY(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginY.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginTop() throws {
        try HTMLAssertEqual(
            div(.scrollMarginTop(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginTop.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginRight() throws {
        try HTMLAssertEqual(
            div(.scrollMarginRight(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginRight.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginBottom() throws {
        try HTMLAssertEqual(
            div(.scrollMarginBottom(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginBottom.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollMarginLeft() throws {
        try HTMLAssertEqual(
            div(.scrollMarginLeft(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollMarginLeft.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPadding() throws {
        try HTMLAssertEqual(
            div(.scrollPadding(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPadding.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingX() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingX(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingX.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingY() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingY(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingY.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingTop() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingTop(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingTop.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingRight() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingRight(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingRight.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingBottom() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingBottom(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingBottom.value-4.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testScrollPaddingLeft() throws {
        try HTMLAssertEqual(
            div(.scrollPaddingLeft(.value(4))) {},
            try String(
                contentsOf: fixtureURL("scrollPaddingLeft.value-4.html"),
                encoding: .utf8
            )
        )
    }
}
