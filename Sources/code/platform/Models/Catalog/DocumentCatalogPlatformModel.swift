

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var type: String

        public var value: String

        public var url: String?

        public var legalName: String?

        public var verified: Bool?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case url

            case legalName = "legal_name"

            case verified
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.type = type

            self.value = value

            self.url = url

            self.legalName = legalName

            self.verified = verified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(verified, forKey: .verified)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var type: String

        public var value: String

        public var url: String?

        public var legalName: String?

        public var verified: Bool?

        public enum CodingKeys: String, CodingKey {
            case type

            case value

            case url

            case legalName = "legal_name"

            case verified
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.type = type

            self.value = value

            self.url = url

            self.legalName = legalName

            self.verified = verified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            value = try container.decode(String.self, forKey: .value)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(verified, forKey: .verified)
        }
    }
}
