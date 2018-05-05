.class public Lcom/samsung/android/settings/face/FaceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceSettings$1;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z


# instance fields
.field private isRunRegister:Z

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceUnlock:Landroid/preference/SwitchPreference;

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedTurnOnCheck:Z

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwipeUnlock:Landroid/preference/SwitchPreference;

.field private mToken:[B

.field private mUnlockCategory:Landroid/preference/PreferenceCategory;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceSettings;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/face/FaceSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->stopFaceSettings()V

    sget-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finishFaceSettings()V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080115

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->setFaceSettingsPreference()V

    return-object v0

    :cond_1
    const v1, 0x7f080114

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private deleteFace()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "deleteFace"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0b06e2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    const v2, 0x7f0b076e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b076d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const v3, 0x7f0b043f

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$5;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$6;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 6

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b072b

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v3, :cond_1

    const-string/jumbo v3, "hw_auth_token"

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister already called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runRegister called : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFaceSettingsPreference()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "register_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "unlock_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUnlockCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "key_facelock_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFaceScreenLock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v2, "key_facelock_swipe_unlock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "face_swipe_unlock"

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSwipeUnlock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private showDisclaimer()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b069a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b076f

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const v3, 0x7f0b0441

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2
.end method

.method private showSensorErrorDialog(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0774

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$7;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$8;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopFaceSettings()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "stopFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "finishFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1831

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    const-string/jumbo v1, "previousStage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_2
    if-ne p2, v4, :cond_3

    const-string/jumbo v1, "FaceSettings_unlock_switch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    if-ne p2, v4, :cond_4

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b072b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "isAfw"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v2, "needTurnOnCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needTurnOnCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f080115

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->setHasOptionsMenu(Z)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    :cond_4
    const v2, 0x7f080114

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f0b069a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->showDisclaimer()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104bb

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/16 v5, 0x100

    const/4 v6, 0x0

    const-string/jumbo v3, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=====onPreferenceChange : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v5, v4}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=====onPreferenceTreeClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "key_facelock_register"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "FaceSettings_register"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "key_facelock_remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V

    :cond_2
    :goto_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Session closed! Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSwipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
