

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: String?

        public var id: Int

        public var brandName: String

        public var logo: String

        public var createdOn: String

        public var company: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case id

            case brandName = "brand_name"

            case logo

            case createdOn = "created_on"

            case company
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.id = id

            self.brandName = brandName

            self.logo = logo

            self.createdOn = createdOn

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            brandName = try container.decode(String.self, forKey: .brandName)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var modifiedOn: String?

        public var id: Int

        public var brandName: String

        public var logo: String

        public var createdOn: String

        public var company: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case id

            case brandName = "brand_name"

            case logo

            case createdOn = "created_on"

            case company
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.id = id

            self.brandName = brandName

            self.logo = logo

            self.createdOn = createdOn

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            brandName = try container.decode(String.self, forKey: .brandName)

            logo = try container.decode(String.self, forKey: .logo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            company = try container.decode(String.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(company, forKey: .company)
        }
    }
}
