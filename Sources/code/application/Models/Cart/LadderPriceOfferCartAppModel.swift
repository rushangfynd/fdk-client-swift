

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: LadderPriceOffer
         Used By: Cart
     */
    class LadderPriceOffer: Codable {
        public var freeGiftItems: [FreeGiftItems]?

        public var calculateOn: String?

        public var offerPrices: [LadderOfferItem]?

        public var offerText: String?

        public var id: String?

        public var validTill: String?

        public var promotionGroup: String?

        public var description: String?

        public var discountRules: [[String: Any]]?

        public var buyRules: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case freeGiftItems = "free_gift_items"

            case calculateOn = "calculate_on"

            case offerPrices = "offer_prices"

            case offerText = "offer_text"

            case id

            case validTill = "valid_till"

            case promotionGroup = "promotion_group"

            case description

            case discountRules = "discount_rules"

            case buyRules = "buy_rules"
        }

        public init(buyRules: [String: Any]? = nil, calculateOn: String? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, freeGiftItems: [FreeGiftItems]? = nil, id: String? = nil, offerPrices: [LadderOfferItem]? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.freeGiftItems = freeGiftItems

            self.calculateOn = calculateOn

            self.offerPrices = offerPrices

            self.offerText = offerText

            self.id = id

            self.validTill = validTill

            self.promotionGroup = promotionGroup

            self.description = description

            self.discountRules = discountRules

            self.buyRules = buyRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                freeGiftItems = try container.decode([FreeGiftItems].self, forKey: .freeGiftItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerPrices = try container.decode([LadderOfferItem].self, forKey: .offerPrices)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validTill = try container.decode(String.self, forKey: .validTill)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountRules = try container.decode([[String: Any]].self, forKey: .discountRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyRules = try container.decode([String: Any].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
        }
    }
}
