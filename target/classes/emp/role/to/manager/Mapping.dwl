%dw 2.0
input payload json
output application/json
---
employee : payload map {
        Name : $.name,
        empId : $.empId,
        role : "Manager"
    }