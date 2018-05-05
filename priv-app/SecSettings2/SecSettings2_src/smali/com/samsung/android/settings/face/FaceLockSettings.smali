.class public Lcom/samsung/android/settings/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDisableSystemKey:Z

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIsAfw:Z

.field private mIsDirectionLock:Z

.field private mIsFromSwitch:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mDisableSystemKey:Z

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsDirectionLock:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Close Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->finish()V

    goto :goto_1
.end method

.method private initFaceLockSettings()V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    const-string/jumbo v1, "disable_systemkey"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mDisableSystemKey:Z

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    const-string/jumbo v1, "FcstFaceLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPreviousStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_2

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "initFaceLockSettings : preEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    const/4 v4, 0x1

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchConfirmLock()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "launchConfirmLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const v0, 0x7f0b08ad

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mChallenge:J

    iget v8, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    const/16 v2, 0x3eb

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v9, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_0
    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v3, "FcstFaceLockSettings"

    const-string/jumbo v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :sswitch_0
    const v0, 0x7f0b0711

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b0713

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b0712

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private showRetryDialog()V
    .locals 4

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "showRetryDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0779

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b077a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b077b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/face/FaceLockSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/face/FaceLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsLockSetup()V
    .locals 4

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_face"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private startFaceRegister()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "FcstFaceLockSettings"

    const-string/jumbo v6, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "always_finish_activities"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0b0109

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0b06a5

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b069c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/face/FaceLockSettings$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/settings/face/FaceLockSettings$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/face/FaceLockSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0b072b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.bio.face.service"

    const-string/jumbo v6, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "hw_auth_token"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.USER_ID"

    iget v6, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x11

    :try_start_0
    iput v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v5, 0x3ec

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "FcstFaceLockSettings"

    const-string/jumbo v6, "runRegister : Activity Not Found !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1
.end method

.method private startFaceSettings(Landroid/content/Context;Z)V
    .locals 8

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    if-nez p1, :cond_1

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_2

    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "needTurnOnCheck"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    const v3, 0x7f0b0697

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0763

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startUseFaceLockSettings()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.UseFaceLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "tokenFromLock"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FcstFaceLockSettings"

    const-string/jumbo v3, "startUseFaceLockSettings : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, "FcstFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult : requestCode : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " resultCode : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " data is NULL : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v4, "intent is not null! Copy the token to result_intent"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "default : Not consider this case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :pswitch_0
    if-ne p2, v2, :cond_5

    const-string/jumbo v1, "key_face_settings_entry"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "This is wrong case! Couldn\'t be exist!(Unsecure, Face exist)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showCurrentLockTypeToast()V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "This is wrong case! Couldn\'t be exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "Set lockscreen failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :pswitch_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->showRetryDialog()V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "FaceSettings_register"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-ne p2, v7, :cond_a

    if-eqz p3, :cond_7

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v8, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_b
    const-string/jumbo v1, "key_face_settings_entry"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-ne p2, v7, :cond_12

    if-eqz p3, :cond_c

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsFromSwitch:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v6, v3, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;IZ)V

    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_d

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_e
    iput v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v8, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_4

    :cond_f
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_10
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startUseFaceLockSettings()V

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v8, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v1, "FaceSettings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mKeepSessionAndActivity:I

    if-ne p2, v7, :cond_15

    if-eqz p3, :cond_14

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mUserId:I

    invoke-static {v1, v2, v8, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :pswitch_2
    if-ne p2, v7, :cond_18

    if-eqz p3, :cond_16

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    :cond_16
    const-string/jumbo v2, "FcstFaceLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult: token="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister()V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v1, "NULL"

    goto :goto_7

    :cond_18
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_3
    if-ne p2, v7, :cond_19

    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "start chooseLockGeneric"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v1, "FcstFaceLockSettings"

    const-string/jumbo v2, "onActivityResult: Finish the activity!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceLockSettings() : isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b072b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->initFaceLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "key_face_settings_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "FaceSettings_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_5

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "FaceSettings_unlock_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "FaceLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings;->mToken:[B

    if-eqz v0, :cond_6

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->startFaceRegister()V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
