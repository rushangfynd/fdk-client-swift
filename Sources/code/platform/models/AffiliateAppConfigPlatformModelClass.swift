

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var meta: [AffiliateAppConfigMeta]?

        public var token: String

        public var name: String

        public var updatedAt: String

        public var createdAt: String

        public var description: String?

        public var secret: String

        public var id: String

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case token

            case name

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case description

            case secret

            case id

            case owner
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.meta = meta

            self.token = token

            self.name = name

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.description = description

            self.secret = secret

            self.id = id

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            name = try container.decode(String.self, forKey: .name)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}
