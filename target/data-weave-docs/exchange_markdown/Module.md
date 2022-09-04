#### _emp::email::phone::check::Module_
__________________________________________



# Index

### Functions
| Name | Description|
|------|------------|
| [validateMobileNumber](#validatemobilenumber-index ) | Describes the `validateMobileNumber` function purpose.|








__________________________________________


# Functions

## **validateMobileNumber** [↑↑](#index )

### _validateMobileNumber&#40;mobNo&#41;_

Describes the `validateMobileNumber` function purpose.

##### Parameters

| Name | Type | Description|
|------|------|------------|
| `mobNo` | Number | |


##### Example

This example shows how the `validateMobileNumber` function behaves under different inputs.

###### Source

```dataweave
%dw 2.0
output application/json
---
import * from emp::email::phone::check::Module
---
{
empId : payload.empId,
CorrectCell : validateMobileNumber(payload.number1)
}

```

###### Output

```json
{
"empId": 2022001,
"CorrectCell": true
}
```
__________________________________________






