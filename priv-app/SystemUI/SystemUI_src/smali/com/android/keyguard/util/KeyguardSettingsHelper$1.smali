.class Lcom/android/keyguard/util/KeyguardSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "KeyguardSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/KeyguardSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/util/KeyguardSettingsHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3900(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v0, p2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$4000(Lcom/android/keyguard/util/KeyguardSettingsHelper;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3900(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string v2, "white_lockscreen_statusbar"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_statusbar"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto :goto_1

    :cond_3
    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto :goto_1

    :cond_4
    const-string v2, "white_cover_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_cover_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto :goto_1

    :cond_5
    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$502(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v2, "lockscreen_wallpaper_path2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path2"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$602(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v2, "lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v2, v3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_8
    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v3, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper_transparent"

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_9

    :goto_2
    invoke-static {v2, v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$802(Lcom/android/keyguard/util/KeyguardSettingsHelper;Z)Z

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_b
    const-string v0, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_c
    const-string v0, "current_sec_theme_package_open_theme"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_open_theme"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1102(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "current_sec_active_themepackage"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1202(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v0, "theme_font_clock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_clock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1302(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v0, "theme_font_numeric"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_numeric"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1402(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v0, "theme_font_system"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_font_system"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1502(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1602(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v0, "dualclock_menu_settings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_13
    const-string v0, "homecity_timezone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "homecity_timezone"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1802(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_14
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$1902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_15
    const-string v0, "easy_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_16
    const-string v0, "kids_home_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2102(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_17
    const-string v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ultra_powersaving_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_18
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_19
    const-string v0, "speak_password"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_1a
    const-string v0, "interactionarea_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interactionarea_switch"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2502(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_1b
    const-string v0, "any_screen_running"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_running"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2602(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_1c
    const-string v0, "lockscreen_wallpaper_path_sub"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_sub"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2702(Lcom/android/keyguard/util/KeyguardSettingsHelper;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_1d
    const-string v0, "access_control_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2802(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_1e
    const-string v0, "sidesync_source_connect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sidesync_source_connect"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$2902(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_1f
    const-string v0, "intelligent_sleep_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3002(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_20
    const-string v0, "powersaving_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "powersaving_switch"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3102(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_21
    const-string v0, "psm_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_switch"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3202(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_22
    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3302(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_23
    const-string v0, "automatic_unlock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_unlock"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3402(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_24
    const-string v0, "mdm_wallpaper_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mdm_wallpaper_enabled"

    invoke-static {v2, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3502(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_25
    const-string v0, "set_shortcuts_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3602(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_26
    const-string v0, "vr_keyguard_control"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/util/KeyguardSettingsHelper$1;->this$0:Lcom/android/keyguard/util/KeyguardSettingsHelper;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$100(Lcom/android/keyguard/util/KeyguardSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vr_keyguard_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->access$3702(Lcom/android/keyguard/util/KeyguardSettingsHelper;I)I

    goto/16 :goto_1

    :cond_27
    goto/16 :goto_1
.end method
