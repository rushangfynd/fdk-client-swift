

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var taskId: String

        public var status: [String: Any]?

        public var cancelledOn: String?

        public var notificationEmails: [String]?

        public var id: String

        public var type: String?

        public var url: String

        public var createdOn: String?

        public var completedOn: String?

        public var createdBy: UserDetail?

        public var modifiedOn: String?

        public var cancelledBy: UserDetail?

        public var sellerId: Int

        public var filters: InventoryJobFilters

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case status

            case cancelledOn = "cancelled_on"

            case notificationEmails = "notification_emails"

            case id

            case type

            case url

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case cancelledBy = "cancelled_by"

            case sellerId = "seller_id"

            case filters
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.taskId = taskId

            self.status = status

            self.cancelledOn = cancelledOn

            self.notificationEmails = notificationEmails

            self.id = id

            self.type = type

            self.url = url

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.cancelledBy = cancelledBy

            self.sellerId = sellerId

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var taskId: String

        public var status: [String: Any]?

        public var cancelledOn: String?

        public var notificationEmails: [String]?

        public var id: String

        public var type: String?

        public var url: String

        public var createdOn: String?

        public var completedOn: String?

        public var createdBy: UserDetail?

        public var modifiedOn: String?

        public var cancelledBy: UserDetail?

        public var sellerId: Int

        public var filters: InventoryJobFilters

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case status

            case cancelledOn = "cancelled_on"

            case notificationEmails = "notification_emails"

            case id

            case type

            case url

            case createdOn = "created_on"

            case completedOn = "completed_on"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case cancelledBy = "cancelled_by"

            case sellerId = "seller_id"

            case filters
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.taskId = taskId

            self.status = status

            self.cancelledOn = cancelledOn

            self.notificationEmails = notificationEmails

            self.id = id

            self.type = type

            self.url = url

            self.createdOn = createdOn

            self.completedOn = completedOn

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.cancelledBy = cancelledBy

            self.sellerId = sellerId

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
