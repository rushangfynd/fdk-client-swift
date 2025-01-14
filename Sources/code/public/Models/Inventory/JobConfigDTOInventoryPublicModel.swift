

import Foundation
public extension PublicClient.Inventory {
    /*
        Model: JobConfigDTO
        Used By: Inventory
    */

    class JobConfigDTO: Codable {
        
        
        public var integrationData: [String: Any]?
        
        public var companyName: String?
        
        public var integration: String
        
        public var companyId: Int
        
        public var taskDetails: TaskDTO?
        
        public var thresholdDetails: DataTresholdDTO?
        
        public var jobCode: String?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case integrationData = "integration_data"
            
            case companyName = "company_name"
            
            case integration = "integration"
            
            case companyId = "company_id"
            
            case taskDetails = "task_details"
            
            case thresholdDetails = "threshold_details"
            
            case jobCode = "job_code"
            
            case alias = "alias"
            
        }

        public init(alias: String? = nil, companyId: Int, companyName: String? = nil, integration: String, integrationData: [String: Any]? = nil, jobCode: String? = nil, taskDetails: TaskDTO? = nil, thresholdDetails: DataTresholdDTO? = nil) {
            
            self.integrationData = integrationData
            
            self.companyName = companyName
            
            self.integration = integration
            
            self.companyId = companyId
            
            self.taskDetails = taskDetails
            
            self.thresholdDetails = thresholdDetails
            
            self.jobCode = jobCode
            
            self.alias = alias
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    integrationData = try container.decode([String: Any].self, forKey: .integrationData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                integration = try container.decode(String.self, forKey: .integration)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    taskDetails = try container.decode(TaskDTO.self, forKey: .taskDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thresholdDetails = try container.decode(DataTresholdDTO.self, forKey: .thresholdDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jobCode = try container.decode(String.self, forKey: .jobCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alias = try container.decode(String.self, forKey: .alias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(integrationData, forKey: .integrationData)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(taskDetails, forKey: .taskDetails)
            
            
            
            
            try? container.encodeIfPresent(thresholdDetails, forKey: .thresholdDetails)
            
            
            
            
            try? container.encodeIfPresent(jobCode, forKey: .jobCode)
            
            
            
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
            
        }
        
    }
}
