

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var user: UserData

        public var items: [String: Any]

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var paymentMode: String

        public var deliveryCharges: Double

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var coupon: String?

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case user

            case items

            case orderPriority = "order_priority"

            case bags

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"

            case payment

            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.user = user

            self.items = items

            self.orderPriority = orderPriority

            self.bags = bags

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges

            self.payment = payment

            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var user: UserData

        public var items: [String: Any]

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var paymentMode: String

        public var deliveryCharges: Double

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var coupon: String?

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case user

            case items

            case orderPriority = "order_priority"

            case bags

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"

            case payment

            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.user = user

            self.items = items

            self.orderPriority = orderPriority

            self.bags = bags

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges

            self.payment = payment

            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
