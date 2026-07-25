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
    }

    @Test func testGap() throws {
        try HTMLAssertEqual(
            div(.gap(4)) {},
            try String(contentsOf: fixtureURL("gap-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.gapX(4)) {},
            try String(contentsOf: fixtureURL("gap-x-4.html"), encoding: .utf8)
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
    }

    @Test func testInset() throws {
        try HTMLAssertEqual(
            div(.inset(.size(4))) {},
            try String(contentsOf: fixtureURL("inset-4.html"), encoding: .utf8)
        )
    }

    @Test func testZIndex() throws {
        try HTMLAssertEqual(
            div(.zIndex(.number(10))) {},
            try String(contentsOf: fixtureURL("z-10.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.zIndex(.auto)) {},
            try String(contentsOf: fixtureURL("z-auto.html"), encoding: .utf8)
        )
    }
}
