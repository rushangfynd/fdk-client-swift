

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CartProductInfo
         Used By: PosCart
     */
    class CartProductInfo: Codable {
        public var isSet: Bool?

        public var promoMeta: PromoMeta?

        public var discount: String?

        public var bulkOffer: [String: Any]?

        public var product: CartProduct?

        public var message: String?

        public var couponMessage: String?

        public var identifiers: CartProductIdentifer

        public var quantity: Int?

        public var coupon: CouponDetails?

        public var article: ProductArticle?

        public var availability: ProductAvailability?

        public var key: String?

        public var price: ProductPriceInfo?

        public var promotionsApplied: [AppliedPromotion]?

        public var pricePerUnit: ProductPriceInfo?

        public var parentItemIdentifiers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case promoMeta = "promo_meta"

            case discount

            case bulkOffer = "bulk_offer"

            case product

            case message

            case couponMessage = "coupon_message"

            case identifiers

            case quantity

            case coupon

            case article

            case availability

            case key

            case price

            case promotionsApplied = "promotions_applied"

            case pricePerUnit = "price_per_unit"

            case parentItemIdentifiers = "parent_item_identifiers"
        }

        public init(article: ProductArticle? = nil, availability: ProductAvailability? = nil, bulkOffer: [String: Any]? = nil, coupon: CouponDetails? = nil, couponMessage: String? = nil, discount: String? = nil, identifiers: CartProductIdentifer, isSet: Bool? = nil, key: String? = nil, message: String? = nil, parentItemIdentifiers: [String: Any]? = nil, price: ProductPriceInfo? = nil, pricePerUnit: ProductPriceInfo? = nil, product: CartProduct? = nil, promotionsApplied: [AppliedPromotion]? = nil, promoMeta: PromoMeta? = nil, quantity: Int? = nil) {
            self.isSet = isSet

            self.promoMeta = promoMeta

            self.discount = discount

            self.bulkOffer = bulkOffer

            self.product = product

            self.message = message

            self.couponMessage = couponMessage

            self.identifiers = identifiers

            self.quantity = quantity

            self.coupon = coupon

            self.article = article

            self.availability = availability

            self.key = key

            self.price = price

            self.promotionsApplied = promotionsApplied

            self.pricePerUnit = pricePerUnit

            self.parentItemIdentifiers = parentItemIdentifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(CartProduct.self, forKey: .product)

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
                couponMessage = try container.decode(String.self, forKey: .couponMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponDetails.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(ProductArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                availability = try container.decode(ProductAvailability.self, forKey: .availability)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductPriceInfo.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionsApplied = try container.decode([AppliedPromotion].self, forKey: .promotionsApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(availability, forKey: .availability)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(promotionsApplied, forKey: .promotionsApplied)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
        }
    }
}