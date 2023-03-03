

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatusHistory
         Used By: Order
     */

    class BagStatusHistory: Codable {
        public var bagStateMapper: BagStateMapper

        public var shipmentId: String

        public var stateId: Int

        public var updatedAt: String?

        public var kafkaSync: Bool?

        public var bshId: Int

        public var createdAt: String

        public var stateType: String?

        public var bagId: Int

        public var reasons: [[String: Any]]?

        public var appDisplayName: Bool?

        public var displayName: Bool?

        public var forward: Bool?

        public var deliveryPartnerId: Int?

        public var deliveryAwbNumber: String?

        public var status: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case bagStateMapper = "bag_state_mapper"

            case shipmentId = "shipment_id"

            case stateId = "state_id"

            case updatedAt = "updated_at"

            case kafkaSync = "kafka_sync"

            case bshId = "bsh_id"

            case createdAt = "created_at"

            case stateType = "state_type"

            case bagId = "bag_id"

            case reasons

            case appDisplayName = "app_display_name"

            case displayName = "display_name"

            case forward

            case deliveryPartnerId = "delivery_partner_id"

            case deliveryAwbNumber = "delivery_awb_number"

            case status

            case storeId = "store_id"
        }

        public init(appDisplayName: Bool? = nil, bagId: Int, bagStateMapper: BagStateMapper, bshId: Int, createdAt: String, deliveryAwbNumber: String? = nil, deliveryPartnerId: Int? = nil, displayName: Bool? = nil, forward: Bool? = nil, kafkaSync: Bool? = nil, reasons: [[String: Any]]? = nil, shipmentId: String, stateId: Int, stateType: String? = nil, status: String, storeId: Int, updatedAt: String? = nil) {
            self.bagStateMapper = bagStateMapper

            self.shipmentId = shipmentId

            self.stateId = stateId

            self.updatedAt = updatedAt

            self.kafkaSync = kafkaSync

            self.bshId = bshId

            self.createdAt = createdAt

            self.stateType = stateType

            self.bagId = bagId

            self.reasons = reasons

            self.appDisplayName = appDisplayName

            self.displayName = displayName

            self.forward = forward

            self.deliveryPartnerId = deliveryPartnerId

            self.deliveryAwbNumber = deliveryAwbNumber

            self.status = status

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            stateId = try container.decode(Int.self, forKey: .stateId)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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

            bshId = try container.decode(Int.self, forKey: .bshId)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appDisplayName = try container.decode(Bool.self, forKey: .appDisplayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

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
                deliveryPartnerId = try container.decode(Int.self, forKey: .deliveryPartnerId)

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

            status = try container.decode(String.self, forKey: .status)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(stateId, forKey: .stateId)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(kafkaSync, forKey: .kafkaSync)

            try? container.encodeIfPresent(bshId, forKey: .bshId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(forward, forKey: .forward)

            try? container.encode(deliveryPartnerId, forKey: .deliveryPartnerId)

            try? container.encode(deliveryAwbNumber, forKey: .deliveryAwbNumber)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
