.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mAodStatus:I

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field private mPowerSavingMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mmPowerSavingModeDataObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mmPowerSavingModeDataObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401cb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401d1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v2, 0x7f11054e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    const v2, 0x7f11052e

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    const v2, 0x7f11054f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    const v2, 0x7f110550

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v3, 0x7f0205b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "limit_brightness_state"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v2, "limit_brightness_state"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    :cond_3
    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    add-int/lit8 v25, v9, -0x5a

    if-lez v25, :cond_4

    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    const/16 v5, 0x5a

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const/16 v25, 0x0

    :cond_4
    if-nez v25, :cond_10

    const v2, 0x7f0b08cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_5
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v3, 0x7f0b01b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const-string/jumbo v2, "screen_resolution_state"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v2, "screen_resolution_state"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_6
    const-string/jumbo v2, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v29

    const/16 v30, 0x0

    packed-switch v29, :pswitch_data_0

    const v2, 0x7f0b05bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    :goto_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    move/from16 v0, v29

    if-eq v2, v0, :cond_7

    const/16 v18, 0x1

    :cond_7
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b05b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v18, :cond_11

    const v2, 0x7f0b0b06

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object/from16 v0, v30

    invoke-direct {v3, v4, v2, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v2, "restricted_device_performance"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    const-string/jumbo v2, "restricted_device_performance"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v2, "restricted_device_performance"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_9
    const-string/jumbo v2, "restricted_device_performance"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v26

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0ac5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0acc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_12

    const v2, 0x7f0b0abc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power_back_data_off"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    :goto_6
    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    const v2, 0x7f0b0acf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_7
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0ac6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    if-ne v13, v2, :cond_16

    const v2, 0x7f0b0abd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-direct {v3, v4, v14, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_9
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    const v5, 0x7f0401cf

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    const-string/jumbo v2, "psm_always_on_display_mode"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    const-string/jumbo v2, "psm_always_on_display_mode"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_b
    const-string/jumbo v2, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0409

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    const v2, 0x7f0b0abd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0571

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    const v2, 0x7f11052f

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v2, 0x0

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-virtual {v11, v0, v2, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    sub-int v27, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    const v2, 0x7f110183

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b14b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setEnabled(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Z)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f110530

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-virtual {v12, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f110183

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b1093

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$7;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0ad4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0ad5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    const v2, 0x102000a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v2, 0x106000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    return-object v33

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_10
    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :pswitch_0
    const v2, 0x7f0b05b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    :pswitch_1
    const v2, 0x7f0b05ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_3

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_12
    const v2, 0x7f0b0abd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_power_mode_back_data_off"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f0b0ad0

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    :cond_15
    const v2, 0x7f0b0ace

    goto :goto_d

    :cond_16
    const v2, 0x7f0b0abc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "psm_network_power_saving"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "psm_network_power_saving"

    const-string/jumbo v4, "0,1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_18
    const-string/jumbo v2, "psm_network_power_saving"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b0ad1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f0b0ad2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    if-ne v13, v2, :cond_19

    const v2, 0x7f0b0abc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_19
    const v2, 0x7f0b0abd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1a
    const v2, 0x7f0b0abc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    :cond_1b
    if-lez v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0aca

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextWithLowerCase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0440

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_1d
    if-lez v24, :cond_1e

    if-lez v27, :cond_1e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v32, v2, v3

    const v3, 0x7f0b0adb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0b0ad9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_1e
    const v2, 0x7f0b0ada

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "fromWhere"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v4, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_power"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    if-ne v2, v3, :cond_4

    const v2, 0x7f0b0ad7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "PowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setupAlert()V

    return-void

    :cond_2
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    return-void

    :cond_3
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    goto :goto_0

    :cond_4
    const v2, 0x7f0b0ad8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "UltraPowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401cb

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0401d1

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f11054e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f11052e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f0205b2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mmPowerSavingModeDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ultra_power_mode_back_data_off"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mmPowerSavingModeDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
