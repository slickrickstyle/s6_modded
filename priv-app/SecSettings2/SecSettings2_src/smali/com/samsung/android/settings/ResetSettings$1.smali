.class Lcom/samsung/android/settings/ResetSettings$1;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettings$1;->this$0:Lcom/samsung/android/settings/ResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings$1;->this$0:Lcom/samsung/android/settings/ResetSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings$1;->this$0:Lcom/samsung/android/settings/ResetSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b072c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings$1;->this$0:Lcom/samsung/android/settings/ResetSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ResetSettings;->-wrap0(Lcom/samsung/android/settings/ResetSettings;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettings$1;->this$0:Lcom/samsung/android/settings/ResetSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/ResetSettings;->-wrap1(Lcom/samsung/android/settings/ResetSettings;)V

    :cond_1
    return-void
.end method
