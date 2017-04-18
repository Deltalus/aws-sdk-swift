// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension CognitoIdentity {

    public struct MappingRule: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The claim name that must be present in the token, for example, "isAdmin" or "paid".
        public var claim: String = ""
        /// The match condition that specifies how closely the claim value in the IdP token must match Value.
        public var matchType: String = ""
        /// A brief string that the claim must match, for example, "paid" or "yes".
        public var value: String = ""
        /// The role ARN.
        public var roleARN: String = ""

        public init() {}

        public init(claim: String, matchType: String, value: String, roleARN: String) {
            self.claim = claim
            self.matchType = matchType
            self.value = value
            self.roleARN = roleARN
        }

    }

    public struct CreateIdentityPoolInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of OpendID Connect provider ARNs.
        public var openIdConnectProviderARNs: [String]? = nil
        /// An array of Amazon Cognito Identity user pools and their client IDs.
        public var cognitoIdentityProviders: [CognitoIdentityProvider]? = nil
        /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the DeveloperProviderName, you can use letters as well as period (.), underscore (_), and dash (-). Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.
        public var developerProviderName: String? = nil
        /// A string that you provide.
        public var identityPoolName: String = ""
        /// TRUE if the identity pool supports unauthenticated logins.
        public var allowUnauthenticatedIdentities: Bool = false
        /// Optional key:value pairs mapping provider names to provider app IDs.
        public var supportedLoginProviders: [String: String]? = nil
        /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
        public var samlProviderARNs: [String]? = nil

        public init() {}

        public init(openIdConnectProviderARNs: [String]? = nil, cognitoIdentityProviders: [CognitoIdentityProvider]? = nil, developerProviderName: String? = nil, identityPoolName: String, allowUnauthenticatedIdentities: Bool, supportedLoginProviders: [String: String]? = nil, samlProviderARNs: [String]? = nil) {
            self.openIdConnectProviderARNs = openIdConnectProviderARNs
            self.cognitoIdentityProviders = cognitoIdentityProviders
            self.developerProviderName = developerProviderName
            self.identityPoolName = identityPoolName
            self.allowUnauthenticatedIdentities = allowUnauthenticatedIdentities
            self.supportedLoginProviders = supportedLoginProviders
            self.samlProviderARNs = samlProviderARNs
        }

    }

    public struct ListIdentityPoolsInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A pagination token.
        public var nextToken: String? = nil
        /// The maximum number of identities to return.
        public var maxResults: Int32 = 0

        public init() {}

        public init(nextToken: String? = nil, maxResults: Int32) {
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct Credentials: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The Secret Access Key portion of the credentials
        public var secretKey: String? = nil
        /// The Access Key portion of the credentials.
        public var accessKeyId: String? = nil
        /// The Session Token portion of the credentials
        public var sessionToken: String? = nil
        /// The date at which these credentials will expire.
        public var expiration: Date? = nil

        public init() {}

        public init(secretKey: String? = nil, accessKeyId: String? = nil, sessionToken: String? = nil, expiration: Date? = nil) {
            self.secretKey = secretKey
            self.accessKeyId = accessKeyId
            self.sessionToken = sessionToken
            self.expiration = expiration
        }

    }

    public struct GetCredentialsForIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.
        public var customRoleArn: String? = nil
        /// A set of optional name-value pairs that map provider names to provider tokens.
        public var logins: [String: String]? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String = ""

        public init() {}

        public init(customRoleArn: String? = nil, logins: [String: String]? = nil, identityId: String) {
            self.customRoleArn = customRoleArn
            self.logins = logins
            self.identityId = identityId
        }

    }

    public struct LookupDeveloperIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.
        public var developerUserIdentifier: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// A pagination token. The first call you make will have NextToken set to null. After that the service will return NextToken values as needed. For example, let's say you make a request with MaxResults set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
        public var nextToken: String? = nil
        /// The maximum number of identities to return.
        public var maxResults: Int32? = nil

        public init() {}

        public init(developerUserIdentifier: String? = nil, identityId: String? = nil, identityPoolId: String, nextToken: String? = nil, maxResults: Int32? = nil) {
            self.developerUserIdentifier = developerUserIdentifier
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct RulesConfigurationType: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An array of rules. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.
        public var rules: [MappingRule] = []

        public init() {}

        public init(rules: [MappingRule]) {
            self.rules = rules
        }

    }

    public struct IdentityPool: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of OpendID Connect provider ARNs.
        public var openIdConnectProviderARNs: [String]? = nil
        /// A list representing an Amazon Cognito Identity User Pool and its client ID.
        public var cognitoIdentityProviders: [CognitoIdentityProvider]? = nil
        /// The "domain" by which Cognito will refer to your users.
        public var developerProviderName: String? = nil
        /// A string that you provide.
        public var identityPoolName: String = ""
        /// TRUE if the identity pool supports unauthenticated logins.
        public var allowUnauthenticatedIdentities: Bool = false
        /// Optional key:value pairs mapping provider names to provider app IDs.
        public var supportedLoginProviders: [String: String]? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
        public var samlProviderARNs: [String]? = nil

        public init() {}

        public init(openIdConnectProviderARNs: [String]? = nil, cognitoIdentityProviders: [CognitoIdentityProvider]? = nil, developerProviderName: String? = nil, identityPoolName: String, allowUnauthenticatedIdentities: Bool, supportedLoginProviders: [String: String]? = nil, identityPoolId: String, samlProviderARNs: [String]? = nil) {
            self.openIdConnectProviderARNs = openIdConnectProviderARNs
            self.cognitoIdentityProviders = cognitoIdentityProviders
            self.developerProviderName = developerProviderName
            self.identityPoolName = identityPoolName
            self.allowUnauthenticatedIdentities = allowUnauthenticatedIdentities
            self.supportedLoginProviders = supportedLoginProviders
            self.identityPoolId = identityPoolId
            self.samlProviderARNs = samlProviderARNs
        }

    }

    public struct IdentityPoolShortDescription: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String? = nil
        /// A string that you provide.
        public var identityPoolName: String? = nil

        public init() {}

        public init(identityPoolId: String? = nil, identityPoolName: String? = nil) {
            self.identityPoolId = identityPoolId
            self.identityPoolName = identityPoolName
        }

    }

    public struct ListIdentitiesInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.
        public var hideDisabled: Bool? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// A pagination token.
        public var nextToken: String? = nil
        /// The maximum number of identities to return.
        public var maxResults: Int32 = 0

        public init() {}

        public init(hideDisabled: Bool? = nil, identityPoolId: String, nextToken: String? = nil, maxResults: Int32) {
            self.hideDisabled = hideDisabled
            self.identityPoolId = identityPoolId
            self.nextToken = nextToken
            self.maxResults = maxResults
        }

    }

    public struct DeleteIdentityPoolInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct GetCredentialsForIdentityResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Credentials for the provided identity ID.
        public var credentials: Credentials? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(credentials: Credentials? = nil, identityId: String? = nil) {
            self.credentials = credentials
            self.identityId = identityId
        }

    }

    public struct MergeDeveloperIdentitiesInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// User identifier for the destination user. The value should be a DeveloperUserIdentifier.
        public var destinationUserIdentifier: String = ""
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// User identifier for the source user. The value should be a DeveloperUserIdentifier.
        public var sourceUserIdentifier: String = ""
        /// The "domain" by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the DeveloperProviderName, you can use letters as well as period (.), underscore (_), and dash (-).
        public var developerProviderName: String = ""

        public init() {}

        public init(destinationUserIdentifier: String, identityPoolId: String, sourceUserIdentifier: String, developerProviderName: String) {
            self.destinationUserIdentifier = destinationUserIdentifier
            self.identityPoolId = identityPoolId
            self.sourceUserIdentifier = sourceUserIdentifier
            self.developerProviderName = developerProviderName
        }

    }

    public struct DeleteIdentitiesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.
        public var unprocessedIdentityIds: [UnprocessedIdentityId]? = nil

        public init() {}

        public init(unprocessedIdentityIds: [UnprocessedIdentityId]? = nil) {
            self.unprocessedIdentityIds = unprocessedIdentityIds
        }

    }

    public struct GetOpenIdTokenForDeveloperIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don't provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.
        public var tokenDuration: Int64? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax "developer_provider_name": "developer_user_identifier". The developer provider is the "domain" by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins.
        public var logins: [String: String] = [:]

        public init() {}

        public init(tokenDuration: Int64? = nil, identityId: String? = nil, identityPoolId: String, logins: [String: String]) {
            self.tokenDuration = tokenDuration
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.logins = logins
        }

    }

    public struct GetOpenIdTokenInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito Identity Provider, or any other OpenId Connect provider, always include the id_token.
        public var logins: [String: String]? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String = ""

        public init() {}

        public init(logins: [String: String]? = nil, identityId: String) {
            self.logins = logins
            self.identityId = identityId
        }

    }

    public struct DeleteIdentitiesInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A list of 1-60 identities that you want to delete.
        public var identityIdsToDelete: [String] = []

        public init() {}

        public init(identityIdsToDelete: [String]) {
            self.identityIdsToDelete = identityIdsToDelete
        }

    }

    public struct GetIdInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A standard AWS account ID (9+ digits).
        public var accountId: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// A set of optional name-value pairs that map provider names to provider tokens. The available provider names for Logins are as follows:   Facebook: graph.facebook.com    Amazon Cognito Identity Provider: cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789    Google: accounts.google.com    Amazon: www.amazon.com    Twitter: api.twitter.com    Digits: www.digits.com   
        public var logins: [String: String]? = nil

        public init() {}

        public init(accountId: String? = nil, identityPoolId: String, logins: [String: String]? = nil) {
            self.accountId = accountId
            self.identityPoolId = identityPoolId
            self.logins = logins
        }

    }

    public struct ListIdentityPoolsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The identity pools returned by the ListIdentityPools action.
        public var identityPools: [IdentityPoolShortDescription]? = nil
        /// A pagination token.
        public var nextToken: String? = nil

        public init() {}

        public init(identityPools: [IdentityPoolShortDescription]? = nil, nextToken: String? = nil) {
            self.identityPools = identityPools
            self.nextToken = nextToken
        }

    }

    public struct GetIdentityPoolRolesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String? = nil
        /// How users for a specific identity provider are to mapped to roles. This is a String-to-RoleMapping object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".
        public var roleMappings: [String: RoleMapping]? = nil
        /// The map of roles associated with this pool. Currently only authenticated and unauthenticated roles are supported.
        public var roles: [String: String]? = nil

        public init() {}

        public init(identityPoolId: String? = nil, roleMappings: [String: RoleMapping]? = nil, roles: [String: String]? = nil) {
            self.identityPoolId = identityPoolId
            self.roleMappings = roleMappings
            self.roles = roles
        }

    }

    public struct GetOpenIdTokenForDeveloperIdentityResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An OpenID token.
        public var token: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(token: String? = nil, identityId: String? = nil) {
            self.token = token
            self.identityId = identityId
        }

    }

    public struct DescribeIdentityPoolInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct GetIdentityPoolRolesInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""

        public init() {}

        public init(identityPoolId: String) {
            self.identityPoolId = identityPoolId
        }

    }

    public struct UnlinkDeveloperIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A unique ID used by your backend authentication process to identify a user.
        public var developerUserIdentifier: String = ""
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String = ""
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// The "domain" by which Cognito will refer to your users.
        public var developerProviderName: String = ""

        public init() {}

        public init(developerUserIdentifier: String, identityId: String, identityPoolId: String, developerProviderName: String) {
            self.developerUserIdentifier = developerUserIdentifier
            self.identityId = identityId
            self.identityPoolId = identityPoolId
            self.developerProviderName = developerProviderName
        }

    }

    public struct GetIdResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(identityId: String? = nil) {
            self.identityId = identityId
        }

    }

    public struct IdentityDescription: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Date on which the identity was last modified.
        public var lastModifiedDate: Date? = nil
        /// Date on which the identity was created.
        public var creationDate: Date? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil
        /// A set of optional name-value pairs that map provider names to provider tokens.
        public var logins: [String]? = nil

        public init() {}

        public init(lastModifiedDate: Date? = nil, creationDate: Date? = nil, identityId: String? = nil, logins: [String]? = nil) {
            self.lastModifiedDate = lastModifiedDate
            self.creationDate = creationDate
            self.identityId = identityId
            self.logins = logins
        }

    }

    public struct SetIdentityPoolRolesInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String = ""
        /// How users for a specific identity provider are to mapped to roles. This is a string to RoleMapping object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id". Up to 25 rules can be specified per identity provider.
        public var roleMappings: [String: RoleMapping]? = nil
        /// The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.
        public var roles: [String: String] = [:]

        public init() {}

        public init(identityPoolId: String, roleMappings: [String: RoleMapping]? = nil, roles: [String: String]) {
            self.identityPoolId = identityPoolId
            self.roleMappings = roleMappings
            self.roles = roles
        }

    }

    public struct UnlinkIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A set of optional name-value pairs that map provider names to provider tokens.
        public var logins: [String: String] = [:]
        /// Provider names to unlink from this identity.
        public var loginsToRemove: [String] = []
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String = ""

        public init() {}

        public init(logins: [String: String], loginsToRemove: [String], identityId: String) {
            self.logins = logins
            self.loginsToRemove = loginsToRemove
            self.identityId = identityId
        }

    }

    public struct GetOpenIdTokenResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An OpenID token, valid for 15 minutes.
        public var token: String? = nil
        /// A unique identifier in the format REGION:GUID. Note that the IdentityId returned may not match the one passed on input.
        public var identityId: String? = nil

        public init() {}

        public init(token: String? = nil, identityId: String? = nil) {
            self.token = token
            self.identityId = identityId
        }

    }

    public struct CognitoIdentityProvider: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// TRUE if server-side token validation is enabled for the identity provider’s token.
        public var serverSideTokenCheck: Bool? = nil
        /// The provider name for an Amazon Cognito Identity User Pool. For example, cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789.
        public var providerName: String? = nil
        /// The client ID for the Amazon Cognito Identity User Pool.
        public var clientId: String? = nil

        public init() {}

        public init(serverSideTokenCheck: Bool? = nil, providerName: String? = nil, clientId: String? = nil) {
            self.serverSideTokenCheck = serverSideTokenCheck
            self.providerName = providerName
            self.clientId = clientId
        }

    }

    public struct ListIdentitiesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// An identity pool ID in the format REGION:GUID.
        public var identityPoolId: String? = nil
        /// An object containing a set of identities and associated mappings.
        public var identities: [IdentityDescription]? = nil
        /// A pagination token.
        public var nextToken: String? = nil

        public init() {}

        public init(identityPoolId: String? = nil, identities: [IdentityDescription]? = nil, nextToken: String? = nil) {
            self.identityPoolId = identityPoolId
            self.identities = identities
            self.nextToken = nextToken
        }

    }

    public struct LookupDeveloperIdentityResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// This is the list of developer user identifiers associated with an identity ID. Cognito supports the association of multiple developer user identifiers with an identity ID.
        public var developerUserIdentifierList: [String]? = nil
        /// A pagination token. The first call you make will have NextToken set to null. After that the service will return NextToken values as needed. For example, let's say you make a request with MaxResults set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
        public var nextToken: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(developerUserIdentifierList: [String]? = nil, nextToken: String? = nil, identityId: String? = nil) {
            self.developerUserIdentifierList = developerUserIdentifierList
            self.nextToken = nextToken
            self.identityId = identityId
        }

    }

    public struct UnprocessedIdentityId: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The error code indicating the type of error that occurred.
        public var errorCode: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(errorCode: String? = nil, identityId: String? = nil) {
            self.errorCode = errorCode
            self.identityId = identityId
        }

    }

    public struct MergeDeveloperIdentitiesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String? = nil

        public init() {}

        public init(identityId: String? = nil) {
            self.identityId = identityId
        }

    }

    public struct RoleMapping: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The role mapping type. Token will use cognito:roles and cognito:preferred_role claims from the Cognito identity provider token to map groups to roles. Rules will attempt to match claims from the token to map to a role.
        public var type: String = ""
        /// The rules to be used for mapping users to roles. If you specify Rules as the role mapping type, RulesConfiguration is required.
        public var rulesConfiguration: RulesConfigurationType? = nil
        /// If you specify Token or Rules as the Type, AmbiguousRoleResolution is required. Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type.
        public var ambiguousRoleResolution: String? = nil

        public init() {}

        public init(type: String, rulesConfiguration: RulesConfigurationType? = nil, ambiguousRoleResolution: String? = nil) {
            self.type = type
            self.rulesConfiguration = rulesConfiguration
            self.ambiguousRoleResolution = ambiguousRoleResolution
        }

    }

    public struct DescribeIdentityInput: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// A unique identifier in the format REGION:GUID.
        public var identityId: String = ""

        public init() {}

        public init(identityId: String) {
            self.identityId = identityId
        }

    }

}