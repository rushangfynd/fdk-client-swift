

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var amount: [String: Any]

        public var name: String

        public var breakup: [[String: Any]]

        public var taxExempt: Bool

        public enum CodingKeys: String, CodingKey {
            case amount

            case name

            case breakup

            case taxExempt = "tax_exempt"
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.amount = amount

            self.name = name

            self.breakup = breakup

            self.taxExempt = taxExempt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var amount: [String: Any]

        public var name: String

        public var breakup: [[String: Any]]

        public var taxExempt: Bool

        public enum CodingKeys: String, CodingKey {
            case amount

            case name

            case breakup

            case taxExempt = "tax_exempt"
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.amount = amount

            self.name = name

            self.breakup = breakup

            self.taxExempt = taxExempt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)
        }
    }
}
