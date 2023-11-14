Connect-pnponline -url https://tenant-admin.sharepoint.com -interactive

$site_script = get-content -path .\SiteScriptsAndDesigns\SiteScript.json -Raw

$sitescriptAdd= Add-SPOSiteScript -Title "Create new contoso Video Channel Script" -Content $site_script -Description "Creates a Communication site joined to the contoso Video Portal"


Add-SPOSiteDesign  -Title "Create new contoso Video Channel"  -WebTemplate "68" -SiteScripts $sitescriptAdd.Id -Description "Creates a Communication site joined to the contoso Video Portal with consistent UX and UI settings according to our corporate brand."