%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from emp::email::phone::check::Module
var numb = 8175955520
---
"Module" describedBy [
    "validateMobileNumber" describedBy [
        "It should do something" in do {
            validateMobileNumber(numb) must beBoolean()
        },
    ],
]
