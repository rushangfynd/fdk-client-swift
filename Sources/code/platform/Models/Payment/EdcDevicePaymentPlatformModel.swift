

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var isActive: Bool

        public var edcModel: String?

        public var deviceTag: String

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var merchantStorePosCode: String?

        public var aggregatorId: Int

        public var applicationId: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case applicationId = "application_id"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.isActive = isActive

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.applicationId = applicationId

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDevice
         Used By: Payment
     */

    class EdcDevice: Codable {
        public var isActive: Bool

        public var edcModel: String?

        public var deviceTag: String

        public var edcDeviceSerialNo: String

        public var terminalSerialNo: String

        public var terminalUniqueIdentifier: String

        public var storeId: Int

        public var merchantStorePosCode: String?

        public var aggregatorId: Int

        public var applicationId: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case edcModel = "edc_model"

            case deviceTag = "device_tag"

            case edcDeviceSerialNo = "edc_device_serial_no"

            case terminalSerialNo = "terminal_serial_no"

            case terminalUniqueIdentifier = "terminal_unique_identifier"

            case storeId = "store_id"

            case merchantStorePosCode = "merchant_store_pos_code"

            case aggregatorId = "aggregator_id"

            case applicationId = "application_id"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorId: Int, aggregatorName: String? = nil, applicationId: String, deviceTag: String, edcDeviceSerialNo: String, edcModel: String? = nil, isActive: Bool, merchantStorePosCode: String? = nil, storeId: Int, terminalSerialNo: String, terminalUniqueIdentifier: String) {
            self.isActive = isActive

            self.edcModel = edcModel

            self.deviceTag = deviceTag

            self.edcDeviceSerialNo = edcDeviceSerialNo

            self.terminalSerialNo = terminalSerialNo

            self.terminalUniqueIdentifier = terminalUniqueIdentifier

            self.storeId = storeId

            self.merchantStorePosCode = merchantStorePosCode

            self.aggregatorId = aggregatorId

            self.applicationId = applicationId

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                edcModel = try container.decode(String.self, forKey: .edcModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deviceTag = try container.decode(String.self, forKey: .deviceTag)

            edcDeviceSerialNo = try container.decode(String.self, forKey: .edcDeviceSerialNo)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)

            terminalUniqueIdentifier = try container.decode(String.self, forKey: .terminalUniqueIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                merchantStorePosCode = try container.decode(String.self, forKey: .merchantStorePosCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(edcModel, forKey: .edcModel)

            try? container.encodeIfPresent(deviceTag, forKey: .deviceTag)

            try? container.encodeIfPresent(edcDeviceSerialNo, forKey: .edcDeviceSerialNo)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)

            try? container.encodeIfPresent(terminalUniqueIdentifier, forKey: .terminalUniqueIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(merchantStorePosCode, forKey: .merchantStorePosCode)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
