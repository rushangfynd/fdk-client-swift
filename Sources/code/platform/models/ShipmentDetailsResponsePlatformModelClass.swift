

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsResponse
         Used By: Orders
     */

    class ShipmentDetailsResponse: Codable {
        public var success: Bool

        public var shipments: [Shipment]?

        public var order: OrderDict?

        public enum CodingKeys: String, CodingKey {
            case success

            case shipments

            case order
        }

        public init(order: OrderDict? = nil, shipments: [Shipment]? = nil, success: Bool) {
            self.success = success

            self.shipments = shipments

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                shipments = try container.decode([Shipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
