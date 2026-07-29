import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct SpacingTests {
    @Test func testPadding() throws {
        try HTMLAssertEqual(
            div(.padding(.size(4))) {},
            try String(contentsOf: fixtureURL("padding.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.paddingX(.size(4))) {},
            try String(contentsOf: fixtureURL("paddingX.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.paddingY(.size(4))) {},
            try String(contentsOf: fixtureURL("paddingY.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.paddingTop(.size(4))) {},
            try String(contentsOf: fixtureURL("paddingTop.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.paddingBottom(.size(4))) {},
            try String(contentsOf: fixtureURL("paddingBottom.size-4.html"), encoding: .utf8)
        )
    }

    @Test func testMargin() throws {
        try HTMLAssertEqual(
            div(.margin(.size(4))) {},
            try String(contentsOf: fixtureURL("margin.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.margin(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("margin.negative.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.marginX(.size(4))) {},
            try String(contentsOf: fixtureURL("marginX.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.marginX(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("marginX.negative.size-4.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.marginY(.auto)) {},
            try String(contentsOf: fixtureURL("marginY.auto.html"), encoding: .utf8)
        )
        try HTMLAssertEqual(
            div(.marginY(.size(4), negative: true)) {},
            try String(contentsOf: fixtureURL("marginY.negative.size-4.html"), encoding: .utf8)
        )
    }
}
