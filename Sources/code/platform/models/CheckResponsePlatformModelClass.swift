

import Foundation
public extension PlatformClient {
    /*
         Model: CheckResponse
         Used By: Order
     */

    class CheckResponse: Codable {
        public var originalFilter: OriginalFilter?

        public var status: String?

        public var isBagLocked: Bool?

        public var affiliateId: String?

        public var lockStatus: Bool?

        public var shipmentId: String?

        public var affiliateShipmentId: String?

        public var bags: [Bags]?

        public var isShipmentLocked: Bool?

        public enum CodingKeys: String, CodingKey {
            case originalFilter = "original_filter"

            case status

            case isBagLocked = "is_bag_locked"

            case affiliateId = "affiliate_id"

            case lockStatus = "lock_status"

            case shipmentId = "shipment_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case bags

            case isShipmentLocked = "is_shipment_locked"
        }

        public init(affiliateId: String? = nil, affiliateShipmentId: String? = nil, bags: [Bags]? = nil, isBagLocked: Bool? = nil, isShipmentLocked: Bool? = nil, lockStatus: Bool? = nil, originalFilter: OriginalFilter? = nil, shipmentId: String? = nil, status: String? = nil) {
            self.originalFilter = originalFilter

            self.status = status

            self.isBagLocked = isBagLocked

            self.affiliateId = affiliateId

            self.lockStatus = lockStatus

            self.shipmentId = shipmentId

            self.affiliateShipmentId = affiliateShipmentId

            self.bags = bags

            self.isShipmentLocked = isShipmentLocked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                originalFilter = try container.decode(OriginalFilter.self, forKey: .originalFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

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
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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
                affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

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
                isShipmentLocked = try container.decode(Bool.self, forKey: .isShipmentLocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(originalFilter, forKey: .originalFilter)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isBagLocked, forKey: .isBagLocked)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(isShipmentLocked, forKey: .isShipmentLocked)
        }
    }
}
