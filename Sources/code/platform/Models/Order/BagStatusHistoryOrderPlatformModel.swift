

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var stateId: Int?

        public var stateType: String?

        public var displayName: String?

        public var shipmentId: String?

        public var reasons: [[String: Any]]?

        public var storeId: Int?

        public var kafkaSync: Bool?

        public var bagId: Int?

        public var createdAt: String?

        public var appDisplayName: String?

        public var deliveryAwbNumber: String?

        public var forward: Bool?

        public var bshId: Int?

        public var status: String

        public var deliveryPartnerId: Int?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public enum CodingKeys: String, CodingKey {
            case stateId = "state_id"

            case stateType = "state_type"

            case displayName = "display_name"

            case shipmentId = "shipment_id"

            case reasons

            case storeId = "store_id"

            case kafkaSync = "kafka_sync"

            case bagId = "bag_id"

            case createdAt = "created_at"

            case appDisplayName = "app_display_name"

            case deliveryAwbNumber = "delivery_awb_number"

            case forward

            case bshId = "bsh_id"

            case status

            case deliveryPartnerId = "delivery_partner_id"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"
        }

        public init(appDisplayName: String? = nil, bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, bshId: Int? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: String? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String, storeId: Int? = nil, updatedAt: String? = nil) {
            self.stateId = stateId

            self.stateType = stateType

            self.displayName = displayName

            self.shipmentId = shipmentId

            self.reasons = reasons

            self.storeId = storeId

            self.kafkaSync = kafkaSync

            self.bagId = bagId

            self.createdAt = createdAt

            self.appDisplayName = appDisplayName

            self.deliveryAwbNumber = deliveryAwbNumber

            self.forward = forward

            self.bshId = bshId

            self.status = status

            self.deliveryPartnerId = deliveryPartnerId

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stateId = try container.decode(Int.self, forKey: .stateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bshId = try container.decode(Int.self, forKey: .bshId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(forward, forKey: .forward)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var stateId: Int?

        public var stateType: String?

        public var displayName: String?

        public var shipmentId: String?

        public var reasons: [[String: Any]]?

        public var storeId: Int?

        public var kafkaSync: Bool?

        public var bagId: Int?

        public var createdAt: String?

        public var appDisplayName: String?

        public var deliveryAwbNumber: String?

        public var forward: Bool?

        public var bshId: Int?

        public var status: String

        public var deliveryPartnerId: Int?

        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public enum CodingKeys: String, CodingKey {
            case stateId = "state_id"

            case stateType = "state_type"

            case displayName = "display_name"

            case shipmentId = "shipment_id"

            case reasons

            case storeId = "store_id"

            case kafkaSync = "kafka_sync"

            case bagId = "bag_id"

            case createdAt = "created_at"

            case appDisplayName = "app_display_name"

            case deliveryAwbNumber = "delivery_awb_number"

            case forward

            case bshId = "bsh_id"

            case status

            case deliveryPartnerId = "delivery_partner_id"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"
        }

        public init(appDisplayName: String? = nil, bagId: Int? = nil, bagStateMapper: BagStateMapper? = nil, bshId: Int? = nil, createdAt: String? = nil, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: String? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String? = nil, stateId: Int? = nil, stateType: String? = nil, status: String, storeId: Int? = nil, updatedAt: String? = nil) {
            self.stateId = stateId

            self.stateType = stateType

            self.displayName = displayName

            self.shipmentId = shipmentId

            self.reasons = reasons

            self.storeId = storeId

            self.kafkaSync = kafkaSync

            self.bagId = bagId

            self.createdAt = createdAt

            self.appDisplayName = appDisplayName

            self.deliveryAwbNumber = deliveryAwbNumber

            self.forward = forward

            self.bshId = bshId

            self.status = status

            self.deliveryPartnerId = deliveryPartnerId

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stateId = try container.decode(Int.self, forKey: .stateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaSync = try container.decode(Bool.self, forKey: .kafkaSync)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(String.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAwbNumber = try container.decode(String.self, forKey: .deliveryAwbNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forward = try container.decode(Bool.self, forKey: .forward)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bshId = try container.decode(Int.self, forKey: .bshId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            do {
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encode(forward, forKey: .forward)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
        }
    }
}
