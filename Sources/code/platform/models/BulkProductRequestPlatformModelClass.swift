

import Foundation
public extension PlatformClient {
    /*
         Model: BulkProductRequest
         Used By: Catalog
     */

    class BulkProductRequest: Codable {
        public var data: [[String: Any]]

        public var companyId: Int

        public var templateTag: String

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case data

            case companyId = "company_id"

            case templateTag = "template_tag"

            case batchId = "batch_id"
        }

        public init(batchId: String, companyId: Int, data: [[String: Any]], templateTag: String) {
            self.data = data

            self.companyId = companyId

            self.templateTag = templateTag

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            companyId = try container.decode(Int.self, forKey: .companyId)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
