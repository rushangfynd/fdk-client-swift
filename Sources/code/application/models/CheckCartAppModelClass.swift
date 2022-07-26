

import Foundation
public extension ApplicationClient {
    /*
         Model: CheckCart
         Used By: Cart
     */
    class CheckCart: Codable {
        public var deliveryChargeInfo: String?

        public var cartId: Int?

        public var restrictCheckout: Bool?

        public var errorMessage: String?

        public var isValid: Bool?

        public var items: [CartProductInfo]?

        public var checkoutMode: String?

        public var storeCode: String?

        public var comment: String?

        public var uid: String?

        public var codAvailable: Bool?

        public var message: String?

        public var codCharges: Int?

        public var success: Bool?

        public var currency: CartCurrency?

        public var gstin: String?

        public var deliveryChargeOrderValue: Int?

        public var id: String?

        public var deliveryCharges: Int?

        public var breakupValues: CartBreakup?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var couponText: String?

        public var lastModified: String?

        public var userType: String?

        public var storeEmps: [[String: Any]]?

        public var codMessage: String?

        public var orderId: String?

        public var deliveryPromise: ShipmentPromise?

        public enum CodingKeys: String, CodingKey {
            case deliveryChargeInfo = "delivery_charge_info"

            case cartId = "cart_id"

            case restrictCheckout = "restrict_checkout"

            case errorMessage = "error_message"

            case isValid = "is_valid"

            case items

            case checkoutMode = "checkout_mode"

            case storeCode = "store_code"

            case comment

            case uid

            case codAvailable = "cod_available"

            case message

            case codCharges = "cod_charges"

            case success

            case currency

            case gstin

            case deliveryChargeOrderValue = "delivery_charge_order_value"

            case id

            case deliveryCharges = "delivery_charges"

            case breakupValues = "breakup_values"

            case paymentSelectionLock = "payment_selection_lock"

            case couponText = "coupon_text"

            case lastModified = "last_modified"

            case userType = "user_type"

            case storeEmps = "store_emps"

            case codMessage = "cod_message"

            case orderId = "order_id"

            case deliveryPromise = "delivery_promise"
        }

        public init(breakupValues: CartBreakup? = nil, cartId: Int? = nil, checkoutMode: String? = nil, codAvailable: Bool? = nil, codCharges: Int? = nil, codMessage: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryCharges: Int? = nil, deliveryChargeInfo: String? = nil, deliveryChargeOrderValue: Int? = nil, deliveryPromise: ShipmentPromise? = nil, errorMessage: String? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, orderId: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, storeCode: String? = nil, storeEmps: [[String: Any]]? = nil, success: Bool? = nil, uid: String? = nil, userType: String? = nil) {
            self.deliveryChargeInfo = deliveryChargeInfo

            self.cartId = cartId

            self.restrictCheckout = restrictCheckout

            self.errorMessage = errorMessage

            self.isValid = isValid

            self.items = items

            self.checkoutMode = checkoutMode

            self.storeCode = storeCode

            self.comment = comment

            self.uid = uid

            self.codAvailable = codAvailable

            self.message = message

            self.codCharges = codCharges

            self.success = success

            self.currency = currency

            self.gstin = gstin

            self.deliveryChargeOrderValue = deliveryChargeOrderValue

            self.id = id

            self.deliveryCharges = deliveryCharges

            self.breakupValues = breakupValues

            self.paymentSelectionLock = paymentSelectionLock

            self.couponText = couponText

            self.lastModified = lastModified

            self.userType = userType

            self.storeEmps = storeEmps

            self.codMessage = codMessage

            self.orderId = orderId

            self.deliveryPromise = deliveryPromise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorMessage = try container.decode(String.self, forKey: .errorMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([CartProductInfo].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAvailable = try container.decode(Bool.self, forKey: .codAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryChargeOrderValue = try container.decode(Int.self, forKey: .deliveryChargeOrderValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponText = try container.decode(String.self, forKey: .couponText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userType = try container.decode(String.self, forKey: .userType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmps = try container.decode([[String: Any]].self, forKey: .storeEmps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codMessage = try container.decode(String.self, forKey: .codMessage)

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

            do {
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(codAvailable, forKey: .codAvailable)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(deliveryChargeOrderValue, forKey: .deliveryChargeOrderValue)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(userType, forKey: .userType)

            try? container.encodeIfPresent(storeEmps, forKey: .storeEmps)

            try? container.encodeIfPresent(codMessage, forKey: .codMessage)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
        }
    }
}
