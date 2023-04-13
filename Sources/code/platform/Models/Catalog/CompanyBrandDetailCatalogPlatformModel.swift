

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var companyId: Int?

        public var brandId: Int?

        public var totalArticle: Int?

        public var brandName: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brandId = "brand_id"

            case totalArticle = "total_article"

            case brandName = "brand_name"
        }

        public init(brandId: Int? = nil, brandName: String? = nil, companyId: Int? = nil, totalArticle: Int? = nil) {
            self.companyId = companyId

            self.brandId = brandId

            self.totalArticle = totalArticle

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalArticle = try container.decode(Int.self, forKey: .totalArticle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CompanyBrandDetail
         Used By: Catalog
     */

    class CompanyBrandDetail: Codable {
        public var companyId: Int?

        public var brandId: Int?

        public var totalArticle: Int?

        public var brandName: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brandId = "brand_id"

            case totalArticle = "total_article"

            case brandName = "brand_name"
        }

        public init(brandId: Int? = nil, brandName: String? = nil, companyId: Int? = nil, totalArticle: Int? = nil) {
            self.companyId = companyId

            self.brandId = brandId

            self.totalArticle = totalArticle

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandId = try container.decode(Int.self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalArticle = try container.decode(Int.self, forKey: .totalArticle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brandId, forKey: .brandId)

            try? container.encodeIfPresent(totalArticle, forKey: .totalArticle)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
