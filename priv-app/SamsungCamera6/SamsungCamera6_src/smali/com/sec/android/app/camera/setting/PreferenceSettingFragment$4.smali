.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->initialize()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$4;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const/16 v1, 0x197

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(I)V

    const/4 v0, 0x0

    return v0
.end method
