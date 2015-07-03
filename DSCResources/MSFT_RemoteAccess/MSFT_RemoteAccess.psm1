function Get-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Collections.Hashtable])]
	param
	(
		[parameter(Mandatory = $true)]
		[ValidateSet("Vpn","VpnS2S")]
		[System.String]
		$VpnType
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."


	<#
	$returnValue = @{
		CapacityKbps = [System.UInt64]
		ClientGpoName = [System.String]
		ConnectToAddress = [System.String]
		DAInstallType = [System.String]
		DeployNat = [System.Boolean]
		Ensure = [System.String]
		EntrypointName = [System.String]
		IPAddressRange = [System.String[]]
		IPv6Prefix = [System.String]
		InternalInterface = [System.String]
		InternetInterface = [System.String]
		MsgAuthenticator = [System.String]
		MultiTenancy = [System.Boolean]
		NlsCertificate = [System.String]
		NlsUrl = [System.String]
		NoPrerequisite = [System.Boolean]
		RadiusPort = [System.UInt16]
		RadiusScore = [System.UInt16]
		RadiusServer = [System.String]
		RadiusTimeout = [System.UInt32]
		ServerGpoName = [System.String]
		SharedSecret = [System.String]
		ThrottleLimit = [System.UInt32]
		VpnType = [System.String]
	}

	$returnValue
	#>
}


function Set-TargetResource
{
	[CmdletBinding()]
	param
	(
		[System.UInt64]
		$CapacityKbps,

		[System.String]
		$ClientGpoName,

		[System.String]
		$ConnectToAddress,

		[ValidateSet("FullInstall","ManageOut")]
		[System.String]
		$DAInstallType,

		[System.Boolean]
		$DeployNat,

		[ValidateSet("Present","Absent")]
		[System.String]
		$Ensure,

		[System.String]
		$EntrypointName,

		[System.String[]]
		$IPAddressRange,

		[System.String]
		$IPv6Prefix,

		[System.String]
		$InternalInterface,

		[System.String]
		$InternetInterface,

		[ValidateSet("Enabled","Disabled")]
		[System.String]
		$MsgAuthenticator,

		[System.Boolean]
		$MultiTenancy,

		[System.String]
		$NlsCertificate,

		[System.String]
		$NlsUrl,

		[System.Boolean]
		$NoPrerequisite,

		[System.UInt16]
		$RadiusPort,

		[System.UInt16]
		$RadiusScore,

		[System.String]
		$RadiusServer,

		[System.UInt32]
		$RadiusTimeout,

		[System.String]
		$ServerGpoName,

		[System.String]
		$SharedSecret,

		[System.UInt32]
		$ThrottleLimit,

		[parameter(Mandatory = $true)]
		[ValidateSet("Vpn","VpnS2S")]
		[System.String]
		$VpnType
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."

	#Include this line if the resource requires a system reboot.
	#$global:DSCMachineStatus = 1


}


function Test-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Boolean])]
	param
	(
		[System.UInt64]
		$CapacityKbps,

		[System.String]
		$ClientGpoName,

		[System.String]
		$ConnectToAddress,

		[ValidateSet("FullInstall","ManageOut")]
		[System.String]
		$DAInstallType,

		[System.Boolean]
		$DeployNat,

		[ValidateSet("Present","Absent")]
		[System.String]
		$Ensure,

		[System.String]
		$EntrypointName,

		[System.String[]]
		$IPAddressRange,

		[System.String]
		$IPv6Prefix,

		[System.String]
		$InternalInterface,

		[System.String]
		$InternetInterface,

		[ValidateSet("Enabled","Disabled")]
		[System.String]
		$MsgAuthenticator,

		[System.Boolean]
		$MultiTenancy,

		[System.String]
		$NlsCertificate,

		[System.String]
		$NlsUrl,

		[System.Boolean]
		$NoPrerequisite,

		[System.UInt16]
		$RadiusPort,

		[System.UInt16]
		$RadiusScore,

		[System.String]
		$RadiusServer,

		[System.UInt32]
		$RadiusTimeout,

		[System.String]
		$ServerGpoName,

		[System.String]
		$SharedSecret,

		[System.UInt32]
		$ThrottleLimit,

		[parameter(Mandatory = $true)]
		[ValidateSet("Vpn","VpnS2S")]
		[System.String]
		$VpnType
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."


	<#
	$result = [System.Boolean]
	
	$result
	#>
}


Export-ModuleMember -Function *-TargetResource

