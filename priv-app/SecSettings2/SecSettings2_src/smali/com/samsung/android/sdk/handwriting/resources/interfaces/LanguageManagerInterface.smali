.class public interface abstract Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface;
.super Ljava/lang/Object;
.source "LanguageManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;
.end method

.method public abstract getAvailableLanguage()[Ljava/lang/String;
.end method

.method public abstract initialize()V
.end method

.method public abstract update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
.end method
