

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Order
     */

    class OrderBagItem: Codable {
        public var slugKey: String

        public var brand: String

        public var name: String

        public var image: [String]?

        public var l1Category: [String]?

        public var size: String

        public var l3Category: Int

        public enum CodingKeys: String, CodingKey {
            case slugKey = "slug_key"

            case brand

            case name

            case image

            case l1Category = "l1_category"

            case size

            case l3Category = "l3_category"
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.slugKey = slugKey

            self.brand = brand

            self.name = name

            self.image = image

            self.l1Category = l1Category

            self.size = size

            self.l3Category = l3Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            brand = try container.decode(String.self, forKey: .brand)

            name = try container.decode(String.self, forKey: .name)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            l3Category = try container.decode(Int.self, forKey: .l3Category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)
        }
    }
}
