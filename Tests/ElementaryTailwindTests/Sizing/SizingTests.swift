import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct SizingTests {
    @Test func testWidth() throws {
        try HTMLAssertEqual(
            div(.width(.auto)) {},
            try String(contentsOf: fixtureURL("width-auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.width(.full)) {},
            try String(contentsOf: fixtureURL("width-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.width(.size(4))) {},
            try String(contentsOf: fixtureURL("width-4.html"), encoding: .utf8)
        )
    }

    @Test func testHeight() throws {
        try HTMLAssertEqual(
            div(.height(.auto)) {},
            try String(contentsOf: fixtureURL("height-auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.height(.full)) {},
            try String(contentsOf: fixtureURL("height-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.height(.size(4))) {},
            try String(contentsOf: fixtureURL("height-4.html"), encoding: .utf8)
        )
    }

    @Test func testMaxWidth() throws {
        try HTMLAssertEqual(
            div(.maxWidth(.full)) {},
            try String(contentsOf: fixtureURL("maxWidth-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.maxWidth(.lg)) {},
            try String(contentsOf: fixtureURL("maxWidth-lg.html"), encoding: .utf8)
        )
    }

    @Test func testMaxHeight() throws {
        try HTMLAssertEqual(
            div(.maxHeight(.full)) {},
            try String(contentsOf: fixtureURL("maxHeight-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.maxHeight(.size(4))) {},
            try String(contentsOf: fixtureURL("maxHeight-4.html"), encoding: .utf8)
        )
    }

    @Test func testMinWidth() throws {
        try HTMLAssertEqual(
            div(.minWidth(.full)) {},
            try String(contentsOf: fixtureURL("minWidth-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.minWidth(.zero)) {},
            try String(contentsOf: fixtureURL("minWidth-zero.html"), encoding: .utf8)
        )
    }

    @Test func testMinHeight() throws {
        try HTMLAssertEqual(
            div(.minHeight(.full)) {},
            try String(contentsOf: fixtureURL("minHeight-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.minHeight(.zero)) {},
            try String(contentsOf: fixtureURL("minHeight-zero.html"), encoding: .utf8)
        )
    }

    @Test func testSize() throws {
        try HTMLAssertEqual(
            div(.size(.size(4))) {},
            try String(contentsOf: fixtureURL("size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.size(.full)) {},
            try String(contentsOf: fixtureURL("size-full.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.size(.fraction("1/2"))) {},
            try String(contentsOf: fixtureURL("size-fraction.html"), encoding: .utf8)
        )
    }

    @Test func testSizeArbitrary() throws {
        try HTMLAssertEqual(
            div(.size(.arbitrary("2rem"))) {},
            try String(contentsOf: fixtureURL("size.arbitrary.html"), encoding: .utf8)
        )
    }
}
