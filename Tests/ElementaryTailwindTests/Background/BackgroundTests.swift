import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct BackgroundTests {
    @Test func testBackgroundColor() throws {
        try HTMLAssertEqual(
            div(.backgroundColor(.blue)) {},
            try String(contentsOf: fixtureURL("backgroundColor.blue.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.backgroundColor(.red.shade(500))) {},
            try String(contentsOf: fixtureURL("backgroundColor.red-shade-500.html"), encoding: .utf8))
    }

    @Test func testBackgroundAttachment() throws {
        try HTMLAssertEqual(
            div(.backgroundAttachment(.fixed)) {},
            try String(contentsOf: fixtureURL("backgroundAttachment.fixed.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.backgroundAttachment(.scroll)) {},
            try String(contentsOf: fixtureURL("backgroundAttachment.scroll.html"), encoding: .utf8))
    }

    @Test func testBackgroundClip() throws {
        try HTMLAssertEqual(
            div(.backgroundClip(.borderBox)) {},
            try String(contentsOf: fixtureURL("backgroundClip.borderBox.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.backgroundClip(.text)) {},
            try String(contentsOf: fixtureURL("backgroundClip.text.html"), encoding: .utf8))
    }

    @Test func testBackgroundSize() throws {
        try HTMLAssertEqual(
            div(.backgroundSize(.cover)) {},
            try String(contentsOf: fixtureURL("backgroundSize.cover.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.backgroundSize(.contain)) {},
            try String(contentsOf: fixtureURL("backgroundSize.contain.html"), encoding: .utf8))
    }

    @Test func testBackgroundRepeat() throws {
        try HTMLAssertEqual(
            div(.backgroundRepeat(.`repeat`)) {},
            try String(contentsOf: fixtureURL("backgroundRepeat.repeat.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.backgroundRepeat(.noRepeat)) {},
            try String(contentsOf: fixtureURL("backgroundRepeat.noRepeat.html"), encoding: .utf8))
    }

    @Test func testGradientTo() throws {
        try HTMLAssertEqual(
            div(.class(TWTGradientTo.r)) {},
            try String(contentsOf: fixtureURL("gradientTo.r.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.class(TWTGradientTo.b)) {},
            try String(contentsOf: fixtureURL("gradientTo.b.html"), encoding: .utf8))
    }
}
