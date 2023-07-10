

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var key: String

        public var merchantId: String?

        public var sdk: Bool?

        public var secret: String

        public var userId: String?

        public var merchantKey: String?

        public var api: String?

        public var verifyApi: String?

        public var pin: String?

        public var configType: String

        public enum CodingKeys: String, CodingKey {
            case key

            case merchantId = "merchant_id"

            case sdk

            case secret

            case userId = "user_id"

            case merchantKey = "merchant_key"

            case api

            case verifyApi = "verify_api"

            case pin

            case configType = "config_type"
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            self.key = key

            self.merchantId = merchantId

            self.sdk = sdk

            self.secret = secret

            self.userId = userId

            self.merchantKey = merchantKey

            self.api = api

            self.verifyApi = verifyApi

            self.pin = pin

            self.configType = configType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(userId, forKey: .userId)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(api, forKey: .api)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encode(pin, forKey: .pin)

            try? container.encodeIfPresent(configType, forKey: .configType)
        }
    }
}
