

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportResponse
         Used By: Catalog
     */

    class InventoryExportResponse: Codable {
        public var taskId: String

        public var requestParams: [String: Any]?

        public var triggerOn: String?

        public var sellerId: Int

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case taskId = "task_id"

            case requestParams = "request_params"

            case triggerOn = "trigger_on"

            case sellerId = "seller_id"

            case status
        }

        public init(requestParams: [String: Any]? = nil, sellerId: Int, status: String? = nil, taskId: String, triggerOn: String? = nil) {
            self.taskId = taskId

            self.requestParams = requestParams

            self.triggerOn = triggerOn

            self.sellerId = sellerId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            taskId = try container.decode(String.self, forKey: .taskId)

            do {
                requestParams = try container.decode([String: Any].self, forKey: .requestParams)

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

            sellerId = try container.decode(Int.self, forKey: .sellerId)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taskId, forKey: .taskId)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(triggerOn, forKey: .triggerOn)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
