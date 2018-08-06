Function Create-Password {

Param (
[switch]$Urban,

[int]$Length,

[switch]$Clip,

[switch]$OutSecure

)






###Ben's Powershell Function#####################################################################################################

###Summary###
###Randomly Queries Urban Dictionary API, Selects 2 words, Adds some Random Salt, Concatonates them together, Echos Password###
if ($urban -eq $true)
{
#Make 2 Random Numbers for Urban Dictionary API

$FirstDefidComplete = '0'
$defid1 = Get-Random -Minimum 0 -Maximum 1200000

#Curl Urban Dictionary and get two payloads

#Select the appropriate word from payload and save each to a variable

#If Lentgh is specified then make sure the two words aren't too long. If too long then add logic to rerun until size is appropriate

#Randomly Generate Salt of the appropriate length, only if specified

#Concatonate Salt and words into a single string

#If clipboard switch is specified, send output to clipboard in plaintext

#If secure string switch is specified, send output to secure string variable. Add logic to create variable name and save to secure string.

#Else, echo string unless otherwise specified

}
###End Ben's Powershell Function####################################################################################################





}
