

import Foundation
public extension PlatformClient {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var identifiers: Identifier

        public var ownership: Ownership

        public var code: String

        public var state: State?

        public var schedule: CouponSchedule?

        public var dateMeta: CouponDateMeta?

        public var author: CouponAuthor?

        public var rule: [Rule]

        public var tags: [String]?

        public var typeSlug: String

        public var validation: Validation?

        public var validity: Validity

        public var action: CouponAction?

        public var displayMeta: DisplayMeta

        public var restrictions: Restrictions?

        public var ruleDefinition: RuleDefinition

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case ownership

            case code

            case state

            case schedule = "_schedule"

            case dateMeta = "date_meta"

            case author

            case rule

            case tags

            case typeSlug = "type_slug"

            case validation

            case validity

            case action

            case displayMeta = "display_meta"

            case restrictions

            case ruleDefinition = "rule_definition"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.identifiers = identifiers

            self.ownership = ownership

            self.code = code

            self.state = state

            self.schedule = schedule

            self.dateMeta = dateMeta

            self.author = author

            self.rule = rule

            self.tags = tags

            self.typeSlug = typeSlug

            self.validation = validation

            self.validity = validity

            self.action = action

            self.displayMeta = displayMeta

            self.restrictions = restrictions

            self.ruleDefinition = ruleDefinition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            code = try container.decode(String.self, forKey: .code)

            do {
                state = try container.decode(State.self, forKey: .state)

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

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

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

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
        }
    }
}
