

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var slug: String

        public var moq: OrderQuantity?

        public var bulkJobId: String?

        public var shortDescription: String?

        public var tags: [String]?

        public var description: String?

        public var requester: String?

        public var companyId: Int

        public var itemType: String

        public var action: String?

        public var productGroupTag: [String]?

        public var trader: [Trader]

        public var customJson: [String: Any]?

        public var currency: String

        public var departments: [Int]

        public var disclaimer: String?

        public var uid: Int?

        public var brandUid: Int

        public var media: [Media1]?

        public var taxIdentifier: TaxIdentifier

        public var templateTag: String

        public var highlights: [String]?

        public var productPublish: ProductPublish?

        public var sizeGuide: String?

        public var isImageLessProduct: Bool?

        public var noOfBoxes: Int?

        public var customOrder: CustomOrder?

        public var teaserTag: TeaserTag?

        public var changeRequestId: String?

        public var variants: [String: Any]?

        public var multiSize: Bool?

        public var keywords: [String]?

        public var categorySlug: String

        public var isSet: Bool?

        public var isActive: Bool?

        public var isDependent: Bool?

        public var countryOfOrigin: String

        public var name: String

        public var itemCode: String

        public var returnConfig: ReturnConfig

        public enum CodingKeys: String, CodingKey {
            case slug

            case moq

            case bulkJobId = "bulk_job_id"

            case shortDescription = "short_description"

            case tags

            case description

            case requester

            case companyId = "company_id"

            case itemType = "item_type"

            case action

            case productGroupTag = "product_group_tag"

            case trader

            case customJson = "_custom_json"

            case currency

            case departments

            case disclaimer

            case uid

            case brandUid = "brand_uid"

            case media

            case taxIdentifier = "tax_identifier"

            case templateTag = "template_tag"

            case highlights

            case productPublish = "product_publish"

            case sizeGuide = "size_guide"

            case isImageLessProduct = "is_image_less_product"

            case noOfBoxes = "no_of_boxes"

            case customOrder = "custom_order"

            case teaserTag = "teaser_tag"

            case changeRequestId = "change_request_id"

            case variants

            case multiSize = "multi_size"

            case keywords

            case categorySlug = "category_slug"

            case isSet = "is_set"

            case isActive = "is_active"

            case isDependent = "is_dependent"

            case countryOfOrigin = "country_of_origin"

            case name

            case itemCode = "item_code"

            case returnConfig = "return_config"
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, disclaimer: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, keywords: [String]? = nil, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.moq = moq

            self.bulkJobId = bulkJobId

            self.shortDescription = shortDescription

            self.tags = tags

            self.description = description

            self.requester = requester

            self.companyId = companyId

            self.itemType = itemType

            self.action = action

            self.productGroupTag = productGroupTag

            self.trader = trader

            self.customJson = customJson

            self.currency = currency

            self.departments = departments

            self.disclaimer = disclaimer

            self.uid = uid

            self.brandUid = brandUid

            self.media = media

            self.taxIdentifier = taxIdentifier

            self.templateTag = templateTag

            self.highlights = highlights

            self.productPublish = productPublish

            self.sizeGuide = sizeGuide

            self.isImageLessProduct = isImageLessProduct

            self.noOfBoxes = noOfBoxes

            self.customOrder = customOrder

            self.teaserTag = teaserTag

            self.changeRequestId = changeRequestId

            self.variants = variants

            self.multiSize = multiSize

            self.keywords = keywords

            self.categorySlug = categorySlug

            self.isSet = isSet

            self.isActive = isActive

            self.isDependent = isDependent

            self.countryOfOrigin = countryOfOrigin

            self.name = name

            self.itemCode = itemCode

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemType = try container.decode(String.self, forKey: .itemType)

            do {
                action = try container.decode(String.self, forKey: .action)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            departments = try container.decode([Int].self, forKey: .departments)

            do {
                disclaimer = try container.decode(String.self, forKey: .disclaimer)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

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
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

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
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

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
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                keywords = try container.decode([String].self, forKey: .keywords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            name = try container.decode(String.self, forKey: .name)

            itemCode = try container.decode(String.self, forKey: .itemCode)

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encode(disclaimer, forKey: .disclaimer)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(keywords, forKey: .keywords)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
