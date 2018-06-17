.class public Lcom/android/keyguard/util/KeyguardStatusUtils;
.super Ljava/lang/Object;
.source "KeyguardStatusUtils.java"


# static fields
.field public static final ACCU_SETTING_URI:Landroid/net/Uri;

.field public static REPORT_APP_STATUS_SURVEY:Ljava/lang/String;

.field public static USE_APP_FEATURE_SURVEY:Ljava/lang/String;

.field private static isGSIMLog:Z

.field private static mIsCovered:Z

.field private static mWiFiOnlyDevice:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sput-boolean v2, Lcom/android/keyguard/util/KeyguardStatusUtils;->mIsCovered:Z

    return-void
.end method

.method public static getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCovered()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/util/KeyguardStatusUtils;->mIsCovered:Z

    return v0
.end method
