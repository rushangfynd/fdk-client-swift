

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var displayName: String

        public var name: String

        public var anonymousEnable: Bool?

        public var saveCard: Bool?

        public var aggregatorName: String?

        public var list: [PaymentModeList]?

        public var displayPriority: Int

        public var isPayByCardPl: Bool?

        public var addCardEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case name

            case anonymousEnable = "anonymous_enable"

            case saveCard = "save_card"

            case aggregatorName = "aggregator_name"

            case list

            case displayPriority = "display_priority"

            case isPayByCardPl = "is_pay_by_card_pl"

            case addCardEnabled = "add_card_enabled"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.displayName = displayName

            self.name = name

            self.anonymousEnable = anonymousEnable

            self.saveCard = saveCard

            self.aggregatorName = aggregatorName

            self.list = list

            self.displayPriority = displayPriority

            self.isPayByCardPl = isPayByCardPl

            self.addCardEnabled = addCardEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var displayName: String

        public var name: String

        public var anonymousEnable: Bool?

        public var saveCard: Bool?

        public var aggregatorName: String?

        public var list: [PaymentModeList]?

        public var displayPriority: Int

        public var isPayByCardPl: Bool?

        public var addCardEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case name

            case anonymousEnable = "anonymous_enable"

            case saveCard = "save_card"

            case aggregatorName = "aggregator_name"

            case list

            case displayPriority = "display_priority"

            case isPayByCardPl = "is_pay_by_card_pl"

            case addCardEnabled = "add_card_enabled"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.displayName = displayName

            self.name = name

            self.anonymousEnable = anonymousEnable

            self.saveCard = saveCard

            self.aggregatorName = aggregatorName

            self.list = list

            self.displayPriority = displayPriority

            self.isPayByCardPl = isPayByCardPl

            self.addCardEnabled = addCardEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
        }
    }
}
