.class final Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ActiveKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08000f

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08015c

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f08015d

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0

    :cond_2
    const v1, 0x7f080010

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    goto :goto_0
.end method
