

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportCreateResponse
         Used By: Catalog
     */

    class InventoryExportCreateResponse: Codable {
        public var cancelledBy: UserDetail?

        public var filters: InventoryExportCreateFilters

        public var completedOn: String?

        public var createdOn: String?

        public var cancelledOn: String?

        public var modifiedOn: String?

        public var notificationEmails: [String]?

        public var url: String

        public var createdBy: UserDetail?

        public var type: String?

        public var taskId: String

        public var sellerId: Int

        public var status: [String: Any]?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case cancelledBy = "cancelled_by"

            case filters

            case completedOn = "completed_on"

            case createdOn = "created_on"

            case cancelledOn = "cancelled_on"

            case modifiedOn = "modified_on"

            case notificationEmails = "notification_emails"

            case url

            case createdBy = "created_by"

            case type

            case taskId = "task_id"

            case sellerId = "seller_id"

            case status

            case id
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryExportCreateFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.cancelledBy = cancelledBy

            self.filters = filters

            self.completedOn = completedOn

            self.createdOn = createdOn

            self.cancelledOn = cancelledOn

            self.modifiedOn = modifiedOn

            self.notificationEmails = notificationEmails

            self.url = url

            self.createdBy = createdBy

            self.type = type

            self.taskId = taskId

            self.sellerId = sellerId

            self.status = status

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryExportCreateFilters.self, forKey: .filters)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            url = try container.decode(String.self, forKey: .url)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            taskId = try container.decode(String.self, forKey: .taskId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportCreateResponse
         Used By: Catalog
     */

    class InventoryExportCreateResponse: Codable {
        public var cancelledBy: UserDetail?

        public var filters: InventoryExportCreateFilters

        public var completedOn: String?

        public var createdOn: String?

        public var cancelledOn: String?

        public var modifiedOn: String?

        public var notificationEmails: [String]?

        public var url: String

        public var createdBy: UserDetail?

        public var type: String?

        public var taskId: String

        public var sellerId: Int

        public var status: [String: Any]?

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case cancelledBy = "cancelled_by"

            case filters

            case completedOn = "completed_on"

            case createdOn = "created_on"

            case cancelledOn = "cancelled_on"

            case modifiedOn = "modified_on"

            case notificationEmails = "notification_emails"

            case url

            case createdBy = "created_by"

            case type

            case taskId = "task_id"

            case sellerId = "seller_id"

            case status

            case id
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryExportCreateFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: [String: Any]? = nil, taskId: String, type: String? = nil, url: String) {
            self.cancelledBy = cancelledBy

            self.filters = filters

            self.completedOn = completedOn

            self.createdOn = createdOn

            self.cancelledOn = cancelledOn

            self.modifiedOn = modifiedOn

            self.notificationEmails = notificationEmails

            self.url = url

            self.createdBy = createdBy

            self.type = type

            self.taskId = taskId

            self.sellerId = sellerId

            self.status = status

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryExportCreateFilters.self, forKey: .filters)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            url = try container.decode(String.self, forKey: .url)

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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

            taskId = try container.decode(String.self, forKey: .taskId)

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                status = try container.decode([String: Any].self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
