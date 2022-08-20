

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseInfoSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseInfoSerializer: Codable {
        public var storeId: Int?

        public var stageReason: [StageReasonResponse]?

        public var documents: [RestrictedCategoryFiles]?

        public var value: String?

        public var expiryDate: String?

        public var stage: String?

        public var primary: Bool?

        public var categoryType: String?

        public var issueDate: String?

        public var companyId: Int?

        public var documentType: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case stageReason = "stage_reason"

            case documents

            case value

            case expiryDate = "expiry_date"

            case stage

            case primary

            case categoryType = "category_type"

            case issueDate = "issue_date"

            case companyId = "company_id"

            case documentType = "document_type"

            case id = "_id"
        }

        public init(categoryType: String? = nil, companyId: Int? = nil, documents: [RestrictedCategoryFiles]? = nil, documentType: String? = nil, expiryDate: String? = nil, issueDate: String? = nil, primary: Bool? = nil, stage: String? = nil, stageReason: [StageReasonResponse]? = nil, storeId: Int? = nil, value: String? = nil, id: String? = nil) {
            self.storeId = storeId

            self.stageReason = stageReason

            self.documents = documents

            self.value = value

            self.expiryDate = expiryDate

            self.stage = stage

            self.primary = primary

            self.categoryType = categoryType

            self.issueDate = issueDate

            self.companyId = companyId

            self.documentType = documentType

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stageReason = try container.decode([StageReasonResponse].self, forKey: .stageReason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documents = try container.decode([RestrictedCategoryFiles].self, forKey: .documents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiryDate = try container.decode(String.self, forKey: .expiryDate)

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
                primary = try container.decode(Bool.self, forKey: .primary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categoryType = try container.decode(String.self, forKey: .categoryType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                issueDate = try container.decode(String.self, forKey: .issueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                documentType = try container.decode(String.self, forKey: .documentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(stageReason, forKey: .stageReason)

            try? container.encodeIfPresent(documents, forKey: .documents)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(categoryType, forKey: .categoryType)

            try? container.encodeIfPresent(issueDate, forKey: .issueDate)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(documentType, forKey: .documentType)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}