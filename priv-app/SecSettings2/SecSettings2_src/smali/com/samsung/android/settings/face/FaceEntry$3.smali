.class Lcom/samsung/android/settings/face/FaceEntry$3;
.super Ljava/lang/Object;
.source "FaceEntry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    return-void
.end method
