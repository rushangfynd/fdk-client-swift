

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDataSet
         Used By: Orders
     */

    class OrderDataSet: Codable {
        public var shipments: [ShipmentDataSet]?

        public var orderCreatedTime: String

        public var orderId: String

        public var userInfo: UserDataSet?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case orderCreatedTime = "order_created_time"

            case orderId = "order_id"

            case userInfo = "user_info"
        }

        public init(orderCreatedTime: String, orderId: String, shipments: [ShipmentDataSet]? = nil, userInfo: UserDataSet? = nil) {
            self.shipments = shipments

            self.orderCreatedTime = orderCreatedTime

            self.orderId = orderId

            self.userInfo = userInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([ShipmentDataSet].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                userInfo = try container.decode(UserDataSet.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
        }
    }
}
