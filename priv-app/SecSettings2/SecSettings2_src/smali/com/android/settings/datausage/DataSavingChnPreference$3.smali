.class Lcom/android/settings/datausage/DataSavingChnPreference$3;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->updateChecked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

.field final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-boolean p2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->val$checked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get2(Lcom/android/settings/datausage/DataSavingChnPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataSavingChnPreference;->-get2(Lcom/android/settings/datausage/DataSavingChnPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$3;->val$checked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DataSavingChnPreference"

    const-string/jumbo v1, "mSwitchView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
