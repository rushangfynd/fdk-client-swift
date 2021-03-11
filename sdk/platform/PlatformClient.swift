


public class PlatformClient {
    public let config: PlatformConfig

    public let lead: Lead

    public let theme: Theme

    public let user: User

    public let content: Content

    public let communication: Communication

    public let companyProfile: CompanyProfile

    public let inventory: Inventory

    public init(config: PlatformConfig) {
        self.config = config
        
        lead = Lead(config: config)
        
        theme = Theme(config: config)
        
        user = User(config: config)
        
        content = Content(config: config)
        
        communication = Communication(config: config)
        
        companyProfile = CompanyProfile(config: config)
        
        inventory = Inventory(config: config)
        
    }
    
    
    public class Lead {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Gets the list of company level tickets and/or ticket filters depending on query params
        * Description: Gets the list of company level tickets and/or ticket filters
        **/
        public func getTickets(
            items: Bool?,
            filters: Bool?,
            
            onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["items"] = items
            query["filters"] = filters
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketList.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Creates a company level ticket
        * Description: Creates a company level ticket
        **/
        public func createTicket(
            body: AddTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        /**
        *
        * Summary: Retreives ticket details of a company level ticket with ticket ID
        * Description: Retreives ticket details of a company level ticket
        **/
        public func getTicket(
            ticketId: String,
            
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Edits ticket details of a company level ticket
        * Description: Edits ticket details of a company level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
        **/
        public func editTicket(
            ticketId: String,
            body: EditTicketPayload,
            onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(Ticket.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        /**
        *
        * Summary: Create history for specific company level ticket
        * Description: Create history for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func createHistory(
            ticketId: String,
            body: TicketHistoryPayload,
            onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketHistory.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Gets history list for specific company level ticket
        * Description: Gets history list for specific company level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
        **/
        public func getTicketHistory(
            ticketId: String,
            
            onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/lead/v1.0/company/\(companyId)/ticket/\(ticketId)/history",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(TicketHistoryList.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Theme {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class User {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
    }
    
    
    
    public class Content {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class Communication {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    public class CompanyProfile {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Get company profile
        * Description: This API allows to view the company profile of the seller account.
        **/
        public func cbsOnboardGet(
            
            onResponse: @escaping (_ response: GetCompanyProfileSerializerResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(GetCompanyProfileSerializerResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Edit company profile
        * Description: This API allows to edit the company profile of the seller account.
        **/
        public func cbsOnboardEdit(
            body: CompanyStoreSerializerRequest,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "patch",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get company metrics
        * Description: This API allows to view the company metrics, i.e. the status of its brand and stores. Also its allows to view the number of products, company documents & store documents which are verified and unverified.
        **/
        public func getCompanyMetrics(
            
            onResponse: @escaping (_ response: MetricsSerializer?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/metrics",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(MetricsSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Edit a brand.
        * Description: This API allows to edit meta of a brand.
        **/
        public func editBrand(
            brandId: String,
            body: CreateUpdateBrandRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand/\(brandId)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get a single brand.
        * Description: This API helps to get data associated to a particular brand.
        **/
        public func getBrand(
            brandId: String,
            
            onResponse: @escaping (_ response: GetBrandResponseSerializer?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand/\(brandId)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(GetBrandResponseSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Create a Brand.
        * Description: This API allows to create a brand associated to a company.
        **/
        public func createBrand(
            body: CreateUpdateBrandRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/brand",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get brands associated to a company
        * Description: This API helps to get view brands associated to a particular company.
        **/
        public func getCompanyBrands(
            
            onResponse: @escaping (_ response: CompanyBrandListSerializer?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/company-brand",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(CompanyBrandListSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Create a company brand mapping.
        * Description: This API allows to create a company brand mapping, for a already existing brand in the system.
        **/
        public func createCompanyBrand(
            body: CompanyBrandPostRequestSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/company-brand",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get list of locations
        * Description: This API allows to view all the locations asscoiated to a company.
        **/
        public func locationList(
            storeType: String?,
            q: String?,
            stage: String?,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: LocationListSerializer?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["store_type"] = storeType
            query["q"] = q
            query["stage"] = stage
            query["page_no"] = pageNo
            query["page_size"] = pageSize
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(LocationListSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Create a location asscoiated to a company.
        * Description: This API allows to create a location associated to a company.
        **/
        public func createLocation(
            body: LocationSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Edit a location asscoiated to a company.
        * Description: This API allows to edit a location associated to a company.
        **/
        public func editLocation(
            locationId: String,
            body: LocationSerializer,
            onResponse: @escaping (_ response: SuccessResponse?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location/\(locationId)",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(SuccessResponse.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get a single location.
        * Description: This API helps to get data associated to a particular location.
        **/
        public func getSingleLocation(
            locationId: String,
            
            onResponse: @escaping (_ response: GetLocationSerializer?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/service/platform/company-profile/v1.0/company/\(companyId)/location/\(locationId)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(GetLocationSerializer.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
    }
    
    
    
    public class Inventory {        
        var config: PlatformConfig
        var companyId: String

        init(config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
        }
        
        
        /**
        *
        * Summary: Get Job Configs For A Company
        * Description: REST Endpoint that returns all job configs for a company
        **/
        public func getJobsByCompany(
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigRawDTO?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["page_no"] = pageNo
            query["page_size"] = pageSize
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeListJobConfigRawDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Updates An Existing Job Config
        * Description: REST Endpoint that updates a job config
        **/
        public func updateJob(
            xUserData: String?,
            body: JobConfigDTO,
            onResponse: @escaping (_ response: ResponseEnvelopeString?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "put",
                url: "/v1.0/company/\(companyId)/jobs",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeString.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Creates A New Job Config
        * Description: REST Endpoint that creates a new job config
        **/
        public func createJob(
            xUserData: String?,
            body: JobConfigDTO,
            onResponse: @escaping (_ response: ResponseEnvelopeString?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "post",
                url: "/v1.0/company/\(companyId)/jobs",
                query: nil,
                body: body.dictionary,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeString.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get Job Configs By Company And Integration
        * Description: REST Endpoint that returns all job configs by company And integration
        **/
        public func getJobByCompanyAndIntegration(
            integrationId: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["page_no"] = pageNo
            query["page_size"] = pageSize
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/integration/\(integrationId)",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeListJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get Job Configs Defaults
        * Description: REST Endpoint that returns default fields job configs by company And integration
        **/
        public func getJobConfigDefaults(
            
            onResponse: @escaping (_ response: ResponseEnvelopeJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/defaults",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get Job Config By Code
        * Description: REST Endpoint that returns job config by code
        **/
        public func getJobByCode(
            code: String,
            
            onResponse: @escaping (_ response: ResponseEnvelopeJobConfigDTO?, _ error: FDKError?) -> Void
        ) {
             
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/code/\(code)",
                query: nil,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeJobConfigDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
        
        /**
        *
        * Summary: Get Job Codes By Company And Integration
        * Description: REST Endpoint that returns all job codes by company And integration
        **/
        public func getJobCodesByCompanyAndIntegration(
            integrationId: String,
            pageNo: Int?,
            pageSize: Int?,
            
            onResponse: @escaping (_ response: ResponseEnvelopeListJobConfigListDTO?, _ error: FDKError?) -> Void
        ) {
            var query: [String: Any] = [:] 
            query["page_no"] = pageNo
            query["page_size"] = pageSize
             
            PlatformAPIClient.execute(
                config: config,
                method: "get",
                url: "/v1.0/company/\(companyId)/jobs/code/integration/\(integrationId)",
                query: query,
                body: nil,
                onResponse: { (responseData, error, responseCode) in
                    if let _ = error, let data = responseData {
                        var err = Utility.decode(FDKError.self, from: data)
                        if err?.status == nil {
                            err?.status = responseCode
                        }
                        onResponse(nil, err)
                    } else if let data = responseData {
                        let response = Utility.decode(ResponseEnvelopeListJobConfigListDTO.self, from: data)
                        onResponse(response, nil)
                    } else {
                        onResponse(nil, nil)
                    }
            });
        }
    }
    
    

    public func application(id: String) -> Application {
        return Application(applicationId: id, config: config)
    }

    public class Application {
        var config: PlatformConfig
        var companyId: String
        var applicationId: String

        
        public let lead: Lead
        
        public let theme: Theme
        
        public let user: User
        
        public let content: Content
        
        public let communication: Communication
        
        public let companyProfile: CompanyProfile
        
        public let inventory: Inventory
        
        
        public init(applicationId: String, config: PlatformConfig) {
            self.config = config
            self.companyId = config.companyId
            self.applicationId = applicationId

            
            lead = Lead(config: config, applicationId: applicationId)
            
            theme = Theme(config: config, applicationId: applicationId)
            
            user = User(config: config, applicationId: applicationId)
            
            content = Content(config: config, applicationId: applicationId)
            
            communication = Communication(config: config, applicationId: applicationId)
            
            companyProfile = CompanyProfile(config: config, applicationId: applicationId)
            
            inventory = Inventory(config: config, applicationId: applicationId)
            
        }

        
            
        public class Lead {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            /**
            *
            * Summary: Gets the list of Application level Tickets and/or ticket filters depending on query params
            * Description: Gets the list of Application level Tickets and/or ticket filters
            **/
            public func getTickets(
                items: Bool?,
                filters: Bool?,
                
                onResponse: @escaping (_ response: TicketList?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["items"] = items
                query["filters"] = filters
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Retreives ticket details of a application level ticket
            * Description: Retreives ticket details of a application level ticket with ticket ID
            **/
            public func getTicket(
                ticketId: String,
                
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Edits ticket details of a application level ticket
            * Description: Edits ticket details of a application level ticket such as status, priority, category, tags, attachments, assigne & ticket content changes
            **/
            public func editTicket(
                ticketId: String,
                body: EditTicketPayload,
                onResponse: @escaping (_ response: Ticket?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Ticket.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            
            
            /**
            *
            * Summary: Create history for specific application level ticket
            * Description: Create history for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func createHistory(
                ticketId: String,
                body: TicketHistoryPayload,
                onResponse: @escaping (_ response: TicketHistory?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketHistory.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets history list for specific application level ticket
            * Description: Gets history list for specific application level ticket, this history is seen on ticket detail page, this can be comment, log or rating.
            **/
            public func getTicketHistory(
                ticketId: String,
                
                onResponse: @escaping (_ response: TicketHistoryList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/ticket/\(ticketId)/history",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TicketHistoryList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get specific custom form using it's slug
            * Description: Get specific custom form using it's slug, this is used to view the form.
            **/
            public func getCustomForm(
                slug: String,
                
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Edit the given custom form
            * Description: Edit the given custom form field such as adding or deleting input, assignee, title, decription, notification and polling information.
            **/
            public func editCustomForm(
                slug: String,
                body: EditCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form/\(slug)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get list of custom form
            * Description: Get list of custom form for given application
            **/
            public func getCustomForms(
                
                onResponse: @escaping (_ response: CustomFormList?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomFormList.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Creates a new custom form
            * Description: Creates a new custom form for given application
            **/
            public func createCustomForm(
                body: CreateCustomFormPayload,
                onResponse: @escaping (_ response: CustomForm?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/form",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomForm.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get Token to join a specific Video Room using it's unqiue name
            * Description: Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
            **/
            public func getTokenForVideoRoom(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetTokenForVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/token",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetTokenForVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get participants of a specific Video Room using it's unique name
            * Description: Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
            **/
            public func getVideoParticipants(
                uniqueName: String,
                
                onResponse: @escaping (_ response: GetParticipantsInsideVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room/\(uniqueName)/participants",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetParticipantsInsideVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Open a video room.
            * Description: Open a video room.
            **/
            public func openVideoRoom(
                body: CreateVideoRoomPayload,
                onResponse: @escaping (_ response: CreateVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Close the video room and force all participants to leave.
            * Description: Close the video room and force all participants to leave.
            **/
            public func closeVideoRoom(
                
                onResponse: @escaping (_ response: CloseVideoRoomResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/lead/v1.0/company/\(companyId)/application/\(applicationId)/video/room",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CloseVideoRoomResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class Theme {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Gets list of themes in theme library
            * Description: Gets list of themes in theme library
            **/
            public func getThemeLibrary(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Add theme to theme library
            * Description: Add theme to theme library
            **/
            public func addToThemeLibrary(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/library",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Apply theme
            * Description: Apply theme
            **/
            public func applyTheme(
                body: AddThemeRequestSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/apply",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Checks if theme is upgradable
            * Description: Checks if theme is upgradable
            **/
            public func isUpgradable(
                themeId: String,
                
                onResponse: @escaping (_ response: UpgradableThemeSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgradable",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UpgradableThemeSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Upgrades theme
            * Description: Upgrades theme
            **/
            public func upgradeTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/upgrade",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets public themes
            * Description: Gets public themes
            **/
            public func getPublicThemes(
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: ThemesListingResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/public/library",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesListingResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create new theme
            * Description: Create new theme
            **/
            public func createTheme(
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get applied theme
            * Description: Get applied theme
            **/
            public func getAppliedTheme(
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets fonts
            * Description: Gets fonts
            **/
            public func getFonts(
                
                onResponse: @escaping (_ response: FontsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/fonts",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(FontsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets theme by id
            * Description: Gets theme by id
            **/
            public func getThemeById(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update theme
            * Description: Update theme
            **/
            public func updateTheme(
                themeId: String,
                body: ThemesSchema,
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete theme
            * Description: Delete theme
            **/
            public func deleteTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Gets theme for preview
            * Description: Gets theme for preview
            **/
            public func getThemeForPreview(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/preview",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Publish theme
            * Description: Publish theme
            **/
            public func publishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/publish",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Unpublish theme
            * Description: Unpublish theme
            **/
            public func unpublishTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unpublish",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Archive theme
            * Description: Archive theme
            **/
            public func archiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/archive",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Unarchive theme
            * Description: Unarchive theme
            **/
            public func unarchiveTheme(
                themeId: String,
                
                onResponse: @escaping (_ response: ThemesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/theme/v1.0/company/\(companyId)/application/\(applicationId)/\(themeId)/unarchive",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ThemesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class User {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Gets list of customers
            * Description: Used to get application customers list
            **/
            public func getCustomers(
                q: String?,
                pageSize: Int?,
                pageNo: Int?,
                
                onResponse: @escaping (_ response: CustomerListResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["q"] = q
                query["page_size"] = pageSize
                query["page_no"] = pageNo
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/list",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CustomerListResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Search users
            * Description: Search users
            **/
            public func searchUsers(
                query: String?,
                
                onResponse: @escaping (_ response: UserSearchResponseSchema?, _ error: FDKError?) -> Void
            ) {
                var query: [String: Any] = [:] 
                query["query"] = query
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/customers/search",
                    query: query,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(UserSearchResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get platform config
            * Description: Used to get platform config
            **/
            public func getPlatformConfig(
                
                onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/platform/config",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PlatformSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update platform config
            * Description: Used to update platform config
            **/
            public func updatePlatformConfig(
                body: PlatformSchema,
                onResponse: @escaping (_ response: PlatformSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/user/v1.0/company/\(companyId)/application/\(applicationId)/platform/config",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(PlatformSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class Content {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Get annoucements list
            * Description: Get list of announcements
            **/
            public func getAnnouncementsList(
                
                onResponse: @escaping (_ response: GetAnnouncementListSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetAnnouncementListSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create an annoucement
            * Description: Create an announcement
            **/
            public func createAnnouncement(
                body: AdminAnnouncementSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get annoucement by id
            * Description: Get announcement by id
            **/
            public func getAnnouncementById(
                announcementId: String,
                
                onResponse: @escaping (_ response: AdminAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(AdminAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update an annoucement
            * Description: Update an announcement
            **/
            public func updateAnnouncement(
                announcementId: String,
                body: AdminAnnouncementSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update schedule or published status of an annoucement
            * Description: Update schedule or published status of an announcement
            **/
            public func updateAnnouncementSchedule(
                announcementId: String,
                body: ScheduleSchema,
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "patch",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete annoucement by id
            * Description: Delete announcement by id
            **/
            public func deleteAnnouncement(
                announcementId: String,
                
                onResponse: @escaping (_ response: CreateAnnouncementSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/announcements/\(announcementId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateAnnouncementSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Updates a component
            * Description: Updates a component for the given component ID
            **/
            public func updateComponent(
                id: String,
                
                onResponse: @escaping (_ response: Components?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/components/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Components.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get components by component ID
            * Description: The endpoint fetches the component by component ID
            **/
            public func getComponentByID(
                id: String,
                
                onResponse: @escaping (_ response: Components?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/components/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Components.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete a component from the page
            * Description: It deletes a component from the page
            **/
            public func deleteComponent(
                id: String,
                
                onResponse: @escaping (_ response: Components?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/components/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Components.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get components
            * Description: The endpoint fetches the components
            **/
            public func getComponents(
                
                onResponse: @escaping (_ response: Components?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/components",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Components.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get FAQ categories list
            * Description: Get list of FAQ categories
            **/
            public func getFaqCategories(
                
                onResponse: @escaping (_ response: GetFaqCategoriesSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/categories",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetFaqCategoriesSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get FAQ category by slug or id
            * Description: Get FAQ category by slug or id
            **/
            public func getFaqCategoryBySlugOrId(
                idOrSlug: String,
                
                onResponse: @escaping (_ response: GetFaqCategoryByIdOrSlugSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(idOrSlug)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetFaqCategoryByIdOrSlugSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Creates a FAQ category
            * Description: Add Faq Category
            **/
            public func createFaqCategory(
                body: CreateFaqCategoryRequestSchema,
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Updates a FAQ category
            * Description: Update Faq Category
            **/
            public func updateFaqCategory(
                id: String,
                body: UpdateFaqCategoryRequestSchema,
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Deletes a FAQ category
            * Description: Delete Faq Category
            **/
            public func deleteFaqCategory(
                id: String,
                
                onResponse: @escaping (_ response: CreateFaqCategorySchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqCategorySchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get FAQs of a Faq Category id or slug
            * Description: Get FAQs of a Faq Category `id` or `slug`
            **/
            public func getFaqsByCategoryIdOrSlug(
                idOrSlug: String,
                
                onResponse: @escaping (_ response: GetFaqSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(idOrSlug)/faqs",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetFaqSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Creates FAQs for category whose `id` is specified
            * Description: Creates FAQs for category whose `id` is specified
            **/
            public func addFaqToFaqCategory(
                categoryId: String,
                body: CreateFaqSchema,
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faqs",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Updates FAQ
            * Description: Updates FAQ
            **/
            public func updateFaq(
                categoryId: String,
                faqId: String,
                body: CreateFaqSchema,
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faq/\(faqId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete FAQ
            * Description: Delete FAQ
            **/
            public func deleteFaq(
                categoryId: String,
                faqId: String,
                
                onResponse: @escaping (_ response: CreateFaqResponseSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/faq/category/\(categoryId)/faq/\(faqId)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(CreateFaqResponseSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create key values for templating
            * Description: Use this to create key-values for templating.
            **/
            public func createKeyValue(
                body: KeyValueRequestBody,
                onResponse: @escaping (_ response: KeyValue?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/key-values/",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(KeyValue.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get KeyValue by id
            * Description: Use this to fetch a keyvalue by `id`
            **/
            public func getKeyValueByID(
                id: String,
                
                onResponse: @escaping (_ response: KeyValue?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/keyValues/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(KeyValue.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create landing-page
            * Description: Use this to create landing-page.
            **/
            public func createLandingPage(
                body: KeyValueRequestBody,
                onResponse: @escaping (_ response: LandingPage?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/landing-page/",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(LandingPage.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get legal information
            * Description: Get legal information of application, which includes policy, Terms and Conditions, and FAQ information of application.
            **/
            public func getLegalInformation(
                
                onResponse: @escaping (_ response: ApplicationLegal?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/legal",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ApplicationLegal.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Save legal information
            * Description: Save legal information of application, which includes Policy, Terms and Conditions, and FAQ information of application.
            **/
            public func updateLegalInformation(
                body: ApplicationLegal,
                onResponse: @escaping (_ response: ApplicationLegal?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/legal",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(ApplicationLegal.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get seo of application
            * Description: Get seo of application
            **/
            public func getSeoConfiguration(
                
                onResponse: @escaping (_ response: Seo?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/seo",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Seo.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update seo of application
            * Description: Update seo of application
            **/
            public func updateSeoConfiguration(
                body: Seo,
                onResponse: @escaping (_ response: Seo?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/seo",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Seo.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get support information
            * Description: Get contact details for customer support. Including emails and phone numbers
            **/
            public func getSupportInformation(
                
                onResponse: @escaping (_ response: Support?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/support",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Support.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update support data of application
            * Description: Update support data of application
            **/
            public func updateSupportInformation(
                body: Support,
                onResponse: @escaping (_ response: Support?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/support",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Support.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Creates Tag
            * Description: Create tags
            **/
            public func createTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Updates a Tag
            * Description: Update tag
            **/
            public func updateTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete tags for application
            * Description: Delete tags for application
            **/
            public func deleteAllTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get tags for application
            * Description: Get tags for application
            **/
            public func getTags(
                
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Adds a Tag
            * Description: Add tag
            **/
            public func addTag(
                body: CreateTagRequestSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/add",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Removes a Tag
            * Description: Remove a particular tag
            **/
            public func removeTag(
                body: RemoveHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Edits a Tag by Id
            * Description: Edits a particular tag
            **/
            public func editTag(
                tagId: String,
                body: UpdateHandpickedSchema,
                onResponse: @escaping (_ response: TagsSchema?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/content/v1.0/company/\(companyId)/application/\(applicationId)/tags/remove/handpicked/\(tagId)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TagsSchema.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class Communication {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            /**
            *
            * Summary: Get campaigns
            * Description: Get campaigns
            **/
            public func getCampaigns(
                
                onResponse: @escaping (_ response: Campaigns?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Campaigns.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create campaign
            * Description: Create campaign
            **/
            public func createCampaign(
                body: CampaignReq,
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get campaign by id
            * Description: Get campaign by id
            **/
            public func getCampaignById(
                id: String,
                
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update campaign by id
            * Description: Update campaign by id
            **/
            public func updateCampaignById(
                id: String,
                body: CampaignReq,
                onResponse: @escaping (_ response: Campaign?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/campaigns/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Campaign.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get stats of campaign by id
            * Description: Get stats of campaign by id
            **/
            public func getStatsOfCampaignById(
                id: String,
                
                onResponse: @escaping (_ response: GetStats?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/campaigns/getStats/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetStats.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get audiences
            * Description: Get audiences
            **/
            public func getAudiences(
                
                onResponse: @escaping (_ response: Audiences?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Audiences.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create audience
            * Description: Create audience
            **/
            public func createAudience(
                body: AudienceReq,
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get bigquery headers
            * Description: Get bigquery headers
            **/
            public func getBigqueryHeaders(
                body: BigqueryHeadersReq,
                onResponse: @escaping (_ response: BigqueryHeadersRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/bigquery-headers",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(BigqueryHeadersRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get audience by id
            * Description: Get audience by id
            **/
            public func getAudienceById(
                id: String,
                
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update audience by id
            * Description: Update audience by id
            **/
            public func updateAudienceById(
                id: String,
                body: AudienceReq,
                onResponse: @escaping (_ response: Audience?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/datasources/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Audience.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get n sample records from csv
            * Description: Get n sample records from csv
            **/
            public func getNSampleRecordsFromCsv(
                body: GetNRecordsCsvReq,
                onResponse: @escaping (_ response: GetNRecordsCsvRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sources/get-n-records",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(GetNRecordsCsvRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get email providers
            * Description: Get email providers
            **/
            public func getEmailProviders(
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: EmailProviders?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailProviders.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create email provider
            * Description: Create email provider
            **/
            public func createEmailProvider(
                body: EmailProviderReq,
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get email provider by id
            * Description: Get email provider by id
            **/
            public func getEmailProviderById(
                id: String,
                
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update email provider by id
            * Description: Update email provider by id
            **/
            public func updateEmailProviderById(
                id: String,
                body: EmailProviderReq,
                onResponse: @escaping (_ response: EmailProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/providers/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get email templates
            * Description: Get email templates
            **/
            public func getEmailTemplates(
                
                onResponse: @escaping (_ response: EmailTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create email template
            * Description: Create email template
            **/
            public func createEmailTemplate(
                body: EmailTemplateReq,
                onResponse: @escaping (_ response: EmailTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get system email templates
            * Description: Get system email templates
            **/
            public func getSystemEmailTemplates(
                
                onResponse: @escaping (_ response: SystemEmailTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/system-templates",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SystemEmailTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get email template by id
            * Description: Get email template by id
            **/
            public func getEmailTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: EmailTemplate?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailTemplate.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update email template by id
            * Description: Update email template by id
            **/
            public func updateEmailTemplateById(
                id: String,
                body: EmailTemplateReq,
                onResponse: @escaping (_ response: EmailTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete email template by id
            * Description: Delete email template by id
            **/
            public func deleteEmailTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: EmailTemplateDeleteSuccessRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/email/templates/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EmailTemplateDeleteSuccessRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get event subscriptions
            * Description: Get event subscriptions
            **/
            public func getEventSubscriptions(
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: EventSubscriptions?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/event/event-subscriptions",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(EventSubscriptions.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get jobs
            * Description: Get jobs
            **/
            public func getJobs(
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: Jobs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/jobs",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Jobs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Trigger campaign job
            * Description: Trigger campaign job
            **/
            public func triggerCampaignJob(
                body: TriggerJobRequest,
                onResponse: @escaping (_ response: TriggerJobResponse?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/trigger-job",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(TriggerJobResponse.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get job logs
            * Description: Get job logs
            **/
            public func getJobLogs(
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: JobLogs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/jobs/logs",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(JobLogs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get communication logs
            * Description: Get communication logs
            **/
            public func getCommunicationLogs(
                companyId: String,
                applicationId: String,
                
                onResponse: @escaping (_ response: Logs?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/log",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(Logs.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get sms providers
            * Description: Get sms providers
            **/
            public func getSmsProviders(
                
                onResponse: @escaping (_ response: SmsProviders?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsProviders.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create sms provider
            * Description: Create sms provider
            **/
            public func createSmsProvider(
                body: SmsProviderReq,
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get sms provider by id
            * Description: Get sms provider by id
            **/
            public func getSmsProviderById(
                id: String,
                
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update sms provider by id
            * Description: Update sms provider by id
            **/
            public func updateSmsProviderById(
                id: String,
                body: SmsProviderReq,
                onResponse: @escaping (_ response: SmsProvider?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/providers/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsProvider.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get sms templates
            * Description: Get sms templates
            **/
            public func getSmsTemplates(
                
                onResponse: @escaping (_ response: SmsTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Create sms template
            * Description: Create sms template
            **/
            public func createSmsTemplate(
                body: SmsTemplateReq,
                onResponse: @escaping (_ response: SmsTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "post",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get sms template by id
            * Description: Get sms template by id
            **/
            public func getSmsTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: SmsTemplate?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsTemplate.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Update sms template by id
            * Description: Update sms template by id
            **/
            public func updateSmsTemplateById(
                id: String,
                body: SmsTemplateReq,
                onResponse: @escaping (_ response: SmsTemplateRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "put",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: body.dictionary,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsTemplateRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Delete sms template by id
            * Description: Delete sms template by id
            **/
            public func deleteSmsTemplateById(
                id: String,
                
                onResponse: @escaping (_ response: SmsTemplateDeleteSuccessRes?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "delete",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/templates/\(id)",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SmsTemplateDeleteSuccessRes.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
            
            /**
            *
            * Summary: Get system sms templates
            * Description: Get system sms templates
            **/
            public func getSystemSystemTemplates(
                
                onResponse: @escaping (_ response: SystemSmsTemplates?, _ error: FDKError?) -> Void
            ) {
                 
                 
                PlatformAPIClient.execute(
                    config: config,
                    method: "get",
                    url: "/service/platform/communication/v1.0/company/\(companyId)/application/\(applicationId)/sms/system-templates",
                    query: nil,
                    body: nil,
                    onResponse: { (responseData, error, responseCode) in
                        if let _ = error, let data = responseData {
                            var err = Utility.decode(FDKError.self, from: data)
                            if err?.status == nil {
                                err?.status = responseCode
                            }
                            onResponse(nil, err)
                        } else if let data = responseData {
                            let response = Utility.decode(SystemSmsTemplates.self, from: data)
                            onResponse(response, nil)
                        } else {
                            onResponse(nil, nil)
                        }
                });
            }
        }
        
        
            
        public class CompanyProfile {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
            
        public class Inventory {        
            var config: PlatformConfig
            var companyId: String
            var applicationId: String

            init(config: PlatformConfig, applicationId: String) {
                self.config = config
                self.companyId = config.companyId
                self.applicationId = applicationId
            }
            
            
            
            
            
            
            
            
        }
        
        
    }
}