

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportResponse
         Used By: Catalog
     */

    class InventoryExportResponse: Codable {
        public var id: String?

        public var sellerId: Int

        public var taskId: String

        public var status: String?

        public var requestParams: [String: Any]?

        public var createdOn: String?

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case status

            case requestParams = "request_params"

            case createdOn = "created_on"

            case triggerOn = "trigger_on"
        }

        public init(createdOn: String? = nil, requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, id: String? = nil) {
            self.id = id

            self.sellerId = sellerId

            self.taskId = taskId

            self.status = status

            self.requestParams = requestParams

            self.createdOn = createdOn

            self.triggerOn = triggerOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

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
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportResponse
         Used By: Catalog
     */

    class InventoryExportResponse: Codable {
        public var id: String?

        public var sellerId: Int

        public var taskId: String

        public var status: String?

        public var requestParams: [String: Any]?

        public var createdOn: String?

        public var triggerOn: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sellerId = "seller_id"

            case taskId = "task_id"

            case status

            case requestParams = "request_params"

            case createdOn = "created_on"

            case triggerOn = "trigger_on"
        }

        public init(createdOn: String? = nil, requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil, id: String? = nil) {
            self.id = id

            self.sellerId = sellerId

            self.taskId = taskId

            self.status = status

            self.requestParams = requestParams

            self.createdOn = createdOn

            self.triggerOn = triggerOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

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
                triggerOn = try container.decode(String.self, forKey: .triggerOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)
        }
    }
}
