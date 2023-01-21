

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionUpdate
         Used By: Cart
     */

    class PromotionUpdate: Codable {
        public var buyRules: [String: ItemCriteria]

        public var promoGroup: String

        public var applyAllDiscount: Bool?

        public var visiblility: Visibility?

        public var stackable: Bool?

        public var schedule: PromotionSchedule?

        public var restrictions: Restrictions1?

        public var applicationId: String

        public var applyExclusive: String?

        public var applyPriority: Int?

        public var code: String?

        public var postOrderAction: PromotionAction?

        public var currency: String?

        public var author: PromotionAuthor?

        public var displayMeta: DisplayMeta1

        public var mode: String

        public var discountRules: [DiscountRule]

        public var promotionType: String

        public var ownership: Ownership1

        public var dateMeta: PromotionDateMeta?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case buyRules = "buy_rules"

            case promoGroup = "promo_group"

            case applyAllDiscount = "apply_all_discount"

            case visiblility

            case stackable

            case schedule = "_schedule"

            case restrictions

            case applicationId = "application_id"

            case applyExclusive = "apply_exclusive"

            case applyPriority = "apply_priority"

            case code

            case postOrderAction = "post_order_action"

            case currency

            case author

            case displayMeta = "display_meta"

            case mode

            case discountRules = "discount_rules"

            case promotionType = "promotion_type"

            case ownership

            case dateMeta = "date_meta"

            case customJson = "_custom_json"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.buyRules = buyRules

            self.promoGroup = promoGroup

            self.applyAllDiscount = applyAllDiscount

            self.visiblility = visiblility

            self.stackable = stackable

            self.schedule = schedule

            self.restrictions = restrictions

            self.applicationId = applicationId

            self.applyExclusive = applyExclusive

            self.applyPriority = applyPriority

            self.code = code

            self.postOrderAction = postOrderAction

            self.currency = currency

            self.author = author

            self.displayMeta = displayMeta

            self.mode = mode

            self.discountRules = discountRules

            self.promotionType = promotionType

            self.ownership = ownership

            self.dateMeta = dateMeta

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            mode = try container.decode(String.self, forKey: .mode)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            promotionType = try container.decode(String.self, forKey: .promotionType)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
