import Elementary
import ElementaryTailwind
import TestUtilities
import Testing

struct AnimationTests {
    @Test func testAnimationNone() throws {
        try HTMLAssertEqual(
            div(.animation(.none)) {},
            try String(contentsOf: fixtureURL("animation.none.html"), encoding: .utf8)
        )
    }

    @Test func testAnimationSpin() throws {
        try HTMLAssertEqual(
            div(.animation(.spin)) {},
            try String(contentsOf: fixtureURL("animation.spin.html"), encoding: .utf8)
        )
    }

    @Test func testAnimationPing() throws {
        try HTMLAssertEqual(
            div(.animation(.ping)) {},
            try String(contentsOf: fixtureURL("animation.ping.html"), encoding: .utf8)
        )
    }

    @Test func testAnimationPulse() throws {
        try HTMLAssertEqual(
            div(.animation(.pulse)) {},
            try String(contentsOf: fixtureURL("animation.pulse.html"), encoding: .utf8)
        )
    }

    @Test func testAnimationBounce() throws {
        try HTMLAssertEqual(
            div(.animation(.bounce)) {},
            try String(contentsOf: fixtureURL("animation.bounce.html"), encoding: .utf8)
        )
    }

    @Test func testAnimationArbitrary() throws {
        try HTMLAssertEqual(
            div(.animation(.arbitrary("wiggle_1s_ease-in-out_infinite"))) {},
            try String(contentsOf: fixtureURL("animation.arbitrary.html"), encoding: .utf8)
        )
    }
}
