

import Foundation
public extension PlatformClient {
    /*
         Model: PriceArticle
         Used By: Catalog
     */

    class PriceArticle: Codable {
        public var marked: Double?

        public var tpNotes: [String: Any]?

        public var effective: Double?

        public var currency: String?

        public var transfer: Double?

        public enum CodingKeys: String, CodingKey {
            case marked

            case tpNotes = "tp_notes"

            case effective

            case currency

            case transfer
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, tpNotes: [String: Any]? = nil, transfer: Double? = nil) {
            self.marked = marked

            self.tpNotes = tpNotes

            self.effective = effective

            self.currency = currency

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transfer = try container.decode(Double.self, forKey: .transfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}
