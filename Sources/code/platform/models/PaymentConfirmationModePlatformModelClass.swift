

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationMode
         Used By: Payment
     */

    class PaymentConfirmationMode: Codable {
        public var meta: [String: Any]?

        public var amount: Double

        public var name: String?

        public var mode: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case amount

            case name

            case mode
        }

        public init(amount: Double, meta: [String: Any]? = nil, mode: String, name: String? = nil) {
            self.meta = meta

            self.amount = amount

            self.name = name

            self.mode = mode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mode, forKey: .mode)
        }
    }
}
