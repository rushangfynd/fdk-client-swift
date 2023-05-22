

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SingleRefundModeInfo
         Used By: Order
     */

    class SingleRefundModeInfo: Codable {
        public var displayName: String?

        public var slug: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case slug

            case isActive = "is_active"
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, slug: String? = nil) {
            self.displayName = displayName

            self.slug = slug

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SingleRefundModeInfo
         Used By: Order
     */

    class SingleRefundModeInfo: Codable {
        public var displayName: String?

        public var slug: String?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case slug

            case isActive = "is_active"
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, slug: String? = nil) {
            self.displayName = displayName

            self.slug = slug

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
