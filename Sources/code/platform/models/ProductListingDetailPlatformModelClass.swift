

import Foundation
public extension PlatformClient {
    /*
         Model: ProductListingDetail
         Used By: Catalog
     */

    class ProductListingDetail: Codable {
        public var imageNature: String?

        public var itemType: String?

        public var shortDescription: String?

        public var uid: Int?

        public var hasVariant: Bool?

        public var promoMeta: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var brand: ProductBrand?

        public var sellable: Bool?

        public var highlights: [String]?

        public var teaserTag: [String: Any]?

        public var attributes: [String: Any]?

        public var price: ProductListingPrice?

        public var itemCode: String?

        public var description: String?

        public var name: String?

        public var productOnlineDate: String?

        public var similars: [String]?

        public var type: String?

        public var ratingCount: Int?

        public var discount: String?

        public var medias: [Media1]?

        public var rating: Double?

        public var color: String?

        public var tryouts: [String]?

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case imageNature = "image_nature"

            case itemType = "item_type"

            case shortDescription = "short_description"

            case uid

            case hasVariant = "has_variant"

            case promoMeta = "promo_meta"

            case groupedAttributes = "grouped_attributes"

            case brand

            case sellable

            case highlights

            case teaserTag = "teaser_tag"

            case attributes

            case price

            case itemCode = "item_code"

            case description

            case name

            case productOnlineDate = "product_online_date"

            case similars

            case type

            case ratingCount = "rating_count"

            case discount

            case medias

            case rating

            case color

            case tryouts

            case slug
        }

        public init(attributes: [String: Any]? = nil, brand: ProductBrand? = nil, color: String? = nil, description: String? = nil, discount: String? = nil, groupedAttributes: [ProductDetailGroupedAttribute]? = nil, hasVariant: Bool? = nil, highlights: [String]? = nil, imageNature: String? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media1]? = nil, name: String? = nil, price: ProductListingPrice? = nil, productOnlineDate: String? = nil, promoMeta: [String: Any]? = nil, rating: Double? = nil, ratingCount: Int? = nil, sellable: Bool? = nil, shortDescription: String? = nil, similars: [String]? = nil, slug: String, teaserTag: [String: Any]? = nil, tryouts: [String]? = nil, type: String? = nil, uid: Int? = nil) {
            self.imageNature = imageNature

            self.itemType = itemType

            self.shortDescription = shortDescription

            self.uid = uid

            self.hasVariant = hasVariant

            self.promoMeta = promoMeta

            self.groupedAttributes = groupedAttributes

            self.brand = brand

            self.sellable = sellable

            self.highlights = highlights

            self.teaserTag = teaserTag

            self.attributes = attributes

            self.price = price

            self.itemCode = itemCode

            self.description = description

            self.name = name

            self.productOnlineDate = productOnlineDate

            self.similars = similars

            self.type = type

            self.ratingCount = ratingCount

            self.discount = discount

            self.medias = medias

            self.rating = rating

            self.color = color

            self.tryouts = tryouts

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

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
                uid = try container.decode(Int.self, forKey: .uid)

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
                promoMeta = try container.decode([String: Any].self, forKey: .promoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

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

            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)

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
                price = try container.decode(ProductListingPrice.self, forKey: .price)

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
                description = try container.decode(String.self, forKey: .description)

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
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

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
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media1].self, forKey: .medias)

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
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
