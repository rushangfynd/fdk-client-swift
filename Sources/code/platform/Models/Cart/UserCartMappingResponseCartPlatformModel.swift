

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UserCartMappingResponse
         Used By: Cart
     */

    class UserCartMappingResponse: Codable {
        public var isValid: Bool?

        public var breakupValues: CartBreakup?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var user: UserInfo?

        public var couponText: String?

        public var gstin: String?

        public var message: String?

        public var restrictCheckout: Bool?

        public var currency: CartCurrency?

        public var comment: String?

        public var lastModified: String?

        public var items: [CartProductInfo]?

        public var deliveryChargeInfo: String?

        public var checkoutMode: String?

        public var panNo: String?

        public var deliveryPromise: ShipmentPromise?

        public var buyNow: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case isValid = "is_valid"

            case breakupValues = "breakup_values"

            case paymentSelectionLock = "payment_selection_lock"

            case user

            case couponText = "coupon_text"

            case gstin

            case message

            case restrictCheckout = "restrict_checkout"

            case currency

            case comment

            case lastModified = "last_modified"

            case items

            case deliveryChargeInfo = "delivery_charge_info"

            case checkoutMode = "checkout_mode"

            case panNo = "pan_no"

            case deliveryPromise = "delivery_promise"

            case buyNow = "buy_now"

            case id
        }

        public init(breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil, user: UserInfo? = nil) {
            self.isValid = isValid

            self.breakupValues = breakupValues

            self.paymentSelectionLock = paymentSelectionLock

            self.user = user

            self.couponText = couponText

            self.gstin = gstin

            self.message = message

            self.restrictCheckout = restrictCheckout

            self.currency = currency

            self.comment = comment

            self.lastModified = lastModified

            self.items = items

            self.deliveryChargeInfo = deliveryChargeInfo

            self.checkoutMode = checkoutMode

            self.panNo = panNo

            self.deliveryPromise = deliveryPromise

            self.buyNow = buyNow

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isValid = try container.decode(Bool.self, forKey: .isValid)

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
                user = try container.decode(UserInfo.self, forKey: .user)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                items = try container.decode([CartProductInfo].self, forKey: .items)

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

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panNo = try container.decode(String.self, forKey: .panNo)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
