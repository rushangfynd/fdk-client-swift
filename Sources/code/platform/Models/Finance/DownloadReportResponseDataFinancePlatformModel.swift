

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DownloadReportResponseData
         Used By: Finance
     */

    class DownloadReportResponseData: Codable {
        public var requestDict: [String: Any]?

        public var filters: [String: Any]?

        public var status: String?

        public var downloadLink: String?

        public var createdAt: String?

        public var reportConfigId: String?

        public var startDate: String?

        public var msg: String?

        public var displayName: String?

        public var endDate: String?

        public var reportName: String?

        public var meta: [String: Any]?

        public var fullName: String?

        public var requestedBy: String?

        public enum CodingKeys: String, CodingKey {
            case requestDict = "request_dict"

            case filters

            case status

            case downloadLink = "download_link"

            case createdAt = "created_at"

            case reportConfigId = "report_config_id"

            case startDate = "start_date"

            case msg

            case displayName = "display_name"

            case endDate = "end_date"

            case reportName = "report_name"

            case meta

            case fullName = "full_name"

            case requestedBy = "requested_by"
        }

        public init(createdAt: String? = nil, displayName: String? = nil, downloadLink: String? = nil, endDate: String? = nil, filters: [String: Any]? = nil, fullName: String? = nil, meta: [String: Any]? = nil, msg: String? = nil, reportConfigId: String? = nil, reportName: String? = nil, requestedBy: String? = nil, requestDict: [String: Any]? = nil, startDate: String? = nil, status: String? = nil) {
            self.requestDict = requestDict

            self.filters = filters

            self.status = status

            self.downloadLink = downloadLink

            self.createdAt = createdAt

            self.reportConfigId = reportConfigId

            self.startDate = startDate

            self.msg = msg

            self.displayName = displayName

            self.endDate = endDate

            self.reportName = reportName

            self.meta = meta

            self.fullName = fullName

            self.requestedBy = requestedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestDict = try container.decode([String: Any].self, forKey: .requestDict)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([String: Any].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                downloadLink = try container.decode(String.self, forKey: .downloadLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reportConfigId = try container.decode(String.self, forKey: .reportConfigId)

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
                msg = try container.decode(String.self, forKey: .msg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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

            do {
                reportName = try container.decode(String.self, forKey: .reportName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fullName = try container.decode(String.self, forKey: .fullName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestedBy = try container.decode(String.self, forKey: .requestedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestDict, forKey: .requestDict)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(downloadLink, forKey: .downloadLink)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(reportConfigId, forKey: .reportConfigId)

            try? container.encodeIfPresent(startDate, forKey: .startDate)

            try? container.encodeIfPresent(msg, forKey: .msg)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(endDate, forKey: .endDate)

            try? container.encodeIfPresent(reportName, forKey: .reportName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fullName, forKey: .fullName)

            try? container.encodeIfPresent(requestedBy, forKey: .requestedBy)
        }
    }
}
