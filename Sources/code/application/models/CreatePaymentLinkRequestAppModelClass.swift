

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var email: String

        public var externalOrderId: String

        public var description: String?

        public var meta: [String: Any]

        public var amount: Double

        public var mobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case email

            case externalOrderId = "external_order_id"

            case description

            case meta

            case amount

            case mobileNumber = "mobile_number"
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: [String: Any], mobileNumber: String) {
            self.email = email

            self.externalOrderId = externalOrderId

            self.description = description

            self.meta = meta

            self.amount = amount

            self.mobileNumber = mobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            meta = try container.decode([String: Any].self, forKey: .meta)

            amount = try container.decode(Double.self, forKey: .amount)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
        }
    }
}