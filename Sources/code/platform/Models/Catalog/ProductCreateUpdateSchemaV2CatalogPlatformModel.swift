

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var action: String?

        public var itemCode: String

        public var bulkJobId: String?

        public var returnConfig: ReturnConfig

        public var isImageLessProduct: Bool?

        public var media: [Media1]?

        public var brandUid: Int

        public var departments: [Int]

        public var name: String

        public var countryOfOrigin: String

        public var uid: Int?

        public var multiSize: Bool?

        public var customOrder: CustomOrder?

        public var productGroupTag: [String]?

        public var changeRequestId: [String: Any]?

        public var categorySlug: String

        public var isDependent: Bool?

        public var sizeGuide: String?

        public var sizes: [[String: Any]]

        public var noOfBoxes: Int?

        public var currency: String

        public var productPublish: ProductPublish?

        public var shortDescription: String?

        public var templateTag: String

        public var variants: [String: Any]?

        public var isSet: Bool?

        public var highlights: [String]?

        public var teaserTag: TeaserTag?

        public var trader: [Trader]

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var slug: String

        public var description: String?

        public var companyId: Int

        public var tags: [String]?

        public var variantMedia: [String: Any]?

        public var variantGroup: [String: Any]?

        public var attributes: [String: Any]?

        public var requester: String?

        public var customJson: [String: Any]?

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public enum CodingKeys: String, CodingKey {
            case action

            case itemCode = "item_code"

            case bulkJobId = "bulk_job_id"

            case returnConfig = "return_config"

            case isImageLessProduct = "is_image_less_product"

            case media

            case brandUid = "brand_uid"

            case departments

            case name

            case countryOfOrigin = "country_of_origin"

            case uid

            case multiSize = "multi_size"

            case customOrder = "custom_order"

            case productGroupTag = "product_group_tag"

            case changeRequestId = "change_request_id"

            case categorySlug = "category_slug"

            case isDependent = "is_dependent"

            case sizeGuide = "size_guide"

            case sizes

            case noOfBoxes = "no_of_boxes"

            case currency

            case productPublish = "product_publish"

            case shortDescription = "short_description"

            case templateTag = "template_tag"

            case variants

            case isSet = "is_set"

            case highlights

            case teaserTag = "teaser_tag"

            case trader

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case slug

            case description

            case companyId = "company_id"

            case tags

            case variantMedia = "variant_media"

            case variantGroup = "variant_group"

            case attributes

            case requester

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.action = action

            self.itemCode = itemCode

            self.bulkJobId = bulkJobId

            self.returnConfig = returnConfig

            self.isImageLessProduct = isImageLessProduct

            self.media = media

            self.brandUid = brandUid

            self.departments = departments

            self.name = name

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.multiSize = multiSize

            self.customOrder = customOrder

            self.productGroupTag = productGroupTag

            self.changeRequestId = changeRequestId

            self.categorySlug = categorySlug

            self.isDependent = isDependent

            self.sizeGuide = sizeGuide

            self.sizes = sizes

            self.noOfBoxes = noOfBoxes

            self.currency = currency

            self.productPublish = productPublish

            self.shortDescription = shortDescription

            self.templateTag = templateTag

            self.variants = variants

            self.isSet = isSet

            self.highlights = highlights

            self.teaserTag = teaserTag

            self.trader = trader

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.slug = slug

            self.description = description

            self.companyId = companyId

            self.tags = tags

            self.variantMedia = variantMedia

            self.variantGroup = variantGroup

            self.attributes = attributes

            self.requester = requester

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            departments = try container.decode([Int].self, forKey: .departments)

            name = try container.decode(String.self, forKey: .name)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductCreateUpdateSchemaV2
         Used By: Catalog
     */

    class ProductCreateUpdateSchemaV2: Codable {
        public var action: String?

        public var itemCode: String

        public var bulkJobId: String?

        public var returnConfig: ReturnConfig

        public var isImageLessProduct: Bool?

        public var media: [Media1]?

        public var brandUid: Int

        public var departments: [Int]

        public var name: String

        public var countryOfOrigin: String

        public var uid: Int?

        public var multiSize: Bool?

        public var customOrder: CustomOrder?

        public var productGroupTag: [String]?

        public var changeRequestId: [String: Any]?

        public var categorySlug: String

        public var isDependent: Bool?

        public var sizeGuide: String?

        public var sizes: [[String: Any]]

        public var noOfBoxes: Int?

        public var currency: String

        public var productPublish: ProductPublish?

        public var shortDescription: String?

        public var templateTag: String

        public var variants: [String: Any]?

        public var isSet: Bool?

        public var highlights: [String]?

        public var teaserTag: TeaserTag?

        public var trader: [Trader]

        public var isActive: Bool?

        public var netQuantity: NetQuantity?

        public var slug: String

        public var description: String?

        public var companyId: Int

        public var tags: [String]?

        public var variantMedia: [String: Any]?

        public var variantGroup: [String: Any]?

        public var attributes: [String: Any]?

        public var requester: String?

        public var customJson: [String: Any]?

        public var taxIdentifier: TaxIdentifier

        public var itemType: String

        public enum CodingKeys: String, CodingKey {
            case action

            case itemCode = "item_code"

            case bulkJobId = "bulk_job_id"

            case returnConfig = "return_config"

            case isImageLessProduct = "is_image_less_product"

            case media

            case brandUid = "brand_uid"

            case departments

            case name

            case countryOfOrigin = "country_of_origin"

            case uid

            case multiSize = "multi_size"

            case customOrder = "custom_order"

            case productGroupTag = "product_group_tag"

            case changeRequestId = "change_request_id"

            case categorySlug = "category_slug"

            case isDependent = "is_dependent"

            case sizeGuide = "size_guide"

            case sizes

            case noOfBoxes = "no_of_boxes"

            case currency

            case productPublish = "product_publish"

            case shortDescription = "short_description"

            case templateTag = "template_tag"

            case variants

            case isSet = "is_set"

            case highlights

            case teaserTag = "teaser_tag"

            case trader

            case isActive = "is_active"

            case netQuantity = "net_quantity"

            case slug

            case description

            case companyId = "company_id"

            case tags

            case variantMedia = "variant_media"

            case variantGroup = "variant_group"

            case attributes

            case requester

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case itemType = "item_type"
        }

        public init(action: String? = nil, attributes: [String: Any]? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: [String: Any]? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, multiSize: Bool? = nil, name: String, netQuantity: NetQuantity? = nil, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizes: [[String: Any]], sizeGuide: String? = nil, slug: String, tags: [String]? = nil, taxIdentifier: TaxIdentifier, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, variantGroup: [String: Any]? = nil, variantMedia: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.action = action

            self.itemCode = itemCode

            self.bulkJobId = bulkJobId

            self.returnConfig = returnConfig

            self.isImageLessProduct = isImageLessProduct

            self.media = media

            self.brandUid = brandUid

            self.departments = departments

            self.name = name

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.multiSize = multiSize

            self.customOrder = customOrder

            self.productGroupTag = productGroupTag

            self.changeRequestId = changeRequestId

            self.categorySlug = categorySlug

            self.isDependent = isDependent

            self.sizeGuide = sizeGuide

            self.sizes = sizes

            self.noOfBoxes = noOfBoxes

            self.currency = currency

            self.productPublish = productPublish

            self.shortDescription = shortDescription

            self.templateTag = templateTag

            self.variants = variants

            self.isSet = isSet

            self.highlights = highlights

            self.teaserTag = teaserTag

            self.trader = trader

            self.isActive = isActive

            self.netQuantity = netQuantity

            self.slug = slug

            self.description = description

            self.companyId = companyId

            self.tags = tags

            self.variantMedia = variantMedia

            self.variantGroup = variantGroup

            self.attributes = attributes

            self.requester = requester

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.itemType = itemType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            departments = try container.decode([Int].self, forKey: .departments)

            name = try container.decode(String.self, forKey: .name)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                changeRequestId = try container.decode([String: Any].self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

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

            sizes = try container.decode([[String: Any]].self, forKey: .sizes)

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

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

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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
                highlights = try container.decode([String].self, forKey: .highlights)

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

            trader = try container.decode([Trader].self, forKey: .trader)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            slug = try container.decode(String.self, forKey: .slug)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantMedia = try container.decode([String: Any].self, forKey: .variantMedia)

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
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)

            itemType = try container.decode(String.self, forKey: .itemType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(uid, forKey: .uid)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(highlights, forKey: .highlights)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(variantMedia, forKey: .variantMedia)

            try? container.encodeIfPresent(variantGroup, forKey: .variantGroup)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemType, forKey: .itemType)
        }
    }
}
