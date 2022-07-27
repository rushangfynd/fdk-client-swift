

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment1
         Used By: Orders
     */

    class Shipment1: Codable {
        public var rtdDone: String

        public var orderId: String

        public var prices: ShipmentPricesDataSet?

        public var totalItems: String

        public var shipmentId: String

        public var shipmentStatus: String

        public enum CodingKeys: String, CodingKey {
            case rtdDone = "rtd_done"

            case orderId = "order_id"

            case prices

            case totalItems = "total_items"

            case shipmentId = "shipment_id"

            case shipmentStatus = "shipment_status"
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.rtdDone = rtdDone

            self.orderId = orderId

            self.prices = prices

            self.totalItems = totalItems

            self.shipmentId = shipmentId

            self.shipmentStatus = shipmentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalItems = try container.decode(String.self, forKey: .totalItems)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
        }
    }
}
