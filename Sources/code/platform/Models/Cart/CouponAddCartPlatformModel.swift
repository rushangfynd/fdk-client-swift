

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var rule: [Rule]

        public var validity: Validity

        public var code: String

        public var identifiers: Identifier

        public var displayMeta: DisplayMeta

        public var ownership: Ownership

        public var ruleDefinition: RuleDefinition

        public var state: State?

        public var typeSlug: String

        public var dateMeta: CouponDateMeta?

        public var validation: Validation?

        public var author: CouponAuthor?

        public var tags: [String]?

        public var restrictions: Restrictions?

        public var action: CouponAction?

        public var schedule: CouponSchedule?

        public enum CodingKeys: String, CodingKey {
            case rule

            case validity

            case code

            case identifiers

            case displayMeta = "display_meta"

            case ownership

            case ruleDefinition = "rule_definition"

            case state

            case typeSlug = "type_slug"

            case dateMeta = "date_meta"

            case validation

            case author

            case tags

            case restrictions

            case action

            case schedule = "_schedule"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.rule = rule

            self.validity = validity

            self.code = code

            self.identifiers = identifiers

            self.displayMeta = displayMeta

            self.ownership = ownership

            self.ruleDefinition = ruleDefinition

            self.state = state

            self.typeSlug = typeSlug

            self.dateMeta = dateMeta

            self.validation = validation

            self.author = author

            self.tags = tags

            self.restrictions = restrictions

            self.action = action

            self.schedule = schedule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rule = try container.decode([Rule].self, forKey: .rule)

            validity = try container.decode(Validity.self, forKey: .validity)

            code = try container.decode(String.self, forKey: .code)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}
