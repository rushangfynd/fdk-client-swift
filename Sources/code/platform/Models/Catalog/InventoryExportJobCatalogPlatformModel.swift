

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var type: String

        public var url: String?

        public var filters: InventoryExportAdvanceOption?

        public var sellerId: Int

        public var notificationEmails: [String]?

        public var status: String?

        public var taskId: String

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case filters

            case sellerId = "seller_id"

            case notificationEmails = "notification_emails"

            case status

            case taskId = "task_id"

            case completedOn = "completed_on"
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            self.type = type

            self.url = url

            self.filters = filters

            self.sellerId = sellerId

            self.notificationEmails = notificationEmails

            self.status = status

            self.taskId = taskId

            self.completedOn = completedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportJob
         Used By: Catalog
     */

    class InventoryExportJob: Codable {
        public var type: String

        public var url: String?

        public var filters: InventoryExportAdvanceOption?

        public var sellerId: Int

        public var notificationEmails: [String]?

        public var status: String?

        public var taskId: String

        public var completedOn: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case filters

            case sellerId = "seller_id"

            case notificationEmails = "notification_emails"

            case status

            case taskId = "task_id"

            case completedOn = "completed_on"
        }

        public init(completedOn: String? = nil, filters: InventoryExportAdvanceOption? = nil, notificationEmails: [String]? = nil, sellerId: Int, status: String? = nil, taskId: String, type: String, url: String? = nil) {
            self.type = type

            self.url = url

            self.filters = filters

            self.sellerId = sellerId

            self.notificationEmails = notificationEmails

            self.status = status

            self.taskId = taskId

            self.completedOn = completedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(InventoryExportAdvanceOption.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                notificationEmails = try container.decode([String].self, forKey: .notificationEmails)

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

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                completedOn = try container.decode(String.self, forKey: .completedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(completedOn, forKey: .completedOn)
        }
    }
}
