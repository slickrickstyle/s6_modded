.class final Lcom/android/server/pm/DefaultPermissionGrantPolicy;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mpeg"

.field private static final CALENDAR_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTACTS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FLAGS:I = 0xc0000

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MICROPHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHONE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSORS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORAGE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermGrantPolicy"


# instance fields
.field private mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

.field private mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

.field private mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const/high16 v2, 0xc0000

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v3
.end method

.method private getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    :cond_0
    return-object v5

    :cond_1
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v5

    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    return-object v2
.end method

.method private getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0xc0000

    invoke-virtual {v5, p1, v6, v7, p2}, Lcom/android/server/pm/PackageManagerService;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v8

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v8
.end method

.method private getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, p1, v5

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0xc0000

    invoke-virtual {v7, v1, v8, v9, p2}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method private getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method private getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private grantDefaultPermissionsToAttApp(I)V
    .locals 32

    const-string/jumbo v31, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_0

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.SEND_SMS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v31

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v11, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v31, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    if-eqz v29, :cond_1

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_1

    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.CALL_PHONE"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.SEND_SMS"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CONTACTS"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECORD_AUDIO"

    invoke-interface/range {v30 .. v31}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    const-string/jumbo v31, "com.sec.att.usagemanager3"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    if-eqz v28, :cond_2

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_2

    new-instance v27, Landroid/util/ArraySet;

    invoke-direct/range {v27 .. v27}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v31, "com.synchronoss.dcs.r2g.R2G_POST_OEM"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v31, "android.intent.category.DEFAULT"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    if-eqz v23, :cond_3

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_3

    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.CAMERA"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.SEND_SMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3
    const-string/jumbo v31, "com.att.mobiletransfer"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_4

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.CAMERA"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.SEND_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4
    const-string/jumbo v31, "com.smartcom"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_5

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    move-object/from16 v0, v31

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5
    const-string/jumbo v31, "net.aetherpal.device"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    if-eqz v25, :cond_6

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_6

    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.CALL_PHONE"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.READ_SMS"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6
    const-string/jumbo v31, "com.locationlabs.sparkle.blue"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-static {v12}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_7

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.SEND_SMS"

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v31

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v13, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_7
    const-string/jumbo v31, "com.asurion.android.mobilerecovery.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_8

    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v31, "android.permission.CALL_PHONE"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v31, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v31, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v31, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_8
    const-string/jumbo v31, "com.matchboxmobile.wisp"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-static {v14}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_9

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_9
    const-string/jumbo v31, "com.smartcomroot"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_a

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_a
    const-string/jumbo v31, "com.att.myWireless"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    if-eqz v18, :cond_b

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_b

    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_b
    const-string/jumbo v31, "com.dti.att"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v31

    if-eqz v31, :cond_c

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v31, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v31

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_c
    return-void
.end method

.method private grantDefaultPermissionsToComcastApp(I)V
    .locals 7

    const-string/jumbo v6, "com.comcast.modesto.vvm.client"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.WRITE_CONTACTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.GET_ACCOUNTS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECORD_AUDIO"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.SEND_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v6, "com.smithmicro.netwise.director.comcast.oem"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    const-string/jumbo v6, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToCricketApp(I)V
    .locals 5

    const-string/jumbo v4, "com.smithmicro.netwise.director.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v4, "com.dti.cricket"

    invoke-direct {p0, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 3

    const-string/jumbo v0, "DefaultPermGrantPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Granting permissions to sim call manager for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4

    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "android.hardware.type.watch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    const-string/jumbo v0, "com.android.mms"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.messaging"

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToDocomoApp(I)V
    .locals 42

    const-string/jumbo v41, "com.nttdocomo.android.idmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_0

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v41, "com.nttdocomo.android.accountauthenticator"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_1

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    const-string/jumbo v41, "jp.co.nttdocomo.lcsapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    if-eqz v31, :cond_2

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_2

    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v41, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v41

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_2
    const-string/jumbo v41, "com.nttdocomo.android.wipe"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    if-eqz v19, :cond_3

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_3

    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3
    const-string/jumbo v41, "com.nttdocomo.android.applicationmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_4

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v8, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4
    const-string/jumbo v41, "com.nttdocomo.android.lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    if-eqz v29, :cond_5

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_5

    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5
    const-string/jumbo v41, "com.nttdocomo.android.areamail"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_6

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v41

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_6
    const-string/jumbo v41, "jp.co.omronsoft.android.decoemojimanager_docomo"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_7

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v41

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_7
    const-string/jumbo v41, "jp.co.nttdocomo.saigaiban"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    if-eqz v39, :cond_8

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_8

    new-instance v40, Landroid/util/ArraySet;

    invoke-direct/range {v40 .. v40}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v40 .. v41}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_8
    const-string/jumbo v41, "com.nttdocomo.android.remotelock"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    if-eqz v17, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_9

    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_9
    const-string/jumbo v41, "com.nttdocomo.android.osv"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    if-eqz v35, :cond_a

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_a

    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_a
    const-string/jumbo v41, "com.nttdocomo.android.hcebridge"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    if-eqz v27, :cond_b

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_b

    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_b
    const-string/jumbo v41, "com.nttdocomo.android.mediaplayer"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_c

    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_c
    const-string/jumbo v41, "com.nttdocomo.android.dhome"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    if-eqz v23, :cond_d

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_d

    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_d
    const-string/jumbo v41, "com.nttdocomo.android.cloudstorageservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    if-eqz v21, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_e

    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_e
    const-string/jumbo v41, "com.nttdocomo.android.iconcier"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    if-eqz v25, :cond_f

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_f

    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_f
    const-string/jumbo v41, "com.nttdocomo.android.mascot"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    if-eqz v33, :cond_10

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_10

    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_10
    const-string/jumbo v41, "com.nttdocomo.android.phonemotion"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    if-eqz v37, :cond_11

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v41

    if-eqz v41, :cond_11

    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v41, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v41, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_11
    return-void
