.class public Lcom/samsung/android/desktopmode/DesktopModePolicyManager;
.super Ljava/lang/Object;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEX_SUPPORTED:Ljava/lang/String; = "com.samsung.android.dex.launchpolicy.supported"

.field private static final TAG:Ljava/lang/String;

.field private static mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

.field private static sWhitelistPackages:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.app.simplesharing"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.oneconnect"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.calendar"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.email.provider"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.notes"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.myfiles"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.reminder"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.incallui"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.contacts"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.messaging"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.video"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.onlinevideo"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.videolist"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.music"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.mimage.photoretouching"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.mimage.gear360editor"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.vepreload"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.highlightplayer"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.app.slowmotion"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.devicecog"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.osp.app.signin"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.spdfnote"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.yellowpage"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.spen.flashannotate"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sds.mms.ui"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sds.mysinglesquare"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.docs"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gm"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.docs.editors.docs"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.docs.editors.sheets"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.docs.editors.slides"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.maps"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.photos"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.videos"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.vending"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.youtube"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.tachyon"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.instagram.android"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.word"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.powerpoint"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.excel"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.skydrive"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.microsoft.office.onenote"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.skype.raider"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.cisco.webex.meetings"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.cisco.wx2.android"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.vmware.view.client.android"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.citrix.Receiver"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kakao.talk"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.naver.line.android"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.adobe.lrmobile"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.adobe.photoshopmix"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.adobe.adobephotoshopfix"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.adobe.reader"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.adobe.psmobile"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.editor"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.editor.hidden"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.hword.editor.hword_apk"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.hcell.editor.hcell_apk"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.office.hshow.editor.hshow_apk"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.hancom.androidpc.launcher.shared"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.whatsapp"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.nhn.android.search"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.chrome"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.plus"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sWhitelistPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchModeFromDB(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchModeFromDB, ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    const-string/jumbo v4, "LaunchPackageList"

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;->findPackageMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getLaunchModeFromDB, ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " takes [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getLaunchModeFromDB, mOpenHelper is null."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getModeChangePolicyFromDB(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getModeChangePolicyFromDB, ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->mOpenHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;

    const-string/jumbo v4, "ModeChangePackageList"

    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DatabaseHelper;->findPackageMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getModeChangePolicyFromDB, ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " takes [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getModeChangePolicyFromDB, mOpenHelper is null."

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCategoryHomeDeclared(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDexSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDexSupported ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    const-string/jumbo v6, "com.samsung.android.dex.launchpolicy.supported"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_2
    :goto_1
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDexSupported, ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " takes [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    :try_start_1
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isDexSupported, ApplicationInfo is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_2
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isDexSupported, ApplicationInfo.metaData is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static isKeepAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKeepAlive ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    const-string/jumbo v6, "com.samsung.android.keepalive.density"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_2
    :goto_1
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKeepAlive ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ), takes [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    :try_start_1
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isKeepAlive, ApplicationInfo is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_2
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isKeepAlive, ApplicationInfo.metaData is null."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static isPreloadedAppResizeable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPreloadedAppResizeable ( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isPreloadedAppResizeable, preload app."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_4

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isPreloadedAppResizeable, targetVersion >= 24"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isPreloadedAppResizeable, PRIVATE_FLAG_RESIZEABLE_ACTIVITIES."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_0
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPreloadedAppResizeable, ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " takes [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTouchScreenDeclared(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    const/4 v5, 0x0

    sget-boolean v8, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isTouchScreenDeclared ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " )"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x4000

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz v2, :cond_4

    array-length v8, v2

    if-lez v8, :cond_4

    array-length v8, v2

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v1, v2, v5

    if-eqz v1, :cond_3

    iget-object v9, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string/jumbo v10, "android.hardware.touchscreen"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v1, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v4, 0x1

    :cond_1
    :goto_1
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTouchScreenDeclared ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ), takes [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isTouchScreenDeclared, FeatureInfo is null."

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_2
    sget-boolean v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isTouchScreenDeclared, PackageInfo is null."

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static isWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWhiteList ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v5, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->sWhitelistPackages:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :cond_1
    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->DEBUG:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWhiteList ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ), takes [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ms]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
