

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var loyaltyDiscount: Double?

        public var couponCode: String

        public var employeeDiscount: [String: Any]?

        public var affiliateOrderId: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var files: [OpenApiFiles]?

        public var billingAddress: ShippingAddress

        public var codCharges: Double

        public var deliveryCharges: Double

        public var currencyCode: String?

        public var cartItems: [OpenApiOrderItem]

        public var shippingAddress: ShippingAddress?

        public var cartValue: Double

        public var comment: String?

        public var couponValue: Double

        public var gstin: String?

        public var paymentMode: String?

        public var cashbackApplied: Double

        public var orderId: String?

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case couponCode = "coupon_code"

            case employeeDiscount = "employee_discount"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMethods = "payment_methods"

            case files

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case cartValue = "cart_value"

            case comment

            case couponValue = "coupon_value"

            case gstin

            case paymentMode = "payment_mode"

            case cashbackApplied = "cashback_applied"

            case orderId = "order_id"

            case coupon
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.loyaltyDiscount = loyaltyDiscount

            self.couponCode = couponCode

            self.employeeDiscount = employeeDiscount

            self.affiliateOrderId = affiliateOrderId

            self.paymentMethods = paymentMethods

            self.files = files

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.cartValue = cartValue

            self.comment = comment

            self.couponValue = couponValue

            self.gstin = gstin

            self.paymentMode = paymentMode

            self.cashbackApplied = cashbackApplied

            self.orderId = orderId

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }
}
