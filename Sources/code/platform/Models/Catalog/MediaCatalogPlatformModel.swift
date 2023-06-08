

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media
         Used By: Catalog
     */

    class Media: Codable {
        public var url: String

        public var aspectRatio: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"

            case type
        }

        public init(aspectRatio: String? = nil, type: String? = nil, url: String) {
            self.url = url

            self.aspectRatio = aspectRatio

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media
         Used By: Catalog
     */

    class Media: Codable {
        public var url: String

        public var aspectRatio: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"

            case type
        }

        public init(aspectRatio: String? = nil, type: String? = nil, url: String) {
            self.url = url

            self.aspectRatio = aspectRatio

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
