

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var orderDate: String

        public var fyndOrderId: String

        public var paymentMethods: [String: Any]?

        public var meta: OrderMeta?

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case orderDate = "order_date"

            case fyndOrderId = "fynd_order_id"

            case paymentMethods = "payment_methods"

            case meta

            case prices
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil) {
            self.orderDate = orderDate

            self.fyndOrderId = fyndOrderId

            self.paymentMethods = paymentMethods

            self.meta = meta

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
