

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateConfig1
         Used By: Order
     */

    class AffiliateConfig1: Codable {
        public var updatedAt: String?

        public var createdAt: String?

        public var token: String?

        public var postOrderReassignment: Bool

        public var owner: String

        public var secret: String

        public var meta: [[String: Any]]?

        public var dpAssignment: Bool

        public var forceReassignment: Bool

        public var appCompanyId: Int

        public var description: String?

        public var stores: [Int]?

        public var articleAssignment: [String: Any]?

        public var name: String

        public var acId: String

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case token

            case postOrderReassignment = "post_order_reassignment"

            case owner

            case secret

            case meta

            case dpAssignment = "dp_assignment"

            case forceReassignment = "force_reassignment"

            case appCompanyId = "app_company_id"

            case description

            case stores

            case articleAssignment = "article_assignment"

            case name

            case acId = "ac_id"
        }

        public init(acId: String, appCompanyId: Int, articleAssignment: [String: Any]? = nil, createdAt: String? = nil, description: String? = nil, dpAssignment: Bool, forceReassignment: Bool, meta: [[String: Any]]? = nil, name: String, owner: String, postOrderReassignment: Bool, secret: String, stores: [Int]? = nil, token: String? = nil, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.token = token

            self.postOrderReassignment = postOrderReassignment

            self.owner = owner

            self.secret = secret

            self.meta = meta

            self.dpAssignment = dpAssignment

            self.forceReassignment = forceReassignment

            self.appCompanyId = appCompanyId

            self.description = description

            self.stores = stores

            self.articleAssignment = articleAssignment

            self.name = name

            self.acId = acId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)

            owner = try container.decode(String.self, forKey: .owner)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                meta = try container.decode([[String: Any]].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            appCompanyId = try container.decode(Int.self, forKey: .appCompanyId)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode([String: Any].self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            acId = try container.decode(String.self, forKey: .acId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(updatedAt, forKey: .updatedAt)

            try? container.encode(createdAt, forKey: .createdAt)

            try? container.encode(token, forKey: .token)

            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(appCompanyId, forKey: .appCompanyId)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(acId, forKey: .acId)
        }
    }
}
