%dw 2.0
import * from dw::Runtime
/**
* Describes the `validateMobileNumber` function purpose.
*
* === Parameters
*
* [%header, cols="1,1,3"]
* |===
* | Name | Type | Description
* | `mobNo` | Number | 
* |===
*
* === Example
*
* This example shows how the `validateMobileNumber` function behaves under different inputs.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
*import * from emp::email::phone::check::Module
---
{
    empId : payload.empId,
    CorrectCell : validateMobileNumber(payload.number1)
}
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
*{
  "empId": 2022001,
  "CorrectCell": true
}
* ----
*
*/
fun validateMobileNumber(mobNo) = if(mobNo matches ("(0|91)?[6-9][0-9]{9}")) true else fail('Mobile number is not correct')