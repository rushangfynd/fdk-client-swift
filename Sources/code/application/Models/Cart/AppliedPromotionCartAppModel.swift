

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: AppliedPromotion
         Used By: Cart
     */
    class AppliedPromotion: Codable {
        public var articleQuantity: Int?

        public var promotionName: String?

        public var promotionGroup: String?

        public var discountRules: [DiscountRulesApp]?

        public var offerText: String?

        public var appliedFreeArticles: [AppliedFreeArticles]?

        public var mrpPromotion: Bool?

        public var buyRules: [BuyRules]?

        public var promoId: String?

        public var amount: Double?

        public var promotionType: String?

        public enum CodingKeys: String, CodingKey {
            case articleQuantity = "article_quantity"

            case promotionName = "promotion_name"

            case promotionGroup = "promotion_group"

            case discountRules = "discount_rules"

            case offerText = "offer_text"

            case appliedFreeArticles = "applied_free_articles"

            case mrpPromotion = "mrp_promotion"

            case buyRules = "buy_rules"

            case promoId = "promo_id"

            case amount

            case promotionType = "promotion_type"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRulesApp]? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.articleQuantity = articleQuantity

            self.promotionName = promotionName

            self.promotionGroup = promotionGroup

            self.discountRules = discountRules

            self.offerText = offerText

            self.appliedFreeArticles = appliedFreeArticles

            self.mrpPromotion = mrpPromotion

            self.buyRules = buyRules

            self.promoId = promoId

            self.amount = amount

            self.promotionType = promotionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionName = try container.decode(String.self, forKey: .promotionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionGroup = try container.decode(String.self, forKey: .promotionGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountRules = try container.decode([DiscountRulesApp].self, forKey: .discountRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyRules = try container.decode([BuyRules].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoId = try container.decode(String.self, forKey: .promoId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionType = try container.decode(String.self, forKey: .promotionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
        }
    }
}