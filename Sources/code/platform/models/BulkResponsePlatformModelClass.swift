

import Foundation
public extension PlatformClient {
    /*
         Model: BulkResponse
         Used By: Catalog
     */

    class BulkResponse: Codable {
        public var batchId: String

        public var createdBy: UserInfo1?

        public var createdOn: String

        public var modifiedOn: String?

        public var modifiedBy: UserInfo1?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case modifiedBy = "modified_by"

            case isActive = "is_active"
        }

        public init(batchId: String, createdBy: UserInfo1? = nil, createdOn: String, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil) {
            self.batchId = batchId

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.modifiedBy = modifiedBy

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserInfo1.self, forKey: .modifiedBy)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
