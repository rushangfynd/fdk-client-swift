

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var notificationEmails: [String]?

        public var createdBy: UserDetail?

        public var id: String

        public var createdOn: String?

        public var url: String

        public var modifiedOn: String?

        public var filters: InventoryJobFilters

        public var type: String?

        public var taskId: String

        public var cancelledBy: UserDetail?

        public var completedOn: String?

        public var status: String?

        public var sellerId: Int

        public var cancelledOn: String?

        public enum CodingKeys: String, CodingKey {
            case notificationEmails = "notification_emails"

            case createdBy = "created_by"

            case id

            case createdOn = "created_on"

            case url

            case modifiedOn = "modified_on"

            case filters

            case type

            case taskId = "task_id"

            case cancelledBy = "cancelled_by"

            case completedOn = "completed_on"

            case status

            case sellerId = "seller_id"

            case cancelledOn = "cancelled_on"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String? = nil, url: String) {
            self.notificationEmails = notificationEmails

            self.createdBy = createdBy

            self.id = id

            self.createdOn = createdOn

            self.url = url

            self.modifiedOn = modifiedOn

            self.filters = filters

            self.type = type

            self.taskId = taskId

            self.cancelledBy = cancelledBy

            self.completedOn = completedOn

            self.status = status

            self.sellerId = sellerId

            self.cancelledOn = cancelledOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobDetailResponse
         Used By: Catalog
     */

    class InventoryJobDetailResponse: Codable {
        public var notificationEmails: [String]?

        public var createdBy: UserDetail?

        public var id: String

        public var createdOn: String?

        public var url: String

        public var modifiedOn: String?

        public var filters: InventoryJobFilters

        public var type: String?

        public var taskId: String

        public var cancelledBy: UserDetail?

        public var completedOn: String?

        public var status: String?

        public var sellerId: Int

        public var cancelledOn: String?

        public enum CodingKeys: String, CodingKey {
            case notificationEmails = "notification_emails"

            case createdBy = "created_by"

            case id

            case createdOn = "created_on"

            case url

            case modifiedOn = "modified_on"

            case filters

            case type

            case taskId = "task_id"

            case cancelledBy = "cancelled_by"

            case completedOn = "completed_on"

            case status

            case sellerId = "seller_id"

            case cancelledOn = "cancelled_on"
        }

        public init(cancelledBy: UserDetail? = nil, cancelledOn: String? = nil, completedOn: String? = nil, createdBy: UserDetail? = nil, createdOn: String? = nil, filters: InventoryJobFilters, id: String, modifiedOn: String? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String? = nil, url: String) {
            self.notificationEmails = notificationEmails

            self.createdBy = createdBy

            self.id = id

            self.createdOn = createdOn

            self.url = url

            self.modifiedOn = modifiedOn

            self.filters = filters

            self.type = type

            self.taskId = taskId

            self.cancelledBy = cancelledBy

            self.completedOn = completedOn

            self.status = status

            self.sellerId = sellerId

            self.cancelledOn = cancelledOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            filters = try container.decode(InventoryJobFilters.self, forKey: .filters)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                cancelledBy = try container.decode(UserDetail.self, forKey: .cancelledBy)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                cancelledOn = try container.decode(String.self, forKey: .cancelledOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encode(type, forKey: .type)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(cancelledBy, forKey: .cancelledBy)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(cancelledOn, forKey: .cancelledOn)
        }
    }
}
