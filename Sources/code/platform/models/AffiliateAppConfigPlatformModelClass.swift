

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateAppConfig
         Used By: OrderManage
     */

    class AffiliateAppConfig: Codable {
        public var secret: String

        public var description: String?

        public var createdAt: String

        public var token: String

        public var meta: [AffiliateAppConfigMeta]?

        public var name: String

        public var updatedAt: String

        public var id: String

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case secret

            case description

            case createdAt = "created_at"

            case token

            case meta

            case name

            case updatedAt = "updated_at"

            case id

            case owner
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.secret = secret

            self.description = description

            self.createdAt = createdAt

            self.token = token

            self.meta = meta

            self.name = name

            self.updatedAt = updatedAt

            self.id = id

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            token = try container.decode(String.self, forKey: .token)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}