.end method

.method private grantDefaultPermissionsToKddiApp(I)V
    .locals 44

    const-string/jumbo v43, "com.kddi.android.au_wifi_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    if-eqz v39, :cond_0

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_0

    new-instance v40, Landroid/util/ArraySet;

    invoke-direct/range {v40 .. v40}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_0
    const-string/jumbo v43, "com.kddi.android.au_wifi_connect2"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v41

    if-eqz v41, :cond_1

    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_1

    new-instance v42, Landroid/util/ArraySet;

    invoke-direct/range {v42 .. v42}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface/range {v42 .. v43}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface/range {v42 .. v43}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v42 .. v43}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_1
    const-string/jumbo v43, "com.kddi.android.klop"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-static/range {v19 .. v19}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_2

    new-instance v20, Landroid/util/ArraySet;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v20

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_2
    const-string/jumbo v43, "com.kddi.android.AddressbookPlus"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_3

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.CALL_PHONE"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_3
    const-string/jumbo v43, "com.kddi.android.evc"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_4

    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.CALL_PHONE"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_4
    const-string/jumbo v43, "com.kddi.android.checker_android"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-static {v9}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_5

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v43

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v43

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v43

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_5
    const-string/jumbo v43, "com.kddi.android.ausharelink"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    if-eqz v27, :cond_6

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_6

    new-instance v28, Landroid/util/ArraySet;

    invoke-direct/range {v28 .. v28}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_6
    const-string/jumbo v43, "com.kddi.android.screenshotshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_7

    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_7
    const-string/jumbo v43, "com.kddi.cs.app001"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_8

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.CALL_PHONE"

    move-object/from16 v0, v43

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v43

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_8
    const-string/jumbo v43, "com.kddi.disasterapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_9

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v43

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v43

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_9
    const-string/jumbo v43, "com.kddi.market"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    if-eqz v21, :cond_a

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_a

    new-instance v22, Landroid/util/ArraySet;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_a
    const-string/jumbo v43, "com.kddi.pass.launcher"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    if-eqz v25, :cond_b

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_b

    new-instance v26, Landroid/util/ArraySet;

    invoke-direct/range {v26 .. v26}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v26

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_b
    const-string/jumbo v43, "jp.auone.wallet"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    if-eqz v37, :cond_c

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_c

    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_c
    const-string/jumbo v43, "com.kddi.android.email"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_d

    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v43

    move/from16 v3, p1

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_d
    const-string/jumbo v43, "com.kddi.android.lismobookstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_e

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v43

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_e
    const-string/jumbo v43, "web.wm.auone.jp"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    if-eqz v35, :cond_f

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_f

    new-instance v36, Landroid/util/ArraySet;

    invoke-direct/range {v36 .. v36}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_f
    const-string/jumbo v43, "com.kddi.android.smartpass"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    if-eqz v29, :cond_10

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_10

    new-instance v30, Landroid/util/ArraySet;

    invoke-direct/range {v30 .. v30}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_10
    const-string/jumbo v43, "com.kddi.android.videopass"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    if-eqz v33, :cond_11

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_11

    new-instance v34, Landroid/util/ArraySet;

    invoke-direct/range {v34 .. v34}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v34

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_11
    const-string/jumbo v43, "com.redbend.client"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    if-eqz v31, :cond_12

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v43

    if-eqz v43, :cond_12

    new-instance v32, Landroid/util/ArraySet;

    invoke-direct/range {v32 .. v32}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v43, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v43, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v43

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_12
    return-void
.end method

.method private grantDefaultPermissionsToSbmApp(I)V
    .locals 3

    const-string/jumbo v2, "jp.softbank.mb.dmb"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSingtelApp(I)V
    .locals 3

    const-string/jumbo v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    return-void
.end method

