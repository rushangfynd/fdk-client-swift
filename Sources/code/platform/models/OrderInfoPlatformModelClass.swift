

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderPriority: OrderPriority?

        public var user: UserData

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var orderValue: Double

        public var affiliateOrderId: String?

        public var coupon: String?

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var discount: Double

        public var deliveryCharges: Double

        public var payment: [String: Any]?

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case orderPriority = "order_priority"

            case user

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case orderValue = "order_value"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case billingAddress = "billing_address"

            case shipment

            case bags

            case codCharges = "cod_charges"

            case discount

            case deliveryCharges = "delivery_charges"

            case payment

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderPriority = orderPriority

            self.user = user

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.orderValue = orderValue

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.bags = bags

            self.codCharges = codCharges

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.payment = payment

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
