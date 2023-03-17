

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var name: String

        public var rate: Double

        public var amount: [String: Any]

        public var breakup: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case name

            case rate

            case amount

            case breakup
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.name = name

            self.rate = rate

            self.amount = amount

            self.breakup = breakup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            rate = try container.decode(Double.self, forKey: .rate)

            amount = try container.decode([String: Any].self, forKey: .amount)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(breakup, forKey: .breakup)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Tax
         Used By: Order
     */

    class Tax: Codable {
        public var name: String

        public var rate: Double

        public var amount: [String: Any]

        public var breakup: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case name

            case rate

            case amount

            case breakup
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            self.name = name

            self.rate = rate

            self.amount = amount

            self.breakup = breakup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            rate = try container.decode(Double.self, forKey: .rate)

            amount = try container.decode([String: Any].self, forKey: .amount)

            do {
                breakup = try container.decode([[String: Any]].self, forKey: .breakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(breakup, forKey: .breakup)
        }
    }
}