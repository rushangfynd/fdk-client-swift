

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: AppliedPromotion
         Used By: PosCart
     */
    class AppliedPromotion: Codable {
        public var appliedFreeArticles: [AppliedFreeArticles]?

        public var ownership: Ownership?

        public var mrpPromotion: Bool?

        public var promotionType: String?

        public var promoId: String?

        public var buyRules: [BuyRules]?

        public var amount: Double?

        public var promotionName: String?

        public var promotionOfferText: String?

        public var discountRules: [DiscountRulesApp]?

        public var articleQuantity: Int?

        public var promotionGroup: String?

        public enum CodingKeys: String, CodingKey {
            case appliedFreeArticles = "applied_free_articles"

            case ownership

            case mrpPromotion = "mrp_promotion"

            case promotionType = "promotion_type"

            case promoId = "promo_id"

            case buyRules = "buy_rules"

            case amount

            case promotionName = "promotion_name"

            case promotionOfferText = "promotion_offer_text"

            case discountRules = "discount_rules"

            case articleQuantity = "article_quantity"

            case promotionGroup = "promotion_group"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRulesApp]? = nil, mrpPromotion: Bool? = nil, ownership: Ownership? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionOfferText: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.appliedFreeArticles = appliedFreeArticles

            self.ownership = ownership

            self.mrpPromotion = mrpPromotion

            self.promotionType = promotionType

            self.promoId = promoId

            self.buyRules = buyRules

            self.amount = amount

            self.promotionName = promotionName

            self.promotionOfferText = promotionOfferText

            self.discountRules = discountRules

            self.articleQuantity = articleQuantity

            self.promotionGroup = promotionGroup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ownership = try container.decode(Ownership.self, forKey: .ownership)

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
                promotionType = try container.decode(String.self, forKey: .promotionType)

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
                buyRules = try container.decode([BuyRules].self, forKey: .buyRules)

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
                promotionName = try container.decode(String.self, forKey: .promotionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionOfferText = try container.decode(String.self, forKey: .promotionOfferText)

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
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(promotionOfferText, forKey: .promotionOfferText)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
        }
    }
}
