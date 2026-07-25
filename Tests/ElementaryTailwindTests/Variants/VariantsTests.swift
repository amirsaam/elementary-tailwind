import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct VariantsTests {
    @Test func testHover() throws {
        try HTMLAssertEqual(
            div(.backgroundColor(.blue, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("backgroundColor.blue.hover.html"), encoding: .utf8)
        )
    }

    @Test func testFocus() throws {
        try HTMLAssertEqual(
            div(.ringWidth(.size(2), variants: [.focus])) {},
            try String(contentsOf: fixtureURL("ringWidth.size-2.focus.html"), encoding: .utf8)
        )
    }

    @Test func testActive() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.active])) {},
            try String(contentsOf: fixtureURL("display.flex.active.html"), encoding: .utf8)
        )
    }

    @Test func testDisabled() throws {
        try HTMLAssertEqual(
            div(.opacity(.value(50), variants: [.disabled])) {},
            try String(contentsOf: fixtureURL("opacity.value-50.disabled.html"), encoding: .utf8)
        )
    }

    @Test func testResponsive() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.md])) {},
            try String(contentsOf: fixtureURL("display.flex.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.grid, variants: [.lg])) {},
            try String(contentsOf: fixtureURL("display.grid.lg.html"), encoding: .utf8)
        )
    }

    @Test func testDarkMode() throws {
        try HTMLAssertEqual(
            div(.backgroundColor(.gray.shade(900), variants: [.dark])) {},
            try String(
                contentsOf: fixtureURL("backgroundColor.gray-shade-900.dark.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testFirstLast() throws {
        try HTMLAssertEqual(
            li(.borderRadius(.md, variants: [.first])) {},
            try String(contentsOf: fixtureURL("borderRadius.md.first.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            li(.borderRadius(.lg, variants: [.last])) {},
            try String(contentsOf: fixtureURL("borderRadius.lg.last.html"), encoding: .utf8)
        )
    }

    @Test func testGroupHover() throws {
        try HTMLAssertEqual(
            span(.opacity(.value(100), variants: [.groupHover])) {},
            try String(contentsOf: fixtureURL("opacity.value-100.groupHover.html"), encoding: .utf8)
        )
    }

    @Test func testConvenienceExtensions() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.hover])) {},
            try String(contentsOf: fixtureURL("display.flex.hover.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.display(.grid, variants: [.focus])) {},
            try String(contentsOf: fixtureURL("display.grid.focus.html"), encoding: .utf8)
        )
    }

    @Test func testNestedVariants() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.hover, .md])) {},
            try String(contentsOf: fixtureURL("display.flex.hover.md.html"), encoding: .utf8)
        )
    }

    @Test func testContainerQuery() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.containerQuery])) {},
            try String(
                contentsOf: fixtureURL("display.flex.containerQuery.html"),
                encoding: .utf8
            )
        )
    }

    @Test func testNamedContainerQuery() throws {
        try HTMLAssertEqual(
            div(.display(.flex, variants: [.namedContainerQuery("sidebar")])) {},
            try String(
                contentsOf: fixtureURL("display.flex.namedContainerQuery.sidebar.html"),
                encoding: .utf8
            )
        )
    }
}
