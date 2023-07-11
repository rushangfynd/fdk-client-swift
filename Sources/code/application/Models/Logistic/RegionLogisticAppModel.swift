

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: Region
         Used By: Logistic
     */
    class Region: Codable {
        public var uid: String?

        public var type: String?

        public var name: String?

        public var parentId: [String]?

        public var isActive: Bool?

        public var logistics: Logistics?

        public var subType: String?

        public var meta: [String: Any]?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case type

            case name

            case parentId = "parent_id"

            case isActive = "is_active"

            case logistics

            case subType = "sub_type"

            case meta

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, isActive: Bool? = nil, logistics: Logistics? = nil, meta: [String: Any]? = nil, name: String? = nil, parentId: [String]? = nil, subType: String? = nil, type: String? = nil, uid: String? = nil) {
            self.uid = uid

            self.type = type

            self.name = name

            self.parentId = parentId

            self.isActive = isActive

            self.logistics = logistics

            self.subType = subType

            self.meta = meta

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

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

            do {
                logistics = try container.decode(Logistics.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parentId, forKey: .parentId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
