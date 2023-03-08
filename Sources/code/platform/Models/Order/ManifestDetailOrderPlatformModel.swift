

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestDetail
         Used By: Order
     */

    class ManifestDetail: Codable {
        public var companyId: Int?

        public var createdBy: String?

        public var createdAt: String?

        public var isActive: Bool?

        public var userId: Int?

        public var id: Int?

        public var filters: ManifestFilter?

        public var status: String?

        public var manifestId: String?

        public var meta: ManifestDetailMeta?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case createdAt = "created_at"

            case isActive = "is_active"

            case userId = "user_id"

            case id

            case filters

            case status

            case manifestId = "manifest_id"

            case meta

            case uid
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, createdBy: String? = nil, filters: ManifestFilter? = nil, id: Int? = nil, isActive: Bool? = nil, manifestId: String? = nil, meta: ManifestDetailMeta? = nil, status: String? = nil, uid: Int? = nil, userId: Int? = nil) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.createdAt = createdAt

            self.isActive = isActive

            self.userId = userId

            self.id = id

            self.filters = filters

            self.status = status

            self.manifestId = manifestId

            self.meta = meta

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(Int.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ManifestDetailMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestDetail
         Used By: Order
     */

    class ManifestDetail: Codable {
        public var companyId: Int?

        public var createdBy: String?

        public var createdAt: String?

        public var isActive: Bool?

        public var userId: Int?

        public var id: Int?

        public var filters: ManifestFilter?

        public var status: String?

        public var manifestId: String?

        public var meta: ManifestDetailMeta?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case createdBy = "created_by"

            case createdAt = "created_at"

            case isActive = "is_active"

            case userId = "user_id"

            case id

            case filters

            case status

            case manifestId = "manifest_id"

            case meta

            case uid
        }

        public init(companyId: Int? = nil, createdAt: String? = nil, createdBy: String? = nil, filters: ManifestFilter? = nil, id: Int? = nil, isActive: Bool? = nil, manifestId: String? = nil, meta: ManifestDetailMeta? = nil, status: String? = nil, uid: Int? = nil, userId: Int? = nil) {
            self.companyId = companyId

            self.createdBy = createdBy

            self.createdAt = createdAt

            self.isActive = isActive

            self.userId = userId

            self.id = id

            self.filters = filters

            self.status = status

            self.manifestId = manifestId

            self.meta = meta

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(Int.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(ManifestFilter.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manifestId = try container.decode(String.self, forKey: .manifestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ManifestDetailMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
