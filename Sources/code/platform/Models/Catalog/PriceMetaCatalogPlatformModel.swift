

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var currency: String

        public var tpNotes: [String: Any]?

        public var marked: Double

        public var updatedAt: String?

        public var effective: Double

        public var transfer: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case tpNotes = "tp_notes"

            case marked

            case updatedAt = "updated_at"

            case effective

            case transfer
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.currency = currency

            self.tpNotes = tpNotes

            self.marked = marked

            self.updatedAt = updatedAt

            self.effective = effective

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effective = try container.decode(Double.self, forKey: .effective)

            transfer = try container.decode(Double.self, forKey: .transfer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var currency: String

        public var tpNotes: [String: Any]?

        public var marked: Double

        public var updatedAt: String?

        public var effective: Double

        public var transfer: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case tpNotes = "tp_notes"

            case marked

            case updatedAt = "updated_at"

            case effective

            case transfer
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.currency = currency

            self.tpNotes = tpNotes

            self.marked = marked

            self.updatedAt = updatedAt

            self.effective = effective

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effective = try container.decode(Double.self, forKey: .effective)

            transfer = try container.decode(Double.self, forKey: .transfer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}
