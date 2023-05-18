

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var type: String

        public var amount: [String: Any]

        public var name: String

        public var tax: Tax?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case amount

            case name

            case tax

            case code
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            self.type = type

            self.amount = amount

            self.name = name

            self.tax = tax

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            do {
                tax = try container.decode(Tax.self, forKey: .tax)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tax, forKey: .tax)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Charge
         Used By: Order
     */

    class Charge: Codable {
        public var type: String

        public var amount: [String: Any]

        public var name: String

        public var tax: Tax?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case amount

            case name

            case tax

            case code
        }

        public init(amount: [String: Any], code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            self.type = type

            self.amount = amount

            self.name = name

            self.tax = tax

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            amount = try container.decode([String: Any].self, forKey: .amount)

            name = try container.decode(String.self, forKey: .name)

            do {
                tax = try container.decode(Tax.self, forKey: .tax)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(tax, forKey: .tax)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
