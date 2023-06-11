

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var paymentId: String?

        public var merchantCode: String?

        public var paymentIdentifier: String?

        public var logoUrl: [String: String]?

        public var paymentGateway: String?

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case merchantCode = "merchant_code"

            case paymentIdentifier = "payment_identifier"

            case logoUrl = "logo_url"

            case paymentGateway = "payment_gateway"
        }

        public init(logoUrl: [String: String]? = nil, merchantCode: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil, paymentIdentifier: String? = nil) {
            self.paymentId = paymentId

            self.merchantCode = merchantCode

            self.paymentIdentifier = paymentIdentifier

            self.logoUrl = logoUrl

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode([String: String].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var paymentId: String?

        public var merchantCode: String?

        public var paymentIdentifier: String?

        public var logoUrl: [String: String]?

        public var paymentGateway: String?

        public enum CodingKeys: String, CodingKey {
            case paymentId = "payment_id"

            case merchantCode = "merchant_code"

            case paymentIdentifier = "payment_identifier"

            case logoUrl = "logo_url"

            case paymentGateway = "payment_gateway"
        }

        public init(logoUrl: [String: String]? = nil, merchantCode: String? = nil, paymentGateway: String? = nil, paymentId: String? = nil, paymentIdentifier: String? = nil) {
            self.paymentId = paymentId

            self.merchantCode = merchantCode

            self.paymentIdentifier = paymentIdentifier

            self.logoUrl = logoUrl

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode([String: String].self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}
