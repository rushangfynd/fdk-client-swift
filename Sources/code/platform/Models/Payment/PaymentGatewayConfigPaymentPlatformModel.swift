

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var isActive: Bool?

        public var configType: String

        public var key: String

        public var secret: String

        public var merchantSalt: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case configType = "config_type"

            case key

            case secret

            case merchantSalt = "merchant_salt"
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.isActive = isActive

            self.configType = configType

            self.key = key

            self.secret = secret

            self.merchantSalt = merchantSalt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            key = try container.decode(String.self, forKey: .key)

            secret = try container.decode(String.self, forKey: .secret)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var isActive: Bool?

        public var configType: String

        public var key: String

        public var secret: String

        public var merchantSalt: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case configType = "config_type"

            case key

            case secret

            case merchantSalt = "merchant_salt"
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.isActive = isActive

            self.configType = configType

            self.key = key

            self.secret = secret

            self.merchantSalt = merchantSalt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            key = try container.decode(String.self, forKey: .key)

            secret = try container.decode(String.self, forKey: .secret)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
        }
    }
}
