<#
.SYNOPSIS
Get-DistributionGroupMembers is an easy way to see a list of all group members. A good way to get a high level view of the groups that are in your organisation.
.DESCRIPTION
The script simply runs the Get-DistributionGroup command against all lists and adds the results to a table display the group name and the members of that group.
.EXAMPLE
Consultants
---------------
Test User 1
Test User 2
Test User 3
....etc
#>
foreach ($group in Get-DistributionGroup)
 { 
    get-distributiongroupmember $group | ft @{e={$_.displayname};L=”$group”}
 }
