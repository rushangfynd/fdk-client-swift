

import Foundation
public extension PlatformClient {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var verified: Bool

        public var legalName: String

        public var url: String?

        public var dsType: String

        public var value: String

        public enum CodingKeys: String, CodingKey {
            case verified

            case legalName = "legal_name"

            case url

            case dsType = "ds_type"

            case value
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.verified = verified

            self.legalName = legalName

            self.url = url

            self.dsType = dsType

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            verified = try container.decode(Bool.self, forKey: .verified)

            legalName = try container.decode(String.self, forKey: .legalName)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dsType = try container.decode(String.self, forKey: .dsType)

            value = try container.decode(String.self, forKey: .value)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
