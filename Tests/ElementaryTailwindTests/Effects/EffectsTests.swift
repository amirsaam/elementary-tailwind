import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct EffectsTests {
    @Test func testBoxShadow() throws {
        try HTMLAssertEqual(div(.boxShadow(.sm)) {}, try String(contentsOf: fixtureURL("boxShadow.sm.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.boxShadow(.md)) {}, try String(contentsOf: fixtureURL("boxShadow.md.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.boxShadow(.lg)) {}, try String(contentsOf: fixtureURL("boxShadow.lg.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.boxShadow(.none)) {}, try String(contentsOf: fixtureURL("boxShadow.none.html"), encoding: .utf8))
    }

    @Test func testOpacity() throws {
        try HTMLAssertEqual(div(.opacity(.value(50))) {}, try String(contentsOf: fixtureURL("opacity.value-50.html"), encoding: .utf8))
        try HTMLAssertEqual(div(.opacity(.value(100))) {}, try String(contentsOf: fixtureURL("opacity.value-100.html"), encoding: .utf8))
    }

    @Test func testMixBlendMode() throws {
        try HTMLAssertEqual(div(.mixBlendMode(.normal)) {}, try String(contentsOf: fixtureURL("mixBlendMode.normal.html"), encoding: .utf8))
        try HTMLAssertEqual(
            div(.mixBlendMode(.multiply)) {},
            try String(contentsOf: fixtureURL("mixBlendMode.multiply.html"), encoding: .utf8))
    }
}
