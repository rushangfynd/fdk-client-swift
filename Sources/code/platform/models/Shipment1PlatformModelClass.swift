

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment1
         Used By: Orders
     */

    class Shipment1: Codable {
        public var shipmentStatus: String

        public var orderId: String

        public var prices: ShipmentPricesDataSet?

        public var totalItems: String

        public var rtdDone: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentStatus = "shipment_status"

            case orderId = "order_id"

            case prices

            case totalItems = "total_items"

            case rtdDone = "rtd_done"

            case shipmentId = "shipment_id"
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.shipmentStatus = shipmentStatus

            self.orderId = orderId

            self.prices = prices

            self.totalItems = totalItems

            self.rtdDone = rtdDone

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalItems = try container.decode(String.self, forKey: .totalItems)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
