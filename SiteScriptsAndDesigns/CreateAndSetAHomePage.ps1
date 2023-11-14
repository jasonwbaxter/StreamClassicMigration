Connect-PnPOnline -Url https://tenant.sharepoint.com/sites/contosotv -Interactive

$Template= Get-PnPPage -Identity "homepagetemplate.aspx"

Connect-PnPOnline -Url https://tenant.sharepoint.com/sites/channel1
