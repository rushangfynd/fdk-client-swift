

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GenerateReportPlatform
         Used By: Finance
     */

    class GenerateReportPlatform: Codable {
        public var reportId: String?

        public var meta: GenerateReportMeta?

        public var filters: GenerateReportFilters?

        public var startDate: String?

        public var endDate: String?

        public enum CodingKeys: String, CodingKey {
            case reportId = "report_id"

            case meta

            case filters

            case startDate = "start_date"

            case endDate = "end_date"
        }

        public init(endDate: String? = nil, filters: GenerateReportFilters? = nil, meta: GenerateReportMeta? = nil, reportId: String? = nil, startDate: String? = nil) {
            self.reportId = reportId

            self.meta = meta

            self.filters = filters

            self.startDate = startDate

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reportId = try container.decode(String.self, forKey: .reportId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(GenerateReportMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(GenerateReportFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reportId, forKey: .reportId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}
