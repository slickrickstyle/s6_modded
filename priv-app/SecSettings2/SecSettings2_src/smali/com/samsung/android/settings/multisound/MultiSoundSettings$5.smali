.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;
.super Ljava/lang/Object;
.source "MultiSoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;->showNetworkDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$5;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->moveSelectApp(Z)V

    return-void
.end method
