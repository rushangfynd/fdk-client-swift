

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var meta: OrderMeta?

        public var orderDate: String

        public var paymentMethods: [String: Any]?

        public var taxDetails: TaxDetails?

        public var fyndOrderId: String

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case meta

            case orderDate = "order_date"

            case paymentMethods = "payment_methods"

            case taxDetails = "tax_details"

            case fyndOrderId = "fynd_order_id"

            case prices
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            self.meta = meta

            self.orderDate = orderDate

            self.paymentMethods = paymentMethods

            self.taxDetails = taxDetails

            self.fyndOrderId = fyndOrderId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var meta: OrderMeta?

        public var orderDate: String

        public var paymentMethods: [String: Any]?

        public var taxDetails: TaxDetails?

        public var fyndOrderId: String

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case meta

            case orderDate = "order_date"

            case paymentMethods = "payment_methods"

            case taxDetails = "tax_details"

            case fyndOrderId = "fynd_order_id"

            case prices
        }

        public init(fyndOrderId: String, meta: OrderMeta? = nil, orderDate: String, paymentMethods: [String: Any]? = nil, prices: Prices? = nil, taxDetails: TaxDetails? = nil) {
            self.meta = meta

            self.orderDate = orderDate

            self.paymentMethods = paymentMethods

            self.taxDetails = taxDetails

            self.fyndOrderId = fyndOrderId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(OrderMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderDate = try container.decode(String.self, forKey: .orderDate)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
