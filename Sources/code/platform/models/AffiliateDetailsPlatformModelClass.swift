

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateOrderId: String

        public var affiliateStoreId: String

        public var affiliateBagId: String

        public var companyAffiliateTag: String?

        public var affiliateMeta: AffiliateMeta

        public var config: AffiliateConfig1

        public var shipmentMeta: ShipmentMeta

        public var pdfLinks: PDFLinks?

        public var adId: String?

        public var affiliateShipmentId: String

        public var affiliateId: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateBagId = "affiliate_bag_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case affiliateMeta = "affiliate_meta"

            case config

            case shipmentMeta = "shipment_meta"

            case pdfLinks = "pdf_links"

            case adId = "ad_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case affiliateId = "affiliate_id"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, config: AffiliateConfig1, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateOrderId = affiliateOrderId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateBagId = affiliateBagId

            self.companyAffiliateTag = companyAffiliateTag

            self.affiliateMeta = affiliateMeta

            self.config = config

            self.shipmentMeta = shipmentMeta

            self.pdfLinks = pdfLinks

            self.adId = adId

            self.affiliateShipmentId = affiliateShipmentId

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            config = try container.decode(AffiliateConfig1.self, forKey: .config)

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
