

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var redirectUrl: String?

        public var retry: Bool

        public var success: Bool?

        public var aggregatorName: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case redirectUrl = "redirect_url"

            case retry

            case success

            case aggregatorName = "aggregator_name"

            case status
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.redirectUrl = redirectUrl

            self.retry = retry

            self.success = success

            self.aggregatorName = aggregatorName

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            retry = try container.decode(Bool.self, forKey: .retry)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encode(success, forKey: .success)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */

    class PaymentStatusUpdateResponse: Codable {
        public var redirectUrl: String?

        public var retry: Bool

        public var success: Bool?

        public var aggregatorName: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case redirectUrl = "redirect_url"

            case retry

            case success

            case aggregatorName = "aggregator_name"

            case status
        }

        public init(aggregatorName: String, redirectUrl: String? = nil, retry: Bool, status: String, success: Bool? = nil) {
            self.redirectUrl = redirectUrl

            self.retry = retry

            self.success = success

            self.aggregatorName = aggregatorName

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            retry = try container.decode(Bool.self, forKey: .retry)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encode(success, forKey: .success)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}