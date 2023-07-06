

import Foundation

public extension PlatformClient.Order {
    /*
         Model: CheckResponse
         Used By: Order
     */

    class CheckResponse: Codable {
        public var status: String?

        public var affiliateId: String?

        public var bags: [Bags]?

        public var isBagLocked: Bool?

        public var affiliateShipmentId: String?

        public var isShipmentLocked: Bool?

        public var lockStatus: String?

        public var originalFilter: OriginalFilter?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case affiliateId = "affiliate_id"

            case bags

            case isBagLocked = "is_bag_locked"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isShipmentLocked = "is_shipment_locked"

            case lockStatus = "lock_status"

            case originalFilter = "original_filter"

            case shipmentId = "shipment_id"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, bags: [Bags]? = nil, isBagLocked: Bool? = nil, isShipmentLocked: Bool? = nil, lockStatus: String? = nil, originalFilter: OriginalFilter? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.status = status

            self.affiliateId = affiliateId

            self.bags = bags

            self.isBagLocked = isBagLocked

            self.affiliateShipmentId = affiliateShipmentId

            self.isShipmentLocked = isShipmentLocked

            self.lockStatus = lockStatus

            self.originalFilter = originalFilter

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isBagLocked = try container.decode(Bool.self, forKey: .isBagLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShipmentLocked = try container.decode(Bool.self, forKey: .isShipmentLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(String.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                originalFilter = try container.decode(OriginalFilter.self, forKey: .originalFilter)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(isBagLocked, forKey: .isBagLocked)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isShipmentLocked, forKey: .isShipmentLocked)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(originalFilter, forKey: .originalFilter)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: CheckResponse
         Used By: Order
     */

    class CheckResponse: Codable {
        public var status: String?

        public var affiliateId: String?

        public var bags: [Bags]?

        public var isBagLocked: Bool?

        public var affiliateShipmentId: String?

        public var isShipmentLocked: Bool?

        public var lockStatus: String?

        public var originalFilter: OriginalFilter?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case affiliateId = "affiliate_id"

            case bags

            case isBagLocked = "is_bag_locked"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isShipmentLocked = "is_shipment_locked"

            case lockStatus = "lock_status"

            case originalFilter = "original_filter"

            case shipmentId = "shipment_id"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, bags: [Bags]? = nil, isBagLocked: Bool? = nil, isShipmentLocked: Bool? = nil, lockStatus: String? = nil, originalFilter: OriginalFilter? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.status = status

            self.affiliateId = affiliateId

            self.bags = bags

            self.isBagLocked = isBagLocked

            self.affiliateShipmentId = affiliateShipmentId

            self.isShipmentLocked = isShipmentLocked

            self.lockStatus = lockStatus

            self.originalFilter = originalFilter

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isBagLocked = try container.decode(Bool.self, forKey: .isBagLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShipmentLocked = try container.decode(Bool.self, forKey: .isShipmentLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(String.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                originalFilter = try container.decode(OriginalFilter.self, forKey: .originalFilter)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(isBagLocked, forKey: .isBagLocked)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isShipmentLocked, forKey: .isShipmentLocked)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(originalFilter, forKey: .originalFilter)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
