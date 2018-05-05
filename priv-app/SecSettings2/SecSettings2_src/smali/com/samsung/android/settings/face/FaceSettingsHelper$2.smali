.class final Lcom/samsung/android/settings/face/FaceSettingsHelper$2;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$faceUnlock:Landroid/preference/SwitchPreference;

.field final synthetic val$isFinish:Z

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$swipeUnlock:Landroid/preference/SwitchPreference;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILandroid/preference/SwitchPreference;Landroid/preference/SwitchPreference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput p3, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$userId:I

    iput-object p4, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$faceUnlock:Landroid/preference/SwitchPreference;

    iput-object p5, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    iput-boolean p6, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$isFinish:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$userId:I

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$faceUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$faceUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$swipeUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$isFinish:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettingsHelper$2;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string/jumbo v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "Popup dismissed!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
