import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct VariantsTests {
    @Test func testHover() throws {
        try HTMLAssertEqual(
            div(.class(TWTBackgroundColor(.blue).hover)) {},
            try String(contentsOf: fixtureURL("backgroundColor.blue.hover.html"), encoding: .utf8)
        )
    }

    @Test func testFocus() throws {
        try HTMLAssertEqual(
            div(.class(TWRingWidth.size(2).focus)) {},
            try String(contentsOf: fixtureURL("ringWidth.size-2.focus.html"), encoding: .utf8)
        )
    }

    @Test func testActive() throws {
        try HTMLAssertEqual(
            div(.class(TWTDisplay.flex.active)) {},
            try String(contentsOf: fixtureURL("display.flex.active.html"), encoding: .utf8)
        )
    }

    @Test func testDisabled() throws {
        try HTMLAssertEqual(
            div(.class(TWTOpacity.value(50).disabled)) {},
            try String(contentsOf: fixtureURL("opacity.value-50.disabled.html"), encoding: .utf8)
        )
    }

    @Test func testResponsive() throws {
        try HTMLAssertEqual(
            div(.class(TWTDisplay.flex.md)) {},
            try String(contentsOf: fixtureURL("display.flex.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.class(TWTDisplay.grid.lg)) {},
            try String(contentsOf: fixtureURL("display.grid.lg.html"), encoding: .utf8)
        )
    }

    @Test func testDarkMode() throws {
        try HTMLAssertEqual(
            div(.class(TWTBackgroundColor(.gray.shade(900)).dark)) {},
            try String(
                contentsOf: fixtureURL("backgroundColor.gray-shade-900.dark.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testFirstLast() throws {
        try HTMLAssertEqual(
            li(.class(TWTBorderRadius.md.first)) {},
            try String(contentsOf: fixtureURL("borderRadius.md.first.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            li(.class(TWTBorderRadius.lg.last)) {},
            try String(contentsOf: fixtureURL("borderRadius.lg.last.html"), encoding: .utf8)
        )
    }

    @Test func testGroupHover() throws {
        try HTMLAssertEqual(
            span(.class(TWTOpacity.value(100).groupHover)) {},
            try String(contentsOf: fixtureURL("opacity.value-100.groupHover.html"), encoding: .utf8)
        )
    }

    @Test func testConvenienceExtensions() throws {
        try HTMLAssertEqual(
            div(.class(TWTDisplay.flex.hover)) {},
            try String(contentsOf: fixtureURL("display.flex.hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.class(TWTDisplay.grid.focus)) {},
            try String(contentsOf: fixtureURL("display.grid.focus.html"), encoding: .utf8)
        )
    }

    @Test func testNestedVariants() throws {
        try HTMLAssertEqual(
            div(.class(TWTDisplay.flex.hover.md)) {},
            try String(contentsOf: fixtureURL("display.flex.hover.md.html"), encoding: .utf8)
        )
    }
}
