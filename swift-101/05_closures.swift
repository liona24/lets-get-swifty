func test(foo: Int, _ body: (Int) -> ()) {
    print("In test: foo = \(foo)")
    body(foo)
    print("Returning from test..")
}

test(foo: 1) { bar in
    print("In body: bar = \(bar)")
}
