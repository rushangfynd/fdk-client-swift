



##### [Back to Platform docs](./README.md)

## OrderManage Methods
Update Status all platform shipment api(s)
* [statusInternalUpdate](#statusinternalupdate)
* [getShipmentHistory](#getshipmenthistory)



## Methods with example and description


#### statusInternalUpdate





```swift
client.ordermanage.statusInternalUpdate(body: body) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- |
| body | PlatformShipmentStatusInternal | yes | Request body |




*Returned Response:*




[ResponseDetail](#ResponseDetail)

We are processing the report!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json

```
</details>









---


#### getShipmentHistory





```swift
client.ordermanage.getShipmentHistory(bagId: bagId) { (response, error) in
    // Use response
}
```





| Argument | Type | Required | Description |
| -------- | ---- | -------- | ----------- | 
| bagId | Int | yes |  |  





*Returned Response:*




[ShipmentHistoryResponse](#ShipmentHistoryResponse)

It shows the journey of the shipment!




<details>
<summary><i>&nbsp; Example:</i></summary>

```json
{
  "activity_history": [
    {
      "message": {
        "message": "Bag status changed to pending",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    },
    {
      "message": {
        "message": "Bag status changed to placed",
        "store_id": 10,
        "store_code": "SF94",
        "store_name": "shub",
        "reason": {},
        "type": "activity_status"
      },
      "createdat": "01 Apr 2022, 17:57:PM",
      "user": "system",
      "type": "activity_status",
      "l1_detail": null,
      "l2_detail": null,
      "l3_detail": null,
      "ticket_id": null,
      "ticket_url": null
    }
  ]
}
```
</details>









---



### Schemas

 
 
 #### [ProductDetail](#ProductDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | identifier | String? |  yes  |  |
 | quantity | Int? |  yes  |  |

---


 
 
 #### [ShipmentBody](#ShipmentBody)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | reason | [Int]? |  yes  |  |
 | dataUpdate | [String: Any]? |  yes  |  |
 | products | [[ProductDetail](#ProductDetail)]? |  yes  |  |
 | storeInvoiceId | String? |  yes  |  |

---


 
 
 #### [ShipmentDetail](#ShipmentDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | shipmentId | [ShipmentBody](#ShipmentBody)? |  yes  |  |

---


 
 
 #### [Statuses](#Statuses)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | excludeBagsNextState | String |  no  |  |
 | shipments | [ShipmentDetail](#ShipmentDetail)? |  yes  |  |
 | status | String |  no  |  |

---


 
 
 #### [PlatformShipmentStatusInternal](#PlatformShipmentStatusInternal)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | statuses | [Statuses](#Statuses)? |  yes  |  |
 | forceTransition | Bool? |  yes  |  |
 | task | Bool? |  yes  |  |

---


 
 
 #### [ResponseDetail](#ResponseDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | [String]? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [ErrorDetail](#ErrorDetail)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String? |  yes  |  |
 | success | Bool? |  yes  |  |

---


 
 
 #### [HistoryDict](#HistoryDict)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | message | String |  no  |  |
 | ticketId | String? |  yes  |  |
 | user | String |  no  |  |
 | l1Detail | String? |  yes  |  |
 | ticketUrl | String? |  yes  |  |
 | l3Detail | String? |  yes  |  |
 | createdat | String |  no  |  |
 | l2Detail | String? |  yes  |  |
 | type | String |  no  |  |

---


 
 
 #### [ShipmentHistoryResponse](#ShipmentHistoryResponse)

 | Properties | Type | Nullable | Description |
 | ---------- | ---- | -------- | ----------- |
 | activityHistory | [[HistoryDict](#HistoryDict)]? |  yes  |  |

---


