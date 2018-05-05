.class Lcom/android/settings/datausage/DataSavingChnPreference$4;
.super Ljava/lang/Object;
.source "DataSavingChnPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataSavingChnPreference;->updateEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSavingChnPreference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-boolean p2, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->val$enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSavingChnPreference$4;->this$0:Lcom/android/settings/datausage/DataSavingChnPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->-wrap0(Lcom/android/settings/datausage/DataSavingChnPreference;Z)V

    :cond_0
    return-void
.end method
