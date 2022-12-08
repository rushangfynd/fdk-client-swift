

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var coupon: String?

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var paymentMode: String

        public var items: [String: Any]

        public var user: UserData

        public var shipment: ShipmentData?

        public var codCharges: Double

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var orderPriority: OrderPriority?

        public var discount: Double

        public var deliveryCharges: Double

        public var billingAddress: OrderUser

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case coupon

            case bags

            case payment

            case paymentMode = "payment_mode"

            case items

            case user

            case shipment

            case codCharges = "cod_charges"

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case orderPriority = "order_priority"

            case discount

            case deliveryCharges = "delivery_charges"

            case billingAddress = "billing_address"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.bags = bags

            self.payment = payment

            self.paymentMode = paymentMode

            self.items = items

            self.user = user

            self.shipment = shipment

            self.codCharges = codCharges

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.orderPriority = orderPriority

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.billingAddress = billingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            items = try container.decode([String: Any].self, forKey: .items)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        }
    }
}
