

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var currencyCode: String?

        public var codCharges: Double

        public var files: [OpenApiFiles]?

        public var coupon: String?

        public var couponValue: Double

        public var shippingAddress: ShippingAddress?

        public var employeeDiscount: [String: Any]?

        public var cartValue: Double

        public var affiliateOrderId: String?

        public var couponCode: String

        public var billingAddress: ShippingAddress

        public var cartItems: [OpenApiOrderItem]

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cashbackApplied: Double

        public var gstin: String?

        public var loyaltyDiscount: Double?

        public var comment: String?

        public var orderId: String?

        public var deliveryCharges: Double

        public var paymentMode: String?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case codCharges = "cod_charges"

            case files

            case coupon

            case couponValue = "coupon_value"

            case shippingAddress = "shipping_address"

            case employeeDiscount = "employee_discount"

            case cartValue = "cart_value"

            case affiliateOrderId = "affiliate_order_id"

            case couponCode = "coupon_code"

            case billingAddress = "billing_address"

            case cartItems = "cart_items"

            case paymentMethods = "payment_methods"

            case cashbackApplied = "cashback_applied"

            case gstin

            case loyaltyDiscount = "loyalty_discount"

            case comment

            case orderId = "order_id"

            case deliveryCharges = "delivery_charges"

            case paymentMode = "payment_mode"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.currencyCode = currencyCode

            self.codCharges = codCharges

            self.files = files

            self.coupon = coupon

            self.couponValue = couponValue

            self.shippingAddress = shippingAddress

            self.employeeDiscount = employeeDiscount

            self.cartValue = cartValue

            self.affiliateOrderId = affiliateOrderId

            self.couponCode = couponCode

            self.billingAddress = billingAddress

            self.cartItems = cartItems

            self.paymentMethods = paymentMethods

            self.cashbackApplied = cashbackApplied

            self.gstin = gstin

            self.loyaltyDiscount = loyaltyDiscount

            self.comment = comment

            self.orderId = orderId

            self.deliveryCharges = deliveryCharges

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
