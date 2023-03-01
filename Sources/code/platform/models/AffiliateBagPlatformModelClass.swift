

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var itemSize: String

        public var unitPrice: Double

        public var modifiedOn: String

        public var discount: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var id: String

        public var itemId: Int

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var sku: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case modifiedOn = "modified_on"

            case discount

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case identifier

            case id = "_id"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case sku

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.id = id

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.sku = sku

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
