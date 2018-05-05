.class public Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "UsefulFeatureHub.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;,
        Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;
    }
.end annotation


# static fields
.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE:I

.field private static SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

.field private static SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE:I

.field private static SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE:I

.field private static SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

.field private static mBixbyCurrentStateId:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;",
            ">;"
        }
    .end annotation
.end field

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFeatureName:Ljava/lang/String;

.field private mLoggingEvent:I

.field private mLoggingFlow:I

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionType:Ljava/lang/String;

.field private final mMultiWindowObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private final mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private final mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const-string/jumbo v0, "default"

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$1;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$2;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$3;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$5;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f11050b

    const/16 v7, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v6, "smart_capture"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const v5, 0x7f04031a

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f11050c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f11050a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v6, "direct_share"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    return-object v5

    :cond_5
    const v5, 0x7f0402b2

    invoke-virtual {p1, v5, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f110680

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mView:Landroid/view/View;

    const v6, 0x7f110682

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-virtual {v6, v5}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iput v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private insertlog(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mFeatureName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b0432

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0433

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0b0989

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$6;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v5, 0x7f0b0434

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$7;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$8;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private maketurnOffUniversalPopup()V
    .locals 8

    const v7, 0x7f0b0247

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    const v2, 0x7f0b0432

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0433

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0b0989

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$9;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const v4, 0x7f0b0434

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$10;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$11;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private setDescriptions()V
    .locals 9

    const v8, 0x7f0b099a

    const v7, 0x7f0b041d

    const v6, 0x7f020535

    const/high16 v5, 0x200000

    const v4, 0x7f10019e

    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "setDescriptions"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "pick_up_to_call_out_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "pick_up_to_call_out_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f02038b

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_0
    const v2, 0x7f0b0986

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const-string/jumbo v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    const v2, 0x7f0b0996

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_1
    const-string/jumbo v2, "motion_pick_up_to_call_out"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFDC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100192

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_DIRECTCALL_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "pick_up_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "pick_up_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    const v2, 0x7f0203aa

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_2
    const v2, 0x7f0b0987

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const-string/jumbo v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    const v2, 0x7f0b0998

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_3
    const-string/jumbo v2, "motion_pick_up"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFSA"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SMARTALRET_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "merged_mute_or_pause_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f020152

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_4
    const v2, 0x7f0b0988

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :cond_4
    :goto_6
    const-string/jumbo v2, "motion_merged_mute_pause"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFEM"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MUTE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "palm_swipe_switch"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_19

    const v2, 0x7f02014f

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_7
    const v2, 0x7f0b0989

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const v2, 0x7f0b0999

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string/jumbo v2, "surface_palm_swipe"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFPC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100190

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_SWIPE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "multi_window_setting"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "multi_window_setting"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    const v2, 0x7f020399

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    const v2, 0x7f0b098c

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const v2, 0x7f0b098d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string/jumbo v2, "db_popup_view_shortcut"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFPG"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.app.scrollcapture"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1b

    const v2, 0x7f020438

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_8
    const v2, 0x7f0b0404

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    const v2, 0x7f0b0411

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_9
    const-string/jumbo v2, "enable_smart_capture"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFSC"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    sget v2, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->SETTINGS_ADVANCEDFEATURE_CAPTURE_SWITCH:I

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    const v2, 0x7f0200f7

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    const v2, 0x7f0b041c

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b041f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    :goto_a
    const-string/jumbo v2, "direct_share"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFDS"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;-><init>()V

    const-string/jumbo v2, "swipe_to_call_or_send_messages"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_23

    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    :goto_b
    const v2, 0x7f0b0435

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->title:I

    const v2, 0x7f0b0436

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_call_message"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->db:Ljava/lang/String;

    const-string/jumbo v2, "UFCM"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->feature:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingFlow:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->loggingEvent:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f02038a

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    const v2, 0x7f02038c

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f020389

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_0

    :cond_c
    const v2, 0x7f0b0995

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0203a9

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    :cond_e
    if-eqz v1, :cond_f

    const v2, 0x7f0203ab

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    :cond_f
    const v2, 0x7f0203a8

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_2

    :cond_10
    const v2, 0x7f0b0997

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_3

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, 0x7f020155

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v1, :cond_13

    const v2, 0x7f020153

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    :cond_13
    const v2, 0x7f020151

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    :cond_14
    if-eqz v1, :cond_15

    const v2, 0x7f020156

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    :cond_15
    const v2, 0x7f020154

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_4

    :cond_16
    const v2, 0x7f0b099c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_5

    :cond_17
    const v2, 0x7f0b099b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_5

    :cond_18
    const v2, 0x7f0b099b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_6

    :cond_19
    if-eqz v1, :cond_1a

    const v2, 0x7f020150

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_7

    :cond_1a
    const v2, 0x7f02014e

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_7

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const v2, 0x7f020436

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    :cond_1c
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v1, :cond_1d

    const v2, 0x7f020454

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    :cond_1d
    const v2, 0x7f020435

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    :cond_1e
    if-eqz v1, :cond_1f

    const v2, 0x7f020455

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    :cond_1f
    const v2, 0x7f020437

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_8

    :cond_20
    const v2, 0x7f0b0412

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_9

    :cond_21
    const v2, 0x7f0b0410

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_9

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b041e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->summary:Ljava/lang/String;

    goto/16 :goto_a

    :cond_23
    iput v6, v0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$Description;->animation:I

    goto/16 :goto_b
.end method

.method private smartCaptureDisablePopup()V
    .locals 8

    const v7, 0x7f0b0234

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f0b0432

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0433

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0b0404

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0434

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$12;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$13;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$14;-><init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingFlow:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v2, "UsefulFeatureHub"

    const-string/jumbo v3, "onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "swipe_to_call_or_send_messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "UsefulFeatureHub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityCreated() switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "multi_window_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "palm_swipe_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "default"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->setDescriptions()V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->createUsefulFeatureView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "palm_swipe_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "smart_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v1, "multi_window_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v6, "UsefulFeatureHub"

    const-string/jumbo v9, "onResume"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "pick_up_to_call_out_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "DirectCall"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v6, "false"

    aput-object v6, v4, v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v10, "isScreenCaptureEnabled"

    invoke-static {v6, v9, v10, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "surface_palm_swipe"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "surface_palm_swipe"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "pick_up_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "SmartAlert"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "merged_mute_or_pause_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "EasyMute"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "PalmSwipeToCapture"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "SmartCapture"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "direct_share"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "DirectShare"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SwipeToCallorSendMessages"

    sput-object v6, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mBixbyCurrentStateId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "surface_palm_swipe"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_1

    :cond_d
    move v6, v8

    goto :goto_4

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->dismissAllDialog()V

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v5, 0x1

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    goto :goto_6

    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "multi_window_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "multi_window_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMultiWindowObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_14

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_7

    :cond_14
    move v6, v8

    goto :goto_8

    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "direct_share"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_16

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_3

    :cond_16
    move v6, v8

    goto :goto_9

    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v9, "swipe_to_call_or_send_messages"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_18

    move v6, v7

    :goto_a
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_3

    :cond_18
    move v6, v8

    goto :goto_a

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_1a

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "access_control_enabled"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v7

    :goto_c
    invoke-virtual {v9, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_b

    :cond_1b
    move v6, v8

    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "UsefulFeatureHub"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "UsefulFeatureHub"

    const-string/jumbo v3, "onSwitchChanged"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mLoggingEvent:I

    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "palm_swipe_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->makeTalkBackDisablePopup()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "motion_overturn"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->context:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "db_popup_view_shortcut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v3, "smart_capture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "finger_magnifier"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->smartCaptureDisablePopup()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "enable_smart_capture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_call_or_send_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V

    goto/16 :goto_2
.end method
