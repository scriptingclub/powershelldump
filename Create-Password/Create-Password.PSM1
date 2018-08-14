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

$FirstDefidComplete = [int]0
$WordList = @()

while ($FirstDefidComplete -lt [int]2)

    {$defid = Get-Random -Minimum 0 -Maximum 1200000

    #Curl Urban Dictionary for a payload & Select the appropriate word from payload and save each to a variable

    $payload = (Invoke-WebRequest -Uri "http://api.urbandictionary.com/v0/define?defid=$defid" | ConvertFrom-Json).list.word

        if ($payload.length -ne 0) {
                                    $WordList += $payload
                                    ++$FirstDefidComplete}

    }
#If Lentgh is specified then make sure the two words aren't too long. If too long then add logic to rerun until size is appropriate
#####

#####
#Randomly Generate Salt of the appropriate length

$SaltDefault = 0
If ($length -gt 0) {$LengthCounter = 0
while ($LengthCounter -lt $length.length)
{
echo "I forgot to write the part calculating the length of the salt."
++$LengthCounter
}
}

else { $AsciiArray = @()

while ($SaltDefault -lt 5 ) {
$AsciiCharValue = Get-Random -Minimum 33 -Maximum 64
$AsciiChar = [char]$AsciiCharValue
$AsciiArray += $AsciiChar
++$SaltDefault
}}

#Concatonate Salt and words into a single string
$WordListNoSpace = ($WordList[0] -replace ' ','')
$PasswordPartial = $WordListNoSpace
$AsciiLength = $AsciiArray.Length
$Counter = 0
While ($Counter -lt $AsciiLength) {
$PasswordPartial += $AsciiArray[$Counter]
++$Counter
}
$PasswordString = $PasswordPartial + ($WordList[1] -replace ' ','')
#If clipboard switch is specified, send output to clipboard in plaintext

#If secure string switch is specified, send output to secure string variable. Add logic to create variable name and save to secure string.

#Else, echo string unless otherwise specified
$PasswordString = ($PasswordString -replace ' ','')
echo "Your new password is $PasswordString"
}
###End Ben's Powershell Function####################################################################################################





}
