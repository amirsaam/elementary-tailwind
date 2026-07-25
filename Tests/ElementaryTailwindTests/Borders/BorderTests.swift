import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct BorderTests {
    @Test func testBorderWidth() throws {
        try HTMLAssertEqual(
            div(.borderWidth(.size(1))) {},
            try String(contentsOf: fixtureURL("borderWidth.size-1.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderWidth(.size(2))) {},
            try String(contentsOf: fixtureURL("borderWidth.size-2.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderWidth(.x(1))) {},
            try String(contentsOf: fixtureURL("borderWidth.x-1.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderWidth(.t(1))) {},
            try String(contentsOf: fixtureURL("borderWidth.t-1.html"), encoding: .utf8)
        )
    }

    @Test func testBorderColor() throws {
        try HTMLAssertEqual(
            div(.borderColor(.blue)) {},
            try String(contentsOf: fixtureURL("borderColor.blue.html"), encoding: .utf8)
        )
    }

    @Test func testBorderStyle() throws {
        try HTMLAssertEqual(
            div(.borderStyle(.solid)) {},
            try String(contentsOf: fixtureURL("borderStyle.solid.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderStyle(.dashed)) {},
            try String(contentsOf: fixtureURL("borderStyle.dashed.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderStyle(.none)) {},
            try String(contentsOf: fixtureURL("borderStyle.none.html"), encoding: .utf8)
        )
    }

    @Test func testBorderRadius() throws {
        try HTMLAssertEqual(
            div(.borderRadius(.md)) {},
            try String(contentsOf: fixtureURL("borderRadius.md.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderRadius(.lg)) {},
            try String(contentsOf: fixtureURL("borderRadius.lg.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderRadius(.full)) {},
            try String(contentsOf: fixtureURL("borderRadius.full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.borderRadius(.none)) {},
            try String(contentsOf: fixtureURL("borderRadius.none.html"), encoding: .utf8)
        )
    }

    @Test func testRingWidth() throws {
        try HTMLAssertEqual(
            div(.ringWidth(.size(1))) {},
            try String(contentsOf: fixtureURL("ringWidth.size-1.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.ringWidth(.size(2))) {},
            try String(contentsOf: fixtureURL("ringWidth.size-2.html"), encoding: .utf8)
        )
    }

    @Test func testOutlineStyle() throws {
        try HTMLAssertEqual(
            div(.outlineStyle(.solid)) {},
            try String(contentsOf: fixtureURL("outlineStyle.solid.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.outlineStyle(.none)) {},
            try String(contentsOf: fixtureURL("outlineStyle.none.html"), encoding: .utf8)
        )
    }
}
