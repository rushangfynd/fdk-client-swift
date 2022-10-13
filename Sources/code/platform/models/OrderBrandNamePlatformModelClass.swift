

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Orders
     */

    class OrderBrandName: Codable {
        public var modifiedOn: Int?

        public var brandName: String

        public var createdOn: Int

        public var logo: String

        public var company: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case brandName = "brand_name"

            case createdOn = "created_on"

            case logo

            case company

            case id
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.modifiedOn = modifiedOn

            self.brandName = brandName

            self.createdOn = createdOn

            self.logo = logo

            self.company = company

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            logo = try container.decode(String.self, forKey: .logo)

            company = try container.decode(String.self, forKey: .company)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}