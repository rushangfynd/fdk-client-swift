

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var templateTag: [String: Any]?

        public var imageNature: [String: Any]?

        public var isSet: Bool?

        public var slug: [String: Any]?

        public var images: [[String: Any]]?

        public var outOfStock: Bool?

        public var name: [String: Any]?

        public var shortDescription: [String: Any]?

        public var brandUid: Int?

        public var itemCode: [String: Any]?

        public var media: [[String: Any]]?

        public var countryOfOrigin: [String: Any]?

        public var rating: Double?

        public var hasVariant: Bool?

        public var hsnCode: Int?

        public var ratingCount: Int?

        public var identifier: [String: Any]?

        public var highlights: [[String: Any]]?

        public var description: [String: Any]?

        public var groupedAttributes: [String: Any]?

        public var attributes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case templateTag = "template_tag"

            case imageNature = "image_nature"

            case isSet = "is_set"

            case slug

            case images

            case outOfStock = "out_of_stock"

            case name

            case shortDescription = "short_description"

            case brandUid = "brand_uid"

            case itemCode = "item_code"

            case media

            case countryOfOrigin = "country_of_origin"

            case rating

            case hasVariant = "has_variant"

            case hsnCode = "hsn_code"

            case ratingCount = "rating_count"

            case identifier

            case highlights

            case description

            case groupedAttributes = "grouped_attributes"

            case attributes
        }

        public init(attributes: [String: Any]? = nil, brandUid: Int? = nil, countryOfOrigin: [String: Any]? = nil, description: [String: Any]? = nil, groupedAttributes: [String: Any]? = nil, hasVariant: Bool? = nil, highlights: [[String: Any]]? = nil, hsnCode: Int? = nil, identifier: [String: Any]? = nil, images: [[String: Any]]? = nil, imageNature: [String: Any]? = nil, isSet: Bool? = nil, itemCode: [String: Any]? = nil, media: [[String: Any]]? = nil, name: [String: Any]? = nil, outOfStock: Bool? = nil, rating: Double? = nil, ratingCount: Int? = nil, shortDescription: [String: Any]? = nil, slug: [String: Any]? = nil, templateTag: [String: Any]? = nil) {
            self.templateTag = templateTag

            self.imageNature = imageNature

            self.isSet = isSet

            self.slug = slug

            self.images = images

            self.outOfStock = outOfStock

            self.name = name

            self.shortDescription = shortDescription

            self.brandUid = brandUid

            self.itemCode = itemCode

            self.media = media

            self.countryOfOrigin = countryOfOrigin

            self.rating = rating

            self.hasVariant = hasVariant

            self.hsnCode = hsnCode

            self.ratingCount = ratingCount

            self.identifier = identifier

            self.highlights = highlights

            self.description = description

            self.groupedAttributes = groupedAttributes

            self.attributes = attributes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                templateTag = try container.decode([String: Any].self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode([String: Any].self, forKey: .imageNature)

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
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([[String: Any]].self, forKey: .images)

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
                name = try container.decode([String: Any].self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode([String: Any].self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCode = try container.decode([String: Any].self, forKey: .itemCode)

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
                countryOfOrigin = try container.decode([String: Any].self, forKey: .countryOfOrigin)

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
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

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
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

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
                highlights = try container.decode([[String: Any]].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode([String: Any].self, forKey: .description)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(attributes, forKey: .attributes)
        }
    }
}