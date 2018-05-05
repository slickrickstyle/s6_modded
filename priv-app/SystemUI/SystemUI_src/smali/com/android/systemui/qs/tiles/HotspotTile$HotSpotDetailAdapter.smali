.class final Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotSpotDetailAdapter"
.end annotation


# instance fields
.field private mConnectedDevices:[Ljava/lang/String;

.field private mConnectedListTitle:Landroid/widget/TextView;

.field private mConnectionMode:Landroid/widget/TextView;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mMobileApName:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method

.method private updateItems()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    array-length v0, v5

    new-array v4, v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    aget-object v1, v5, v2

    new-instance v3, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v5, :cond_1

    const v5, 0x7f020342

    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    iput-object v1, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    iput-object v7, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x7f020341

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createDetailView convertView="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " mState.value "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v3, v3, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "wifi"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_1
    invoke-static {p1}, Lcom/android/keyguard/KeyguardRune;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040104

    invoke-virtual {v3, v5, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f130307

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    const v3, 0x7f130308

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    const v3, 0x7f130309

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    const v3, 0x7f13030a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p1, v7, v2}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v4, "HotSpot"

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    const v3, 0x7f130306

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_VZW_ICON:Z

    if-eqz v3, :cond_2

    const v3, 0x7f020342

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateHotSpotApInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateConnectedDeviceList()V

    return-object p2

    :cond_4
    move v3, v4

    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f03f4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f03f3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_TMB_POPUP:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0f03f5

    goto :goto_0

    :cond_2
    const v0, 0x7f0f03f2

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0

    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedListTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_2

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isWifiHotspotTileBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    const v1, 0x7f0f03f1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap3(Lcom/android/systemui/qs/tiles/HotspotTile;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get7(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-interface {v0, v3, v1}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.WIFI_AP_ENABLE_WARNING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "send WIFIAP_ENABLE_WARNING for USA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-wrap2(Lcom/android/systemui/qs/tiles/HotspotTile;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    return p1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public updateConnectedDeviceList()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get5(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->getConnectedDeviceList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->updateItems()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get8(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectedDevices:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->setItemsVisible(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateHotSpotApInfo()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get2(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mobileAp Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mMobileApName:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get4(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$HotSpotDetailAdapter;->mConnectionMode:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
