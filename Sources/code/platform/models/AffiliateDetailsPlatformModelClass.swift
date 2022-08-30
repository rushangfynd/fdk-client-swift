

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var adId: String?

        public var affiliateBagId: String

        public var config: AffiliateConfig1

        public var affiliateStoreId: String

        public var affiliateOrderId: String

        public var affiliateId: String?

        public var affiliateShipmentId: String

        public var affiliateMeta: AffiliateMeta

        public var pdfLinks: PDFLinks?

        public var companyAffiliateTag: String?

        public var shipmentMeta: ShipmentMeta

        public enum CodingKeys: String, CodingKey {
            case adId = "ad_id"

            case affiliateBagId = "affiliate_bag_id"

            case config

            case affiliateStoreId = "affiliate_store_id"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case companyAffiliateTag = "company_affiliate_tag"

            case shipmentMeta = "shipment_meta"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, config: AffiliateConfig1, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.adId = adId

            self.affiliateBagId = affiliateBagId

            self.config = config

            self.affiliateStoreId = affiliateStoreId

            self.affiliateOrderId = affiliateOrderId

            self.affiliateId = affiliateId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.companyAffiliateTag = companyAffiliateTag

            self.shipmentMeta = shipmentMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            config = try container.decode(AffiliateConfig1.self, forKey: .config)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
        }
    }
}