

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var brandUid: Int?

        public var description: String?

        public var attributes: [String: Any]?

        public var name: String?

        public var hsnCode: Int?

        public var media: [[String: Any]]?

        public var countryOfOrigin: String?

        public var identifier: [String: Any]?

        public var templateTag: String?

        public var imageNature: String?

        public var ratingCount: Int?

        public var rating: Double?

        public var shortDescription: String?

        public var slug: String?

        public var images: [String]?

        public var isSet: Bool?

        public var hasVariant: Bool?

        public var groupedAttributes: [String: Any]?

        public var outOfStock: Bool?

        public var itemCode: String?

        public var highlights: [String]?

        public enum CodingKeys: String, CodingKey {
            case brandUid = "brand_uid"

            case description

            case attributes

            case name

            case hsnCode = "hsn_code"

            case media

            case countryOfOrigin = "country_of_origin"

            case identifier

            case templateTag = "template_tag"

            case imageNature = "image_nature"

            case ratingCount = "rating_count"

            case rating

            case shortDescription = "short_description"

            case slug

            case images

            case isSet = "is_set"

            case hasVariant = "has_variant"

            case groupedAttributes = "grouped_attributes"

            case outOfStock = "out_of_stock"

            case itemCode = "item_code"

            case highlights
        }

        public init(attributes: [String: Any]? = nil, brandUid: Int? = nil, countryOfOrigin: String? = nil, description: String? = nil, groupedAttributes: [String: Any]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, hsnCode: Int? = nil, identifier: [String: Any]? = nil, images: [String]? = nil, imageNature: String? = nil, isSet: Bool? = nil, itemCode: String? = nil, media: [[String: Any]]? = nil, name: String? = nil, outOfStock: Bool? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: String? = nil, slug: String? = nil, templateTag: String? = nil) {
            self.brandUid = brandUid

            self.description = description

            self.attributes = attributes

            self.name = name

            self.hsnCode = hsnCode

            self.media = media

            self.countryOfOrigin = countryOfOrigin

            self.identifier = identifier

            self.templateTag = templateTag

            self.imageNature = imageNature

            self.ratingCount = ratingCount

            self.rating = rating

            self.shortDescription = shortDescription

            self.slug = slug

            self.images = images

            self.isSet = isSet

            self.hasVariant = hasVariant

            self.groupedAttributes = groupedAttributes

            self.outOfStock = outOfStock

            self.itemCode = itemCode

            self.highlights = highlights
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(Int.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([[String: Any]].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([String].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(highlights, forKey: .highlights)
        }
    }
}
