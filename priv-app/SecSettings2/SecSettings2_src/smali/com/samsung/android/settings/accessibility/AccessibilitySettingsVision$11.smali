.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$11;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$11;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->-get10(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
