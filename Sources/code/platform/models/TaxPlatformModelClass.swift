

import Foundation
public extension PlatformClient {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var amount: [String: Any]

        public var taxExempt: Bool

        public var breakup: [[String: Any]]

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case taxExempt = "tax_exempt"

            case breakup

            case name
        }

        public init(amount: [String: Any], breakup: [[String: Any]], name: String, taxExempt: Bool) {
            self.amount = amount

            self.taxExempt = taxExempt

            self.breakup = breakup

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode([String: Any].self, forKey: .amount)

            taxExempt = try container.decode(Bool.self, forKey: .taxExempt)

            breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(taxExempt, forKey: .taxExempt)

            try? container.encodeIfPresent(breakup, forKey: .breakup)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
