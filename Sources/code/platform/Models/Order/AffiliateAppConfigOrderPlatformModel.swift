

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var owner: String

        public var secret: String

        public var updatedAt: String

        public var id: String

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public var description: String?

        public var token: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case owner

            case secret

            case updatedAt = "updated_at"

            case id

            case meta

            case createdAt = "created_at"

            case description

            case token

            case name
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.owner = owner

            self.secret = secret

            self.updatedAt = updatedAt

            self.id = id

            self.meta = meta

            self.createdAt = createdAt

            self.description = description

            self.token = token

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            owner = try container.decode(String.self, forKey: .owner)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            id = try container.decode(String.self, forKey: .id)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var owner: String

        public var secret: String

        public var updatedAt: String

        public var id: String

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public var description: String?

        public var token: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case owner

            case secret

            case updatedAt = "updated_at"

            case id

            case meta

            case createdAt = "created_at"

            case description

            case token

            case name
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.owner = owner

            self.secret = secret

            self.updatedAt = updatedAt

            self.id = id

            self.meta = meta

            self.createdAt = createdAt

            self.description = description

            self.token = token

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            owner = try container.decode(String.self, forKey: .owner)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            id = try container.decode(String.self, forKey: .id)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
