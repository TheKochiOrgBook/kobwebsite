# tar cvf

function backupMainSite {

   KOB_WEBSITE_BACKUP_LOCATION=$1
   KOB_WEBSITE_ROOT=$2

   tar cvf kobmainsite.bak.tar $KOB_WEBSITE_ROOT
   mv kobmainsite.bak.tar $KOB_WEBSITE_BACKUP_LOCATION

}

function restoreMainSiteFromBackup {

   KOB_WEBSITE_BACKUP_LOCATION=$1
   KOB_WEBSITE_ROOT=$2

   tar cvf kobmainsite.bak.tar $KOB_WEBSITE_ROOT
   mv kobmainsite.bak.tar $KOB_WEBSITE_BACKUP_LOCATION

}

function deployMainSite {

   KOB_WEBSITE_SRC_FOLDER=$1
   KOB_WEBSITE_ROOT=$2

   tar cvf kobmainsite.tar $KOB_WEBSITE_SRC_FOLDER
   mv kobmainsite.tar $KOB_WEBSITE_ROOT
   cd $KOB_WEBSITE_ROOT
   tar xvf kobmainsite.tar

}

deployMainSite ../mainwebsite/public_html fakewebsiteroot
