.class public interface abstract Lcom/uqm/crashsight/crashreport/a;
.super Ljava/lang/Object;
.source "CrashSight"


# virtual methods
.method public abstract appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getAvailableMemAndSwapFromNative()[J
.end method

.method public abstract getRssVssFromNative()[J
.end method

.method public abstract getSystemPropertyFromNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTotalMemAndSwapFromNative()[J
.end method

.method public abstract readAppState()Ljava/lang/String;
.end method

.method public abstract readUserKv()Ljava/lang/String;
.end method

.method public abstract readUserLog()Ljava/lang/String;
.end method

.method public abstract setNativeIsAppForeground(Z)Z
.end method

.method public abstract storeLastMmapFile()V
.end method

.method public abstract updateAppState(Ljava/lang/String;)V
.end method
