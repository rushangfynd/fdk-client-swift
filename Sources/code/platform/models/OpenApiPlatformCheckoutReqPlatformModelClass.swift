

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var billingAddress: ShippingAddress

        public var codCharges: Double

        public var cartValue: Double

        public var paymentMode: String?

        public var affiliateOrderId: String?

        public var cartItems: [OpenApiOrderItem]

        public var employeeDiscount: [String: Any]?

        public var deliveryCharges: Double

        public var couponCode: String

        public var cashbackApplied: Double

        public var orderId: String?

        public var currencyCode: String?

        public var files: [OpenApiFiles]?

        public var shippingAddress: ShippingAddress?

        public var loyaltyDiscount: Double?

        public var couponValue: Double

        public var coupon: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case cartValue = "cart_value"

            case paymentMode = "payment_mode"

            case affiliateOrderId = "affiliate_order_id"

            case cartItems = "cart_items"

            case employeeDiscount = "employee_discount"

            case deliveryCharges = "delivery_charges"

            case couponCode = "coupon_code"

            case cashbackApplied = "cashback_applied"

            case orderId = "order_id"

            case currencyCode = "currency_code"

            case files

            case shippingAddress = "shipping_address"

            case loyaltyDiscount = "loyalty_discount"

            case couponValue = "coupon_value"

            case coupon

            case paymentMethods = "payment_methods"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.cartValue = cartValue

            self.paymentMode = paymentMode

            self.affiliateOrderId = affiliateOrderId

            self.cartItems = cartItems

            self.employeeDiscount = employeeDiscount

            self.deliveryCharges = deliveryCharges

            self.couponCode = couponCode

            self.cashbackApplied = cashbackApplied

            self.orderId = orderId

            self.currencyCode = currencyCode

            self.files = files

            self.shippingAddress = shippingAddress

            self.loyaltyDiscount = loyaltyDiscount

            self.couponValue = couponValue

            self.coupon = coupon

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
