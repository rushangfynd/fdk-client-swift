

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkRequest
         Used By: Payment
     */
    class CreatePaymentLinkRequest: Codable {
        public var mobileNumber: String

        public var externalOrderId: String

        public var meta: CreatePaymentLinkMeta

        public var email: String

        public var description: String?

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case mobileNumber = "mobile_number"

            case externalOrderId = "external_order_id"

            case meta

            case email

            case description

            case amount
        }

        public init(amount: Double, description: String? = nil, email: String, externalOrderId: String, meta: CreatePaymentLinkMeta, mobileNumber: String) {
            self.mobileNumber = mobileNumber

            self.externalOrderId = externalOrderId

            self.meta = meta

            self.email = email

            self.description = description

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileNumber = try container.decode(String.self, forKey: .mobileNumber)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            meta = try container.decode(CreatePaymentLinkMeta.self, forKey: .meta)

            email = try container.decode(String.self, forKey: .email)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(description, forKey: .description)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
