

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartDetailResponse
         Used By: Cart
     */
    class CartDetailResponse: Codable {
        public var restrictCheckout: Bool?

        public var lastModified: String?

        public var isValid: Bool?

        public var buyNow: Bool?

        public var id: String?

        public var gstin: String?

        public var couponText: String?

        public var breakupValues: CartBreakup?

        public var checkoutMode: String?

        public var comment: String?

        public var panNo: String?

        public var message: String?

        public var deliveryChargeInfo: String?

        public var currency: CartCurrency?

        public var panConfig: [String: Any]?

        public var appliedPromoDetails: [AppliedPromotion]?

        public var items: [CartProductInfo]?

        public var deliveryPromise: ShipmentPromise?

        public var paymentSelectionLock: PaymentSelectionLock?

        public enum CodingKeys: String, CodingKey {
            case restrictCheckout = "restrict_checkout"

            case lastModified = "last_modified"

            case isValid = "is_valid"

            case buyNow = "buy_now"

            case id

            case gstin

            case couponText = "coupon_text"

            case breakupValues = "breakup_values"

            case checkoutMode = "checkout_mode"

            case comment

            case panNo = "pan_no"

            case message

            case deliveryChargeInfo = "delivery_charge_info"

            case currency

            case panConfig = "pan_config"

            case appliedPromoDetails = "applied_promo_details"

            case items

            case deliveryPromise = "delivery_promise"

            case paymentSelectionLock = "payment_selection_lock"
        }

        public init(appliedPromoDetails: [AppliedPromotion]? = nil, breakupValues: CartBreakup? = nil, buyNow: Bool? = nil, checkoutMode: String? = nil, comment: String? = nil, couponText: String? = nil, currency: CartCurrency? = nil, deliveryChargeInfo: String? = nil, deliveryPromise: ShipmentPromise? = nil, gstin: String? = nil, id: String? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, lastModified: String? = nil, message: String? = nil, panConfig: [String: Any]? = nil, panNo: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, restrictCheckout: Bool? = nil) {
            self.restrictCheckout = restrictCheckout

            self.lastModified = lastModified

            self.isValid = isValid

            self.buyNow = buyNow

            self.id = id

            self.gstin = gstin

            self.couponText = couponText

            self.breakupValues = breakupValues

            self.checkoutMode = checkoutMode

            self.comment = comment

            self.panNo = panNo

            self.message = message

            self.deliveryChargeInfo = deliveryChargeInfo

            self.currency = currency

            self.panConfig = panConfig

            self.appliedPromoDetails = appliedPromoDetails

            self.items = items

            self.deliveryPromise = deliveryPromise

            self.paymentSelectionLock = paymentSelectionLock
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictCheckout = try container.decode(Bool.self, forKey: .restrictCheckout)

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
                isValid = try container.decode(Bool.self, forKey: .isValid)

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

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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
                breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                message = try container.decode(String.self, forKey: .message)

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
                currency = try container.decode(CartCurrency.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panConfig = try container.decode([String: Any].self, forKey: .panConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedPromoDetails = try container.decode([AppliedPromotion].self, forKey: .appliedPromoDetails)

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
                deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictCheckout, forKey: .restrictCheckout)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(isValid, forKey: .isValid)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(couponText, forKey: .couponText)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(deliveryChargeInfo, forKey: .deliveryChargeInfo)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(panConfig, forKey: .panConfig)

            try? container.encodeIfPresent(appliedPromoDetails, forKey: .appliedPromoDetails)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)
        }
    }
}
