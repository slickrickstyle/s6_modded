.class public Lcom/android/settings/wifi/LongPressAccessPointPreference;
.super Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# instance fields
.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    iput-object p6, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    iput-object p5, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
