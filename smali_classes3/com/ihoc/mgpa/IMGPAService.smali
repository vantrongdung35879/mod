.class public interface abstract Lcom/ihoc/mgpa/IMGPAService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/IMGPAService$TouchEventWrapper;,
        Lcom/ihoc/mgpa/IMGPAService$TouchEventListener;,
        Lcom/ihoc/mgpa/IMGPAService$Callback;
    }
.end annotation


# virtual methods
.method public abstract enableDebugMode()V
.end method

.method public abstract getDataFromTGPA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract init(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract registerCallback()V
.end method

.method public abstract registerCallback(Lcom/ihoc/mgpa/IMGPAService$Callback;)V
.end method

.method public abstract setLogAble(Z)V
.end method

.method public abstract updateGameInfo(ILjava/lang/String;)V
.end method

.method public abstract updateGameInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateGameInfo(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
