

import Foundation
public extension ApplicationClient {
    /*
         Model: CartDetailResponse
         Used By: Cart
     */
    class CartDetailResponse: Codable {
        public var lastModified: String?

        public var id: String?

        public var checkoutMode: String?

        public var items: [CartProductInfo]?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var comment: String?

        public var message: String?

        public var gstin: String?

        public var breakupValues: CartBreakup?

        public var couponText: String?

        public var restrictCheckout: Bool?

        public var currency: CartCurrency?

        public var deliveryPromise: ShipmentPromise?

        public var isValid: Bool?

        public var deliveryChargeInfo: String?

        public enum CodingKeys: String, CodingKey {
            case lastModified = "last_modified"

            case id

            case checkoutMode = "checkout_mode"

            case items

            case paymentSelectionLock = "payment_selection_lock"

            case comment

            case message

            case gstin

            case breakupValues = "breakup_values"

            case couponText = "coupon_text"

            case restrictCheckout = "restrict_checkout"

            case currency

            case deliveryPromise = "delivery_promise"

            case isValid = "is_valid"

            case deliveryChargeInfo = "delivery_charge_info"
        }

        public init(breakupValues: CartBreakup? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil) {
            self.lastModified = lastModified

            self.id = id

            self.checkoutMode = checkoutMode

            self.items = items

            self.paymentSelectionLock = paymentSelectionLock

            self.comment = comment

            self.message = message

            self.gstin = gstin

            self.breakupValues = breakupValues

            self.couponText = couponText

            self.restrictCheckout = restrictCheckout

            self.currency = currency

            self.deliveryPromise = deliveryPromise

            self.isValid = isValid

            self.deliveryChargeInfo = deliveryChargeInfo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

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
                message = try container.decode(String.self, forKey: .message)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

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
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

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
                deliveryChargeInfo = try container.decode(String.self, forKey: .deliveryChargeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)
        }
    }
}
