

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var orderingChannel: String

        public var affiliateId: String

        public var sellerId: String

        public var customerMobileNumber: String?

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"

            case fyndOrderId = "fynd_order_id"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.orderingChannel = orderingChannel

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RefundModeConfigRequestPayload
         Used By: Order
     */

    class RefundModeConfigRequestPayload: Codable {
        public var orderingChannel: String

        public var affiliateId: String

        public var sellerId: String

        public var customerMobileNumber: String?

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case orderingChannel = "ordering_channel"

            case affiliateId = "affiliate_id"

            case sellerId = "seller_id"

            case customerMobileNumber = "customer_mobile_number"

            case fyndOrderId = "fynd_order_id"
        }

        public init(affiliateId: String, customerMobileNumber: String? = nil, fyndOrderId: String, orderingChannel: String, sellerId: String) {
            self.orderingChannel = orderingChannel

            self.affiliateId = affiliateId

            self.sellerId = sellerId

            self.customerMobileNumber = customerMobileNumber

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            sellerId = try container.decode(String.self, forKey: .sellerId)

            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}