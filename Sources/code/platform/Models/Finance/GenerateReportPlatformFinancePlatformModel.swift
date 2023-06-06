

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GenerateReportPlatform
         Used By: Finance
     */

    class GenerateReportPlatform: Codable {
        public var startDate: String?

        public var meta: GenerateReportMeta?

        public var reportId: String?

        public var filters: GenerateReportFilters?

        public var endDate: String?

        public enum CodingKeys: String, CodingKey {
            case startDate = "start_date"

            case meta

            case reportId = "report_id"

            case filters

            case endDate = "end_date"
        }

        public init(endDate: String? = nil, filters: GenerateReportFilters? = nil, meta: GenerateReportMeta? = nil, reportId: String? = nil, startDate: String? = nil) {
            self.startDate = startDate

            self.meta = meta

            self.reportId = reportId

            self.filters = filters

            self.endDate = endDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                startDate = try container.decode(String.self, forKey: .startDate)

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
                reportId = try container.decode(String.self, forKey: .reportId)

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
                endDate = try container.decode(String.self, forKey: .endDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(reportId, forKey: .reportId)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(endDate, forKey: .endDate)
        }
    }
}