

import Foundation
public extension PlatformClient {
    /*
         Model: BulkJob
         Used By: Catalog
     */

    class BulkJob: Codable {
        public var isActive: Bool?

        public var companyId: Int

        public var succeed: Int?

        public var failedRecords: [[String: Any]]?

        public var stage: String?

        public var filePath: String?

        public var templateTag: String?

        public var modifiedBy: UserInfo1?

        public var modifiedOn: String?

        public var createdBy: UserInfo1?

        public var createdOn: String

        public var total: Int

        public var failed: Int?

        public var cancelled: Int?

        public var trackingUrl: String?

        public var cancelledRecords: [[String: Any]]?

        public var customTemplateTag: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case companyId = "company_id"

            case succeed

            case failedRecords = "failed_records"

            case stage

            case filePath = "file_path"

            case templateTag = "template_tag"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case createdOn = "created_on"

            case total

            case failed

            case cancelled

            case trackingUrl = "tracking_url"

            case cancelledRecords = "cancelled_records"

            case customTemplateTag = "custom_template_tag"
        }

        public init(cancelled: Int? = nil, cancelledRecords: [[String: Any]]? = nil, companyId: Int, createdBy: UserInfo1? = nil, createdOn: String, customTemplateTag: String? = nil, failed: Int? = nil, failedRecords: [[String: Any]]? = nil, filePath: String? = nil, isActive: Bool? = nil, modifiedBy: UserInfo1? = nil, modifiedOn: String? = nil, stage: String? = nil, succeed: Int? = nil, templateTag: String? = nil, total: Int, trackingUrl: String? = nil) {
            self.isActive = isActive

            self.companyId = companyId

            self.succeed = succeed

            self.failedRecords = failedRecords

            self.stage = stage

            self.filePath = filePath

            self.templateTag = templateTag

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.createdOn = createdOn

            self.total = total

            self.failed = failed

            self.cancelled = cancelled

            self.trackingUrl = trackingUrl

            self.cancelledRecords = cancelledRecords

            self.customTemplateTag = customTemplateTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                succeed = try container.decode(Int.self, forKey: .succeed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                failedRecords = try container.decode([[String: Any]].self, forKey: .failedRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filePath = try container.decode(String.self, forKey: .filePath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

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
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserInfo1.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            total = try container.decode(Int.self, forKey: .total)

            do {
                failed = try container.decode(Int.self, forKey: .failed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Int.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelledRecords = try container.decode([[String: Any]].self, forKey: .cancelledRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customTemplateTag = try container.decode(String.self, forKey: .customTemplateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(succeed, forKey: .succeed)

            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(filePath, forKey: .filePath)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(failed, forKey: .failed)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(cancelledRecords, forKey: .cancelledRecords)

            try? container.encodeIfPresent(customTemplateTag, forKey: .customTemplateTag)
        }
    }
}
