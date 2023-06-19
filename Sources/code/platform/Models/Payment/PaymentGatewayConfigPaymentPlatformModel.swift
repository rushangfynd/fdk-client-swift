

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var merchantSalt: String

        public var isActive: Bool?

        public var secret: String

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case key

            case merchantSalt = "merchant_salt"

            case isActive = "is_active"

            case secret

            case configType = "config_type"
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.merchantSalt = merchantSalt

            self.isActive = isActive

            self.secret = secret

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var merchantSalt: String

        public var isActive: Bool?

        public var secret: String

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case key

            case merchantSalt = "merchant_salt"

            case isActive = "is_active"

            case secret

            case configType = "config_type"
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.merchantSalt = merchantSalt

            self.isActive = isActive

            self.secret = secret

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}
