

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var brandUid: Int

        public var media: [Media1]?

        public var departments: [Int]

        public var action: String?

        public var returnConfig: ReturnConfig

        public var sizeGuide: String?

        public var companyId: Int

        public var categorySlug: String

        public var isSet: Bool?

        public var requester: String?

        public var trader: [Trader]

        public var currency: String

        public var highlights: [String]?

        public var customOrder: CustomOrder?

        public var multiSize: Bool?

        public var isDependent: Bool?

        public var variantGroup: [String: Any]?

        public var tags: [String]?

        public var isImageLessProduct: Bool?

        public var netQuantity: NetQuantity?

        public var productPublish: ProductPublish?

        public var noOfBoxes: Int?

        public var productGroupTag: [String]?

        public var customJson: [String: Any]?

        public var description: String?

        public var countryOfOrigin: String

        public var bulkJobId: String?

        public var isActive: Bool?

        public var templateTag: String

        public var uid: Int?

        public var itemCode: [String: Any]

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public var slug: String

        public var variantMedia: [String: Any]?

        public var shortDescription: String?

        public var name: [String: Any]

        public var variants: [String: Any]?

        public var changeRequestId: [String: Any]?

        public var teaserTag: TeaserTag?

        public enum CodingKeys: String, CodingKey {
            case brandUid = "brand_uid"

            case media

            case departments

            case action

            case returnConfig = "return_config"

            case sizeGuide = "size_guide"

            case companyId = "company_id"

            case categorySlug = "category_slug"

            case isSet = "is_set"

            case requester

            case trader

            case currency

            case highlights

            case customOrder = "custom_order"

            case multiSize = "multi_size"

            case isDependent = "is_dependent"

            case variantGroup = "variant_group"

            case tags

            case isImageLessProduct = "is_image_less_product"

            case netQuantity = "net_quantity"

            case productPublish = "product_publish"

            case noOfBoxes = "no_of_boxes"

            case productGroupTag = "product_group_tag"

            case customJson = "_custom_json"

            case description

            case countryOfOrigin = "country_of_origin"

            case bulkJobId = "bulk_job_id"

            case isActive = "is_active"

            case templateTag = "template_tag"

            case uid

            case itemCode = "item_code"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"

            case slug

            case variantMedia = "variant_media"

            case shortDescription = "short_description"

            case name

            case variants

            case changeRequestId = "change_request_id"

            case teaserTag = "teaser_tag"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: [String: Any], itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: [String: Any], netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.brandUid = brandUid

            self.media = media

            self.departments = departments

            self.action = action

            self.returnConfig = returnConfig

            self.sizeGuide = sizeGuide

            self.companyId = companyId

            self.categorySlug = categorySlug

            self.isSet = isSet

            self.requester = requester

            self.trader = trader

            self.currency = currency

            self.highlights = highlights

            self.customOrder = customOrder

            self.multiSize = multiSize

            self.isDependent = isDependent

            self.variantGroup = variantGroup

            self.tags = tags

            self.isImageLessProduct = isImageLessProduct

            self.netQuantity = netQuantity

            self.productPublish = productPublish

            self.noOfBoxes = noOfBoxes

            self.productGroupTag = productGroupTag

            self.customJson = customJson

            self.description = description

            self.countryOfOrigin = countryOfOrigin

            self.bulkJobId = bulkJobId

            self.isActive = isActive

            self.templateTag = templateTag

            self.uid = uid

            self.itemCode = itemCode

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType

            self.slug = slug

            self.variantMedia = variantMedia

            self.shortDescription = shortDescription

            self.name = name

            self.variants = variants

            self.changeRequestId = changeRequestId

            self.teaserTag = teaserTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trader = try container.decode([Trader].self, forKey: .trader)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantGroup = try container.decode([String: Any].self, forKey: .variantGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode([String: Any].self, forKey: .itemCode)

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
        }
    }
}
