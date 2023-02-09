

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformOrderItems
         Used By: Orders
     */

    class PlatformOrderItems: Codable {
        public var orderId: String?

        public var paymentMode: String?

        public var userInfo: UserDataInfo?

        public var totalOrderValue: Double?

        public var breakupValues: [PlatformBreakupValues]?

        public var orderValue: Double?

        public var channel: PlatformChannel?

        public var shipments: [PlatformShipment]?

        public var orderCreatedTime: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case userInfo = "user_info"

            case totalOrderValue = "total_order_value"

            case breakupValues = "breakup_values"

            case orderValue = "order_value"

            case channel

            case shipments

            case orderCreatedTime = "order_created_time"

            case meta
        }

        public init(breakupValues: [PlatformBreakupValues]? = nil, channel: PlatformChannel? = nil, meta: [String: Any]? = nil, orderCreatedTime: String? = nil, orderId: String? = nil, orderValue: Double? = nil, paymentMode: String? = nil, shipments: [PlatformShipment]? = nil, totalOrderValue: Double? = nil, userInfo: UserDataInfo? = nil) {
            self.orderId = orderId

            self.paymentMode = paymentMode

            self.userInfo = userInfo

            self.totalOrderValue = totalOrderValue

            self.breakupValues = breakupValues

            self.orderValue = orderValue

            self.channel = channel

            self.shipments = shipments

            self.orderCreatedTime = orderCreatedTime

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserDataInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([PlatformBreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderValue = try container.decode(Double.self, forKey: .orderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(PlatformChannel.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