.method private grantDefaultPermissionsToSprintApps(I)V
    .locals 25

    :try_start_0
    const-string/jumbo v21, "com.sprint.dsa"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_0

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.CALL_PHONE"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v7, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v21, "com.sprint.ce.updater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_1

    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    const-string/jumbo v21, "com.sprint.w.installer"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_2

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v9, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    const-string/jumbo v21, "com.sprint.ms.smf.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_3

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v14, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [Ljava/lang/String;

    const-string/jumbo v21, "com.locationlabs.sparkle.yellow.pre"

    const/16 v22, 0x0

    aput-object v21, v13, v22

    const-string/jumbo v21, "com.locationlabs.v3client"

    const/16 v22, 0x1

    aput-object v21, v13, v22

    const/16 v21, 0x0

    array-length v0, v13

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v16, v13, v21

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-static {v12}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v23

    if-eqz v23, :cond_4

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v23, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.CALL_PHONE"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.READ_SMS"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.SEND_SMS"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v23, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :catch_0
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "DSS not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "MobileInstaller not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "MobileID not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "SMF not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_4
    move-exception v4

    const-string/jumbo v23, "DefaultPermGrantPolicy"

    const-string/jumbo v24, "sprSDM is not found"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_5
    :try_start_5
    const-string/jumbo v21, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_6

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.CALL_PHONE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.READ_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.SEND_SMS"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_6
    :try_start_6
    const-string/jumbo v21, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v21

    if-eqz v21, :cond_7

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v21, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.SEND_SMS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.READ_SMS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v21, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v5, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    :goto_7
    return-void

    :catch_5
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "VVM is not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_6
    move-exception v4

    const-string/jumbo v21, "DefaultPermGrantPolicy"

    const-string/jumbo v22, "Sprint CallerID is not found"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private grantDefaultPermissionsToTmoApp(I)V
    .locals 7

    const-string/jumbo v6, "com.whitepages.nameid.tmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v6, "com.tmobile.pr.adapt"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    const-string/jumbo v6, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_MMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.RECEIVE_SMS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.READ_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.USE_SIP"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2
    return-void
.end method

.method private grantDefaultPermissionsToUsccApps(I)V
    .locals 3

    const-string/jumbo v2, "com.LogiaGroup.LogiaDeck"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v2, "com.cequint.ecid"

    invoke-direct {p0, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v2, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    return-void
.end method

.method private grantDefaultPermissionsToVerizonApp(I)V
    .locals 41

    const-string/jumbo v40, "com.samsung.unifiedsettingservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    if-eqz v35, :cond_0

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_0

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_0
    const-string/jumbo v40, "com.verizon.mips.services"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-static/range {v27 .. v27}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_1

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    const-string/jumbo v40, "com.vcast.mediamanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_2

    new-instance v38, Landroid/util/ArraySet;

    invoke-direct/range {v38 .. v38}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_MMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_SMS"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2
    const-string/jumbo v40, "com.motricity.verizon.ssodownloadable"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v34

    if-eqz v34, :cond_3

    invoke-static/range {v34 .. v34}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_3

    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3
    const-string/jumbo v40, "com.verizon.vzwavs"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_4

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4
    const-string/jumbo v40, "com.vzw.hss.myverizon"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    if-eqz v31, :cond_5

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_5

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_SMS"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p1

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5
    const-string/jumbo v40, "com.LogiaGroup.LogiaDeck"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v25

    if-eqz v25, :cond_6

    invoke-static/range {v25 .. v25}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_6

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6
    const-string/jumbo v40, "com.cequint.ecid"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_7

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v40

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_7
    const-string/jumbo v40, "com.telecomsys.directedsms.android.SCG"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v36

    if-eqz v36, :cond_8

    invoke-static/range {v36 .. v36}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_8

    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_8
    const-string/jumbo v40, "com.vzw.hss.widgets.infozone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    if-eqz v30, :cond_9

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_9

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, p1

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_9
    const-string/jumbo v40, "com.vzw.hss.widgets.infozone.large"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    if-eqz v29, :cond_a

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_a

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p1

    invoke-direct {v0, v1, v10, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_a
    const-string/jumbo v40, "com.vzw.hss.widgets.infozone.ellipsis"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    if-eqz v28, :cond_b

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_b

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_b
    const-string/jumbo v40, "com.sec.android.app.cmas"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    if-eqz v24, :cond_c

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_c

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_c
    const-string/jumbo v40, "com.samsung.vvm"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    if-eqz v37, :cond_d

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_d

    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CALL_LOG"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_SMS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v19

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_d
    const-string/jumbo v40, "com.qualcomm.ltebc_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    if-eqz v33, :cond_e

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_e

    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_e
    const-string/jumbo v40, "com.expway.embmsserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    if-eqz v26, :cond_f

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_f

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_f
    const-string/jumbo v40, "com.vzw.hss.myverizontabletlte"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    if-eqz v32, :cond_10

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_10

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.PROCESS_OUTGOING_CALLS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_SMS"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v40

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_10
    const-string/jumbo v40, "com.androidhub"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v23

    if-eqz v23, :cond_11

    invoke-static/range {v23 .. v23}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v40

    if-eqz v40, :cond_11

    new-instance v39, Landroid/util/ArraySet;

    invoke-direct/range {v39 .. v39}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v40, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CONTACTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CONTACTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.GET_ACCOUNTS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_PHONE_STATE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.CALL_PHONE"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.WRITE_CALL_LOG"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_CALL_LOG"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.RECEIVE_MMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.SEND_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v40, "android.permission.READ_SMS"

    invoke-interface/range {v39 .. v40}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_11
    return-void
.end method

.method private grantDefaultSystemHandlerPermissions(I)V
    .locals 179

    const-string/jumbo v174, "DefaultPermGrantPolicy"

    new-instance v175, Ljava/lang/StringBuilder;

    invoke-direct/range {v175 .. v175}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v176, "Granting permissions to default platform handlers for user "

    invoke-virtual/range {v175 .. v176}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v175

    move-object/from16 v0, v175

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v175

    invoke-virtual/range {v175 .. v175}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v175

    invoke-static/range {v174 .. v175}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v175, v0

    monitor-enter v175

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mImePackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v95, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v99, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v164, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v138, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    move-object/from16 v136, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    move-object/from16 v147, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v175

    if-eqz v95, :cond_2

    move-object/from16 v0, v95

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v94

    :goto_0
    if-eqz v164, :cond_3

    move-object/from16 v0, v164

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v163

    :goto_1
    if-eqz v99, :cond_4

    move-object/from16 v0, v99

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v98

    :goto_2
    if-eqz v138, :cond_5

    move-object/from16 v0, v138

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v137

    :goto_3
    if-eqz v69, :cond_6

    move-object/from16 v0, v69

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v68

    :goto_4
    if-eqz v136, :cond_7

    move-object/from16 v0, v136

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/content/pm/PackageManagerInternal$PackagesProvider;->getPackages(I)[Ljava/lang/String;

    move-result-object v135

    :goto_5
    if-eqz v147, :cond_8

    const-string/jumbo v174, "com.android.contacts"

    move-object/from16 v0, v147

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v61

    :goto_6
    if-eqz v147, :cond_9

    const-string/jumbo v174, "com.android.calendar"

    move-object/from16 v0, v147

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;->getPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v43

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v175, v0

    monitor-enter v175

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object/from16 v174, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v96

    if-eqz v96, :cond_0

    invoke-static/range {v96 .. v96}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_0

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiers(I)Ljava/util/ArrayList;

    move-result-object v121

    invoke-interface/range {v121 .. v121}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v159

    :cond_1
    :goto_8
    invoke-interface/range {v159 .. v159}, Ljava/util/Iterator;->hasNext()Z

    move-result v174

    if-eqz v174, :cond_a

    invoke-interface/range {v159 .. v159}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v160

    if-eqz v160, :cond_1

    invoke-static/range {v160 .. v160}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v160

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v160

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v160

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v174

    monitor-exit v175

    throw v174

    :catchall_1
    move-exception v174

    monitor-exit v175

    throw v174

    :cond_2
    const/16 v94, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v163, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v98, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v137, 0x0

    goto/16 :goto_3

    :cond_6
    const/16 v68, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v135, 0x0

    goto/16 :goto_5

    :cond_8
    const/16 v61, 0x0

    goto/16 :goto_6

    :cond_9
    const/16 v43, 0x0

    goto/16 :goto_7

    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    move-object/from16 v174, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v130

    if-eqz v130, :cond_b

    invoke-static/range {v130 .. v130}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_b

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_b
    const-string/jumbo v174, "com.claroColombia.contenedor"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v53

    if-eqz v53, :cond_c

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_c

    new-instance v54, Landroid/util/ArraySet;

    invoke-direct/range {v54 .. v54}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v54

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_c
    const-string/jumbo v174, "com.telcel.contenedor"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v154

    if-eqz v154, :cond_d

    invoke-static/range {v154 .. v154}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_d

    new-instance v155, Landroid/util/ArraySet;

    invoke-direct/range {v155 .. v155}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v155

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v154

    move-object/from16 v2, v155

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_d
    const-string/jumbo v174, "com.skt.skaf.A000Z00040"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v148

    if-eqz v148, :cond_e

    invoke-static/range {v148 .. v148}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_e

    new-instance v149, Landroid/util/ArraySet;

    invoke-direct/range {v149 .. v149}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v149

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v149

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v149

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v148

    move-object/from16 v2, v149

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_e
    const-string/jumbo v174, "com.skt.skaf.Z0000TSEED"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v152

    if-eqz v152, :cond_f

    invoke-static/range {v152 .. v152}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_f

    new-instance v153, Landroid/util/ArraySet;

    invoke-direct/range {v153 .. v153}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v153

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v153

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v152

    move-object/from16 v2, v153

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_f
    const-string/jumbo v174, "com.skp.tstore.startup"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v150

    if-eqz v150, :cond_10

    invoke-static/range {v150 .. v150}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_10

    new-instance v151, Landroid/util/ArraySet;

    invoke-direct/range {v151 .. v151}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v151

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move-object/from16 v2, v151

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_10
    const-string/jumbo v174, "com.skt.tservice"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v156

    if-eqz v156, :cond_11

    invoke-static/range {v156 .. v156}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_11

    new-instance v157, Landroid/util/ArraySet;

    invoke-direct/range {v157 .. v157}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v157

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v156

    move-object/from16 v2, v157

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_11
    const-string/jumbo v174, "com.skt.hps20client"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v89

    if-eqz v89, :cond_12

    invoke-static/range {v89 .. v89}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_12

    new-instance v90, Landroid/util/ArraySet;

    invoke-direct/range {v90 .. v90}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.RECEIVE_WAP_PUSH"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_SMS"

    move-object/from16 v0, v90

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move-object/from16 v2, v90

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_12
    const-string/jumbo v174, "com.skt.skaf.OA00018282"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v111

    if-eqz v111, :cond_13

    invoke-static/range {v111 .. v111}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_13

    new-instance v112, Landroid/util/ArraySet;

    invoke-direct/range {v112 .. v112}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v112

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v112

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v111

    move-object/from16 v2, v112

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_13
    const-string/jumbo v174, "com.lguplus.appstore"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    if-eqz v18, :cond_14

    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_14

    new-instance v19, Landroid/util/ArraySet;

    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v19

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v19

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_14
    const-string/jumbo v174, "com.lguplus.downloader"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v15

    if-eqz v15, :cond_15

    invoke-static {v15}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_15

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v174

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v174

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v174

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v15, v10, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_15
    const-string/jumbo v174, "com.lguplus.pushagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v16

    if-eqz v16, :cond_16

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_16

    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_16
    const-string/jumbo v174, "com.lguplus.common"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    if-eqz v13, :cond_17

    invoke-static {v13}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_17

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v174

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v174

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v174

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v13, v14, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_17
    const-string/jumbo v174, "com.lgt.arm"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-static {v11}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_18

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v174

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_18
    const-string/jumbo v174, "com.kt.olleh.storefront"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v26

    if-eqz v26, :cond_19

    invoke-static/range {v26 .. v26}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_19

    new-instance v27, Landroid/util/ArraySet;

    invoke-direct/range {v27 .. v27}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v27

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v27

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v27

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_19
    const-string/jumbo v174, "com.kt.serviceagent"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v24

    if-eqz v24, :cond_1a

    invoke-static/range {v24 .. v24}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1a

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.CALL_PHONE"

    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v25

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v174

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_1a
    const-string/jumbo v174, "com.kt.om.ktpackageinstaller"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    if-eqz v8, :cond_1b

    invoke-static {v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1b

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v174

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v174

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v174

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v174, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDocomoApp(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToKddiApp(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSbmApp(I)V

    new-instance v45, Landroid/content/Intent;

    const-string/jumbo v174, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v45

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v46

    if-eqz v46, :cond_1c

    invoke-static/range {v46 .. v46}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1c

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1c
    const-string/jumbo v174, "com.sec.android.app.magnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v21

    if-eqz v21, :cond_1d

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1d

    new-instance v100, Landroid/util/ArraySet;

    invoke-direct/range {v100 .. v100}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v100

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v100

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v100

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1d
    const-string/jumbo v174, "com.sec.android.app.camera.plb"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v20

    if-eqz v20, :cond_1e

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_1e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_1e
    const-string/jumbo v174, "com.samsung.android.spay"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v125

    if-eqz v125, :cond_20

    invoke-static/range {v125 .. v125}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_20

    new-instance v126, Landroid/util/ArraySet;

    invoke-direct/range {v126 .. v126}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "US"

    const-string/jumbo v176, "ro.csc.countryiso_code"

    invoke-static/range {v176 .. v176}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v176

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_29

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v126

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_20
    const-string/jumbo v174, "com.sec.android.app.shealth"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v131

    if-eqz v131, :cond_21

    invoke-static/range {v131 .. v131}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_21

    new-instance v132, Landroid/util/ArraySet;

    invoke-direct/range {v132 .. v132}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.BODY_SENSORS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.GET_ACCOUNTS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.SEND_SMS"

    move-object/from16 v0, v132

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v131

    move-object/from16 v2, v132

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_21
    const-string/jumbo v174, "media"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v103

    if-eqz v103, :cond_22

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_22
    const-string/jumbo v174, "downloads"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v72

    if-eqz v72, :cond_23

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_23
    new-instance v73, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.VIEW_DOWNLOADS"

    move-object/from16 v0, v73

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v74

    if-eqz v74, :cond_24

    invoke-static/range {v74 .. v74}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_24

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_24
    const-string/jumbo v174, "com.android.externalstorage.documents"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v143

    if-eqz v143, :cond_25

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_25
    new-instance v51, Landroid/content/Intent;

    const-string/jumbo v174, "android.credentials.INSTALL"

    move-object/from16 v0, v51

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v52

    if-eqz v52, :cond_26

    invoke-static/range {v52 .. v52}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_26

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_26
    if-nez v68, :cond_2a

    new-instance v70, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.DIAL"

    move-object/from16 v0, v70

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v71

    if-eqz v71, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_27
    if-eqz v135, :cond_2c

    const/16 v174, 0x0

    move-object/from16 v0, v135

    array-length v0, v0

    move/from16 v176, v0

    :goto_a
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_2c

    aget-object v134, v135, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v133

    if-eqz v133, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_28
    add-int/lit8 v174, v174, 0x1

    goto :goto_a

    :cond_29
    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "CN"

    const-string/jumbo v176, "ro.csc.countryiso_code"

    invoke-static/range {v176 .. v176}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v176

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_1f

    const-string/jumbo v174, "android.permission.READ_SMS"

    move-object/from16 v0, v126

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_2a
    const/16 v174, 0x0

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v176, v0

    :goto_b
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_27

    aget-object v67, v68, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v71

    if-eqz v71, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemDialerAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_2b
    add-int/lit8 v174, v174, 0x1

    goto :goto_b

    :cond_2c
    if-nez v137, :cond_36

    new-instance v139, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v139

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_MESSAGING"

    move-object/from16 v0, v139

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v139

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v140

    if-eqz v140, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_2d
    const-string/jumbo v174, "com.sec.android.app.clockpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v55

    if-eqz v55, :cond_2e

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_2e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2e
    const-string/jumbo v174, "com.samsung.android.app.memo"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v104

    if-eqz v104, :cond_2f

    invoke-static/range {v104 .. v104}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_2f

    new-instance v105, Landroid/util/ArraySet;

    invoke-direct/range {v105 .. v105}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v105

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v105

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v105

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v105

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v105

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    move-object/from16 v2, v105

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_2f
    const-string/jumbo v174, "com.samsung.greetingcard"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_30

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_30

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_CALENDAR"

    move-object/from16 v0, v174

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v174

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v6, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_30
    new-instance v49, Landroid/content/Intent;

    const-string/jumbo v174, "android.provider.Telephony.SMS_CB_RECEIVED"

    move-object/from16 v0, v49

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v50

    if-eqz v50, :cond_31

    invoke-static/range {v50 .. v50}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_31

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_31
    new-instance v47, Landroid/content/Intent;

    const-string/jumbo v174, "android.provider.Telephony.SMS_CARRIER_PROVISION"

    move-object/from16 v0, v47

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v48

    if-eqz v48, :cond_32

    invoke-static/range {v48 .. v48}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_32

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_32
    new-instance v38, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v38

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_CALENDAR"

    move-object/from16 v0, v38

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v39

    if-eqz v39, :cond_33

    invoke-static/range {v39 .. v39}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_33

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_33
    const-string/jumbo v174, "com.android.calendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v40

    if-eqz v40, :cond_34

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v42

    const/16 v91, 0x0

    :goto_c
    move/from16 v0, v91

    move/from16 v1, v42

    if-ge v0, v1, :cond_38

    move-object/from16 v0, v44

    move/from16 v1, v91

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/pm/PackageParser$Package;

    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_35

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_35
    add-int/lit8 v91, v91, 0x1

    goto :goto_c

    :cond_36
    const/16 v174, 0x0

    move-object/from16 v0, v137

    array-length v0, v0

    move/from16 v176, v0

    :goto_d
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_2d

    aget-object v141, v137, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v141

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v140

    if-eqz v140, :cond_37

    move-object/from16 v0, p0

    move-object/from16 v1, v140

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSystemSmsAppLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_37
    add-int/lit8 v174, v174, 0x1

    goto :goto_d

    :cond_38
    const-string/jumbo v174, "com.samsung.android.opencalendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v113

    if-eqz v113, :cond_39

    invoke-static/range {v113 .. v113}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_39

    new-instance v64, Landroid/util/ArraySet;

    invoke-direct/range {v64 .. v64}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v64

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, v64

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v64

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v64

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_39
    new-instance v56, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v56

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_CONTACTS"

    move-object/from16 v0, v56

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v57

    if-eqz v57, :cond_3a

    invoke-static/range {v57 .. v57}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_3a

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getHeadlessSyncAdapterPackagesLPr([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v60

    const/16 v91, 0x0

    :goto_e
    move/from16 v0, v91

    move/from16 v1, v60

    if-ge v0, v1, :cond_3c

    move-object/from16 v0, v62

    move/from16 v1, v91

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/pm/PackageParser$Package;

    invoke-static/range {v59 .. v59}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_3b

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3b
    add-int/lit8 v91, v91, 0x1

    goto :goto_e

    :cond_3c
    const-string/jumbo v174, "com.android.contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultProviderAuthorityPackageLPr(Ljava/lang/String;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v58

    if-eqz v58, :cond_3d

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3d
    new-instance v65, Landroid/content/Intent;

    const-string/jumbo v174, "android.app.action.PROVISION_MANAGED_DEVICE"

    move-object/from16 v0, v65

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v66

    if-eqz v66, :cond_3e

    invoke-static/range {v66 .. v66}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_3e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3e
    new-instance v101, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v101

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_MAPS"

    move-object/from16 v0, v101

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v102

    if-eqz v102, :cond_3f

    invoke-static/range {v102 .. v102}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_3f

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_3f
    new-instance v82, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v82

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_GALLERY"

    move-object/from16 v0, v82

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v83

    if-eqz v83, :cond_40

    invoke-static/range {v83 .. v83}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_40

    new-instance v84, Landroid/util/ArraySet;

    invoke-direct/range {v84 .. v84}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_SMS"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.SEND_SMS"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v84

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v83

    move-object/from16 v2, v84

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_40
    const-string/jumbo v174, "com.samsung.android.app.watchmanager"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v86

    if-eqz v86, :cond_41

    invoke-static/range {v86 .. v86}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_41

    new-instance v87, Landroid/util/ArraySet;

    invoke-direct/range {v87 .. v87}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v87

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v87

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v87

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v87

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_41
    new-instance v77, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v77

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_EMAIL"

    move-object/from16 v0, v77

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v78

    if-eqz v78, :cond_42

    invoke-static/range {v78 .. v78}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_42

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_42
    const-string/jumbo v174, "com.samsung.android.email.provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v76

    if-eqz v76, :cond_43

    invoke-static/range {v76 .. v76}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_43

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    new-instance v142, Landroid/util/ArraySet;

    invoke-direct/range {v142 .. v142}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v142

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.SEND_SMS"

    move-object/from16 v0, v142

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v142

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_43
    const-string/jumbo v174, "com.samsung.android.app.notes"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v22

    if-eqz v22, :cond_44

    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_44

    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v23

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v23

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_44
    const-string/jumbo v174, "com.samsung.android.game.gametools"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v85

    if-eqz v85, :cond_45

    invoke-static/range {v85 .. v85}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_45

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_45
    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v63

    if-eqz v63, :cond_46

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    :cond_46
    if-nez v37, :cond_47

    new-instance v36, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v36

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.APP_BROWSER"

    move-object/from16 v0, v36

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v37

    :cond_47
    if-eqz v37, :cond_48

    invoke-static/range {v37 .. v37}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_48

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_48
    const-string/jumbo v174, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v128

    if-eqz v128, :cond_49

    invoke-static/range {v128 .. v128}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_49

    new-instance v129, Landroid/util/ArraySet;

    invoke-direct/range {v129 .. v129}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v129

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move-object/from16 v2, v129

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_49
    if-eqz v94, :cond_4b

    const/16 v174, 0x0

    move-object/from16 v0, v94

    array-length v0, v0

    move/from16 v176, v0

    :goto_f
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_4b

    aget-object v93, v94, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v92

    if-eqz v92, :cond_4a

    invoke-static/range {v92 .. v92}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v177

    if-eqz v177, :cond_4a

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4a
    add-int/lit8 v174, v174, 0x1

    goto :goto_f

    :cond_4b
    if-eqz v163, :cond_4d

    const/16 v174, 0x0

    move-object/from16 v0, v163

    array-length v0, v0

    move/from16 v176, v0

    :goto_10
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_4d

    aget-object v162, v163, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v162

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v161

    if-eqz v161, :cond_4c

    invoke-static/range {v161 .. v161}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v177

    if-eqz v177, :cond_4c

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v161

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4c
    add-int/lit8 v174, v174, 0x1

    goto :goto_10

    :cond_4d
    new-instance v165, Landroid/content/Intent;

    const-string/jumbo v174, "android.speech.RecognitionService"

    move-object/from16 v0, v165

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.DEFAULT"

    move-object/from16 v0, v165

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v165

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerServicePackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v166

    if-eqz v166, :cond_4e

    invoke-static/range {v166 .. v166}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_4e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v166

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4e
    sget-object v174, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v176, "zc"

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v174

    if-eqz v174, :cond_4f

    const-string/jumbo v174, "com.google.android.gms"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    if-eqz v7, :cond_4f

    invoke-static {v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_4f

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, v176

    move/from16 v3, p1

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, p1

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_4f
    if-eqz v98, :cond_51

    const/16 v174, 0x0

    move-object/from16 v0, v98

    array-length v0, v0

    move/from16 v176, v0

    :goto_11
    move/from16 v0, v174

    move/from16 v1, v176

    if-ge v0, v1, :cond_51

    aget-object v114, v98, v174

    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v97

    if-eqz v97, :cond_50

    invoke-static/range {v97 .. v97}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v177

    if-eqz v177, :cond_50

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v178, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, v178

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SENSORS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v177, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v177

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_50
    add-int/lit8 v174, v174, 0x1

    goto/16 :goto_11

    :cond_51
    new-instance v106, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.VIEW"

    move-object/from16 v0, v106

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.DEFAULT"

    move-object/from16 v0, v106

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v174, Ljava/io/File;

    const-string/jumbo v176, "foo.mp3"

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v174 .. v174}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v174

    const-string/jumbo v176, "audio/mpeg"

    move-object/from16 v0, v106

    move-object/from16 v1, v174

    move-object/from16 v2, v176

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v106

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v107

    if-eqz v107, :cond_52

    invoke-static/range {v107 .. v107}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_52

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_52
    const-string/jumbo v174, "de.telekom.tsc"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    if-eqz v30, :cond_53

    invoke-static/range {v30 .. v30}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_53

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_53
    const-string/jumbo v174, "de.telekom.mds.mbp"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v29

    if-eqz v29, :cond_54

    invoke-static/range {v29 .. v29}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_54

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_54
    const-string/jumbo v174, "at.tmobile.android.myt"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v32

    if-eqz v32, :cond_55

    invoke-static/range {v32 .. v32}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_55

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_55
    const-string/jumbo v174, "pl.tmobile.miboa"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v31

    if-eqz v31, :cond_56

    invoke-static/range {v31 .. v31}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_56

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_56
    const-string/jumbo v174, "pl.tmobile.panel"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v33

    if-eqz v33, :cond_57

    invoke-static/range {v33 .. v33}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_57

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    const-string/jumbo v176, "android.hardware.type.watch"

    const/16 v177, 0x0

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    move/from16 v2, v177

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v174

    if-eqz v174, :cond_58

    new-instance v88, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.MAIN"

    move-object/from16 v0, v88

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "android.intent.category.HOME_MAIN"

    move-object/from16 v0, v88

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v168

    if-eqz v168, :cond_58

    invoke-static/range {v168 .. v168}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_58

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v168

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_58
    const-string/jumbo v174, "com.android.printspooler"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v117

    if-eqz v117, :cond_59

    invoke-static/range {v117 .. v117}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_59

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v117

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_59
    new-instance v79, Landroid/content/Intent;

    const-string/jumbo v174, "android.telephony.action.EMERGENCY_ASSISTANCE"

    move-object/from16 v0, v79

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v80

    if-eqz v80, :cond_5a

    invoke-static/range {v80 .. v80}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5a

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_5a
    new-instance v108, Landroid/content/Intent;

    const-string/jumbo v174, "android.intent.action.VIEW"

    move-object/from16 v0, v108

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v174, "vnd.android.cursor.item/ndef_msg"

    move-object/from16 v0, v108

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getDefaultSystemHandlerActivityPackageLPr(Landroid/content/Intent;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v109

    if-eqz v109, :cond_5b

    invoke-static/range {v109 .. v109}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5b

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    const/16 v176, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v109

    move-object/from16 v2, v174

    move/from16 v3, v176

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V

    :cond_5b
    const-string/jumbo v174, "com.sec.android.daemonapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v171

    if-eqz v171, :cond_5c

    invoke-static/range {v171 .. v171}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5c

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v171

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5c
    const-string/jumbo v174, "com.sec.android.widgetapp.ap.hero.accuweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v169

    if-eqz v169, :cond_5d

    invoke-static/range {v169 .. v169}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5d

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v169

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5d
    const-string/jumbo v174, "com.sec.android.widgetapp.ap.hero.cmaweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v170

    if-eqz v170, :cond_5e

    invoke-static/range {v170 .. v170}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5e
    const-string/jumbo v174, "com.sec.android.widgetapp.ap.hero.kweather"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v173

    if-eqz v173, :cond_5f

    invoke-static/range {v173 .. v173}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_5f

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_5f
    const-string/jumbo v174, "com.sec.android.widgetapp.ap.hero.weathernewsjp"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v172

    if-eqz v172, :cond_60

    invoke-static/range {v172 .. v172}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_60

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v172

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_60
    const-string/jumbo v174, "com.samsung.android.video"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v127

    if-eqz v127, :cond_61

    invoke-static/range {v127 .. v127}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_61

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_61
    const-string/jumbo v124, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v174, "ro.csc.sales_code"

    invoke-static/range {v174 .. v174}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    invoke-static/range {v124 .. v124}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v174

    if-eqz v174, :cond_62

    const-string/jumbo v174, "ril.sales_code"

    invoke-static/range {v174 .. v174}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v124

    :cond_62
    :goto_12
    :try_start_4
    const-string/jumbo v174, "ATT"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_71

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToAttApp(I)V

    :cond_63
    :goto_13
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v174

    const-string/jumbo v176, "CscFeature_Common_EnableSprintExtension"

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v174

    if-eqz v174, :cond_64

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSprintApps(I)V

    :cond_64
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v174

    const-string/jumbo v176, "CscFeature_Common_SupportHuxPermissionPregrant"

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v174

    if-nez v174, :cond_65

    const-string/jumbo v174, "USC"

    move-object/from16 v0, v174

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_65

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToUsccApps(I)V

    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v174, v0

    move-object/from16 v0, v174

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->onDefaultRuntimePermissionsGrantedLPr(I)V

    const-string/jumbo v174, "com.samsung.android.service.peoplestripe"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v115

    if-eqz v115, :cond_66

    invoke-static/range {v115 .. v115}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_66

    new-instance v116, Landroid/util/ArraySet;

    invoke-direct/range {v116 .. v116}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v116

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, v116

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v116

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v116

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.CAMERA"

    move-object/from16 v0, v116

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v115

    move-object/from16 v2, v116

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_66
    const-string/jumbo v174, "com.sec.android.app.samsungapps"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v81

    if-eqz v81, :cond_67

    invoke-static/range {v81 .. v81}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_67

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_67
    const-string/jumbo v174, "com.samsung.android.app.qragent"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v120

    if-eqz v120, :cond_68

    invoke-static/range {v120 .. v120}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_68

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CAMERA_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_68
    const-string/jumbo v174, "com.sec.android.app.voicenote"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v35

    if-eqz v35, :cond_69

    invoke-static/range {v35 .. v35}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_69

    new-instance v167, Landroid/util/ArraySet;

    invoke-direct/range {v167 .. v167}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.RECORD_AUDIO"

    move-object/from16 v0, v167

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v167

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.CALL_PHONE"

    move-object/from16 v0, v167

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v167

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, v167

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v167

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_69
    const-string/jumbo v174, "com.samsung.android.app.galaxyfinder"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v122

    if-eqz v122, :cond_6a

    invoke-static/range {v122 .. v122}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6a

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v122

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6a
    const-string/jumbo v174, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v145

    if-eqz v145, :cond_6b

    invoke-static/range {v145 .. v145}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6b

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CALENDAR_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6b
    const-string/jumbo v174, "com.samsung.svoice.sync"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v146

    if-eqz v146, :cond_6c

    invoke-static/range {v146 .. v146}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6c

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->STORAGE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v146

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6c
    const-string/jumbo v174, "com.samsung.android.svoiceime"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v144

    if-eqz v144, :cond_6d

    invoke-static/range {v144 .. v144}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6d

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6d
    const-string/jumbo v174, "com.wsomacp"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v110

    if-eqz v110, :cond_6e

    invoke-static/range {v110 .. v110}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6e

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v174, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v174

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6e
    const-string/jumbo v174, "com.samsung.android.oneconnect"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v118

    if-eqz v118, :cond_6f

    invoke-static/range {v118 .. v118}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_6f

    new-instance v119, Landroid/util/ArraySet;

    invoke-direct/range {v119 .. v119}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, v119

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_CONTACTS"

    move-object/from16 v0, v119

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, v119

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    move-object/from16 v2, v119

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_6f
    const-string/jumbo v174, "com.osp.app.signin"

    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-direct {v0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v28

    if-eqz v28, :cond_70

    invoke-static/range {v28 .. v28}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v174

    if-eqz v174, :cond_70

    new-instance v123, Landroid/util/ArraySet;

    invoke-direct/range {v123 .. v123}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v174, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v123

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v174, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v123

    move-object/from16 v1, v174

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v123

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_70
    monitor-exit v175

    return-void

    :catch_0
    move-exception v75

    :try_start_5
    const-string/jumbo v174, "DefaultPermGrantPolicy"

    const-string/jumbo v176, "readSalesCode failed"

    move-object/from16 v0, v174

    move-object/from16 v1, v176

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_71
    const-string/jumbo v174, "TMB"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_72

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToTmoApp(I)V

    goto/16 :goto_13

    :cond_72
    const-string/jumbo v174, "VZW"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_73

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToVerizonApp(I)V

    goto/16 :goto_13

    :cond_73
    const-string/jumbo v174, "CCT"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_74

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToComcastApp(I)V

    goto/16 :goto_13

    :cond_74
    const-string/jumbo v174, "AIO"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_75

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCricketApp(I)V

    goto/16 :goto_13

    :cond_75
    const-string/jumbo v174, "SIN"

    move-object/from16 v0, v174

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v174

    if-eqz v174, :cond_63

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToSingtelApp(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_13
.end method

.method private grantPermissionsToSysComponentsAndPrivApps(I)V
    .locals 10

    const-string/jumbo v7, "DefaultPermGrantPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Granting permissions to platform components for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    invoke-direct {p0, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/pm/BasePermission;->isRuntime()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v7, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    monitor-exit v8

    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    return-void
.end method

.method private grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    if-nez p4, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v14, Landroid/util/ArraySet;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_9

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v14, :cond_3

    invoke-interface {v14, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_4

    if-eqz p4, :cond_8

    :cond_4
    const/16 v11, 0x14

    and-int/lit8 v1, v12, 0x14

    if-eqz v1, :cond_6

    :cond_5
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p5

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v4, 0x20

    if-eqz p3, :cond_7

    const/16 v4, 0x30

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v5, v4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    :cond_8
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_5

    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_5

    if-nez p3, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v6, v2

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method private isSysComponentOrPersistentPlatformSignedPrivAppLPr(Landroid/content/pm/PackageParser$Package;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isPrivilegedApp()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public grantDefaultPermissions(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantPermissionsToSysComponentsAndPrivApps(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultSystemHandlerPermissions(I)V

    return-void
.end method

.method public grantDefaultPermissionsToDefaultBrowserLPr(Ljava/lang/String;I)V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Granting permissions to default browser for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultDialerAppLPr(Ljava/lang/String;I)V
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "DefaultPermGrantPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Granting permissions to default dialer app for user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->MICROPHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    const-string/jumbo v0, "com.skt.prod.dialer"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v11

    if-eqz v11, :cond_1

    if-ne v1, v11, :cond_1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    const-string/jumbo v0, "com.skt.prod.phone"

    invoke-direct {p0, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.WRITE_CONTACTS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.CALL_PHONE"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.READ_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.SEND_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.RECEIVE_SMS"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v5, p0

    move v8, v3

    move v9, v4

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSimCallManagerLPr(Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultSimCallManagerLPr(Landroid/content/pm/PackageParser$Package;I)V

    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToDefaultSmsAppLPr(Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "DefaultPermGrantPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Granting permissions to default sms app for user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->CONTACTS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;ZZI)V

    :cond_1
    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierAppsLPr([Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v2, "DefaultPermGrantPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Granting permissions to enabled carrier apps for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->getSystemPackageLPr(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->PHONE_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->SMS_PERMISSIONS:Ljava/util/Set;

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->grantRuntimePermissionsLPw(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDialerAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mDialerAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    return-void
.end method

.method public setLocationPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mLocationPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    return-void
.end method

.method public setSimCallManagerPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSimCallManagerPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    return-void
.end method

.method public setSmsAppPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSmsAppPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    return-void
.end method

.method public setSyncAdapterPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mSyncAdapterPackagesProvider:Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;

    return-void
.end method

.method public setVoiceInteractionPackagesProviderLPw(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DefaultPermissionGrantPolicy;->mVoiceInteractionPackagesProvider:Landroid/content/pm/PackageManagerInternal$PackagesProvider;

    return-void
.end method
