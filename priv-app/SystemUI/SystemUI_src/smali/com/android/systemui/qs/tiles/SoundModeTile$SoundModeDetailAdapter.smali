.class final Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;
.super Ljava/lang/Object;
.source "SoundModeTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundModeDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mTempMuteContainer:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->getRemainTimeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V

    return-void
.end method

.method private getAutoCompleteColor(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [I

    const v3, 0x1010434

    aput v3, v1, v4

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v3, 0xff00ff

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v2
.end method

.method private getRemainTimeString()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result v2

    const v8, 0x36ee80

    div-int v3, v2, v8

    const v8, 0xea60

    div-int v8, v2, v8

    rem-int/lit8 v6, v8, 0x3c

    const-string/jumbo v1, "%s %s"

    const-string/jumbo v0, "%s"

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRemainMins(), currentRemainTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1140006

    invoke-virtual {v8, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1140005

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ""

    if-nez v2, :cond_0

    const/4 v8, 0x0

    return-object v8

    :cond_0
    if-nez v3, :cond_3

    if-lez v6, :cond_3

    :cond_1
    if-nez v3, :cond_5

    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v8}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v11

    const v10, 0x7f0f037f

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_3
    if-lez v3, :cond_4

    if-eqz v6, :cond_1

    :cond_4
    if-lez v3, :cond_2

    if-lez v6, :cond_2

    const-string/jumbo v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v11

    aput-object v5, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_5
    if-nez v6, :cond_2

    const-string/jumbo v8, "%s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private refreshDetailView()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateSoundMode(I)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->updateTemporaryMute(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    goto :goto_0
.end method

.method private setupDetailView(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0f03b6

    const v4, 0x7f0f03b4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0x7f13030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isVibratorSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v5, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040107

    const v4, 0x1020016

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mAdapter:Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$SoundModeListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f13030d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v1, 0x7f13030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;)V

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f03b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    goto :goto_0
.end method

.method private updateSoundMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSoundMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mListView:Landroid/widget/ListView;

    rsub-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private updateTemporaryMute(I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v4, 0x7f13030e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/qs/tiles/SoundModeTile;->SOUND_MODE_TEXT:[I

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v7}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/media/AudioManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioManager;->getPrevRingerMode()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f0f037d

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const v4, 0x7f13030f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mode_ringer_time_on"

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v10, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mode_ringer_time_on"

    invoke-static {v3, v4, v8, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {v1, v8}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->mTempMuteContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->setupDetailView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->refreshDetailView()V

    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x258

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_TEMPORARY_MUTE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get1()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$SoundModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTile;->-get4(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f037b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 0

    return p1
.end method
