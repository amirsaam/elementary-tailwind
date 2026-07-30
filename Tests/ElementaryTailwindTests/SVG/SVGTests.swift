import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct SVGTests {
    @Test func testFill() throws {
        try HTMLAssertEqual(
            div(.fill(.blue)) {},
            try String(contentsOf: fixtureURL("fill.blue.html"), encoding: .utf8)
        )
    }

    @Test func testFillNone() throws {
        try HTMLAssertEqual(
            div(.fillNone()),
            try String(contentsOf: fixtureURL("fillNone.html"), encoding: .utf8)
        )
    }

    @Test func testFillKeyword() throws {
        try HTMLAssertEqual(
            div(.fillCurrent()) {},
            try String(contentsOf: fixtureURL("fill.current.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.fillInherit()) {},
            try String(contentsOf: fixtureURL("fill.inherit.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.fillTransparent()) {},
            try String(contentsOf: fixtureURL("fill.transparent.html"), encoding: .utf8)
        )
    }

    @Test func testStroke() throws {
        try HTMLAssertEqual(
            div(.stroke(.red)) {},
            try String(contentsOf: fixtureURL("stroke.red.html"), encoding: .utf8)
        )
    }

    @Test func testStrokeNone() throws {
        try HTMLAssertEqual(
            div(.strokeNone()),
            try String(contentsOf: fixtureURL("strokeNone.html"), encoding: .utf8)
        )
    }

    @Test func testStrokeWidth() throws {
        try HTMLAssertEqual(
            div(.strokeWidth(.size(2))) {},
            try String(contentsOf: fixtureURL("strokeWidth.size-2.html"), encoding: .utf8)
        )
    }
}
