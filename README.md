<--AppVeyorBadge-->

The **xRemoteAccess** module is a part of the Windows PowerShell Desired State Configuration (DSC) Resource Kit, which is a collection of DSC Resources. This module is used to configure RRAS settings, with focus on Azure site to site VPN., with simple declarative language.

## Installation

To install **xRemoteAccess** module

-   If you are using WMF4 / PowerShell Version 4: Unzip the content under the C:\Program Files\WindowsPowerShell\Modules folder

-   If you are using WMF5 Preview: From an elevated PowerShell session run "Install-Module xRemoteAccess"

To confirm installation

-   Run Get-DSCResource to see that the resources listed above are among the DSC Resources displayed

## Contributing
Please check out common DSC Resources [contributing guidelines](https://github.com/PowerShell/DscResource.Kit/blob/master/CONTRIBUTING.md).

## Resources
**RemoteAccess** resource has following properties
- **CapacityKbps**: Specifies the bandwidth processing capacity of the gateway in Kbps.
- **ClientGpoName**: Specifies the names of the client GPO. A domain can be one of the domains deployed in the corporate network. If a GPO name is not specified, then by default a GPO with following name is created in the domain of the DA server - DirectAccess Client Settings.
- **ConnectToAddress**: Specifies the DA server or NAT public address to which the clients connect. Specified as a host name or an IPv4 address. If the address is specified, then is must to be public.
- **DAInstallType**: Specifies the configuration in which DA should be installed.
- **DeployNat**: Specifies that DA should be deployed behind a NAT. In a single network adapter configuration scenario the DA server is always deployed behind a NAT and there is no need to specify this parameter.
- **Ensure**: Governs whether Remote Access should be installed or uninstalled from the server.
- **EntrypointName**: Specifies the identity of a site in a multi-site deployment where VPN needs to be installed.
- **IPAddressRange**: Specifies that static pool IPv4 addressing should be enabled. This parameter contains an IP address range, and consisting of a start IP and an end IP, from which IP addresses are allocated to VPN clients. The start and end IPs of each of the ranges must be specified one after the other and separated by commas.
- **IPv6Prefix**: Enables IPv6 address assignment for a VPN and specifies the prefix to use for the addressing.
- **InternalInterface**: Specifies the name of the corporate network facing interface. In a single network adapter configuration the same name is specified for both internal and internet interfaces. If a name is not specified, then the cmdlet attempts to detect the internal interface automatically. 
- **InternetInterface**: Specifies the name of the internet facing interface. In a single network adapter configuration the same name is specified for both internal and internet interfaces. If name is not specified, then this cmdlet attempts to detect the internet interface automatically.
- **MsgAuthenticator**: Specifies that the usage of message authenticator should be enabled or disabled. The default value is Disabled. This parameter is applicable only when a RADIUS server is being configured for authentication.
- **MultiTenancy**: Indicates that multitenancy is enabled for the service.
- **NlsCertificate**: Specifies that the Network Location Server  should be configured on the DA server itself and represents the certificate to be used. The subject name of the certificate should resolve to an address on the internal interface of the DA server.
- **NlsUrl**: Specifies that the NLS is present on a different server and represents the URL on the server that will be used to provide clients with location information.
- **NoPrerequisite**: Specifies that a prerequisite check should not be performed for DA.
- **RadiusPort**: Specifies the port number on which the RADIUS server is accepting authentication requests. The default value is 1813. This parameter is applicable only when a RADIUS server is being configured for authentication.
- **RadiusScore**: Specifies the port number on which the RADIUS server is accepting authentication requests. The default value is 1813. This parameter is applicable only when a RADIUS server is being configured for authentication.
- **RadiusServer**: Specifies the IPv4 or IPv6 address, or host name, of the RADIUS server that is to be used for authentication. Specifying this parameter indicates that RADIUS authentication should be used for VPN.
- **RadiusTimeout**: Specifies the timeout value for the RADIUS server, in seconds. The default value is 5 seconds. This parameter is applicable only when a RADIUS server is being configured for authentication.
- **ServerGpoName**: Specifies the name of the GPO for the DA server. If a name is not specified, then a GPO with the following name DirectAccess Client Settings is created in the domain of a DA server.
- **SharedSecret**: Specifies the shared secret between the RA server and the specified external RADIUS server, which is required for successful communication between the two servers. The secret is specified in plain text. It is mandatory to specify this parameter if a RADIUS server is being configured for authentication.
- **ThrottleLimit**: Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
- **VpnType**: Specifies the type of VPN installation.


**VpnS2SInterface** resource has following properties
- **AdminStatus**: Specifies the administrator status of the cmdlet.
- **AuthenticationMethod**: Specifies the authentication method to be used by the S2S connection. If PSK is specified, then there can only be one active S2S VPN interface per destination IP address.
- **AuthenticationTransformConstants**: Specifies a transform constant.
- **Certificate**: Specifies the certificate to be used in default store. Applicable only if AuthenticationMethod parameter is set to MachineCert.
- **CipherTransformConstants**: Specifies a cipher transform constant.
- **CustomPolicy**: Specifies the custom IKE IPsec policies.
- **DHGroup**: Specifies the Diffie-Hellman (DH) group for the IPsec policy.
- **Destination**: Specifies the destination end point of the S2S connection.
- **EapMethod**: Specifies the EAP method if IkeLocalAuthenticationMethod is EAP.
- **EnableQoS**: Indicates whether to enable Quality of Service (QoS) on an interface.
- **EncryptionMethod**: Specifies the encryption method for the IKE policy.
- **EncryptionType**: Specifies the type of encryption.
- **Ensure**: Governs whether the VPN site to site interface should be present or absent from the server.
- **IdleDisconnectSeconds**: Specifies the time interval, in seconds, after which an idle connection is disconnected. Unless you disable idle timeout, an idle connection is disconnected after this time interval is reached.
- **InitiateConfigPayload**: Indicates whether to initiate Config payload negotiation.
- **IPv4Subnet**: Specifies the IPv4 subnet that is routed on this connection with metrics. You must specify the IPv4 subnet in the format of IPv4Address/SubnetPrefixLength:RouteMetric.
- **IPv4TriggerFilter**: Specifies an array of IPv4 filters that trigger demand dial connections.
- **IPv4TriggerFilterAction**: Indicates whether a filter should trigger an S2S connection.
- **IPv6Subnet**: Specifies the IPv6 subnet that is routed on this connection with metrics.
- **IPv6TriggerFilter**: Specifies an array of IPv6 filters that trigger demand dial connections.
- **IPv6TriggerFilterAction**: Indicates whether a filter should trigger an S2S connection.
- **IntegrityCheckMethod**: Specifies the integrity method for the IPsec policy.
- **InternalIPv4**: Specifies that the IPv4 address should be negotiated.
- **InternalIPv6**: Specifies that the IPv6 address should be negotiated.
- **Name**: Specifies the integrity method for the IPsec policy.
- **NetworkOutageTimeSeconds**: Specifies the maximum amount of time, in seconds, before a connection is disconnected due to a network outage.
- **NumberOfTries**: Specifies the number of connection attempts.
- **Persistent**: Indicates that a connection is not disconnected due to inactivity.
- **PfsGroup**: Specifies the PFS group in the IPsec policy.
- **PostConnectionIPv4Subnet**: Specifies the IPv4 subnet routes that are added to a site-to-site interface after the connection is established. The values specified are not used to initiate the site-to-site VPN connection.
- **PostConnectionIPv6Subnet**: Specifies the IPv6 subnet routes that are added to a site-to-site interface after the connection is established. The values specified are not used to initiate the site-to-site VPN connection.
- **PromoteAlternate**: Specifies an IP address that if successfully connected becomes the primary IP address, and the current primary IP address is moved to the alternate list.
- **Protocol**: Specifies the underlying protocol used for tunneling.
- **RadiusAttributeClass**: Specifies a RADIUS attribute.
- **ResponderAuthenticationMethod**: Specifies the authentication method to be used by the S2S initiator to validate the S2S responder.
- **RetryIntervalSeconds**: Specifies the time interval, in seconds, to wait between retries.
- **RoutingDomain**: Specifies an ID, as a string, for a routing domain. The ID of a routing domain is a user-defined alphanumeric string.
- **RxBandwidthKbps**: Specifies the receive bandwidth limit, in kilobits per second (Kbps).
- **SADataSizeForRenegotiationKilobytes**: Specifies the amount of data, in kilobytes (KB), that can be transferred using a security association (SA). When the limit is reached, the SA must be renegotiated.
- **SALifeTimeSeconds**: Specifies the lifetime, in seconds, of a security association (SA). The SA is no longer valid after this time interval.
- **SharedSecret**: Specifies the text of the shared secret to be used in the connection. This parameter is only applicable only if the AuthenticationMethod parameter is set to PSK or the ResponderAuthenticationMethod parameter is set to PSK.
- **SourceIpAddress**: Specifies the source IPv4 or IPv6 addresses to use when dialing the connection.
- **ThrottleLimit**: Specifies the maximum number of concurrent operations that can be established to run the cmdlet. If this parameter is omitted or a value of 0 is entered, then Windows PowerShell® calculates an optimum throttle limit for the cmdlet based on the number of CIM cmdlets that are running on the computer. The throttle limit applies only to the current cmdlet, not to the session or to the computer.
- **TxBandwidthKbps**: Specifies a transmit bandwidth limit, in Kbps, for the interface.
- **User**: Specifies the user name to be used for the connection. Applicable only if AuthenticationMethod parameter is set to EAP.


**VpnServerIPsecConfiguration** resource has following properties
- **AuthenticationTransformConstants**: Specifies the authentication transform in the IPsec policy.
- **CipherTransformConstants**: Specifies the cipher in the IPsec policy.
- **CustomPolicy**: Specifies the custom IKE IPsec policies.
- **DHGroup**: Specifies the Diffie-Hellman (DH) group in the IPsec policy.
- **EncryptionMethod**: Specifies the encryption method in the IKE policy.
- **EncryptionType**: Specifies the type of encryption.
- **IdleDisconnectSeconds**: Specifies the time, in seconds, after which an idle connection is disconnected. Unless the idle time-out is Disabled, the entire connection is disconnected if the connection is idle for the specified interval.
- **Ikev2Ports**: Specifies the number of IKEv2 ports to create.
- **IntegrityCheckMethod**: Specifies the integrity method in the IPsec policy.
- **L2tpPorts**: Specifies the number of L2TP ports to create.
- **PfsGroup**: Specifies the perfect forward secrecy (PFS) group in the IPsec policy.
- **SADataSizeForRenegotiationKilobytes**: Specifies the number of kilobytes that are allowed to transfer using a security association (SA). After that the SA will be renegotiated.
- **SALifeTimeSeconds**: Specifies the lifetime of a SA in seconds, after which the SA is no longer valid.


**VpnS2SInterfaceConnection** resource has following properties
- **Name**: Specifies the name of the connection.
- **Ensure**: Governs whether DSC should verify the site to site connection is in a connected or disconnected state.


Versions
--------

**0.1.0.0**

Initial release with the following resources: - RemoteAccess
 - VpnS2SInterface
 - VpnServerIPsecConfiguration
 - VpnS2SInterfaceConnection
Examples
--------

```powershell
# placeholder
```
