

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var createdAt: String

        public var updatedAt: String

        public var secret: String

        public var id: String

        public var meta: [AffiliateAppConfigMeta]?

        public var token: String

        public var owner: String

        public var name: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case secret

            case id

            case meta

            case token

            case owner

            case name

            case description
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.secret = secret

            self.id = id

            self.meta = meta

            self.token = token

            self.owner = owner

            self.name = name

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            id = try container.decode(String.self, forKey: .id)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var createdAt: String

        public var updatedAt: String

        public var secret: String

        public var id: String

        public var meta: [AffiliateAppConfigMeta]?

        public var token: String

        public var owner: String

        public var name: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case secret

            case id

            case meta

            case token

            case owner

            case name

            case description
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.secret = secret

            self.id = id

            self.meta = meta

            self.token = token

            self.owner = owner

            self.name = name

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            id = try container.decode(String.self, forKey: .id)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
