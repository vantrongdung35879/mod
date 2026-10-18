.class public interface abstract Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ihoc/mgpa/vendorsdk/v2_0/ITGPAServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract getInterfaceVersion()Ljava/lang/String;
.end method

.method public abstract getServerVersion()Ljava/lang/String;
.end method

.method public abstract getSupportState()I
.end method

.method public abstract getSupportStrategy()Ljava/lang/String;
.end method

.method public abstract getSystemData(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Landroid/os/IBinder;)V
.end method

.method public abstract registerGameCallback(Lcom/ihoc/mgpa/vendorsdk/v2_0/ICallBack;)V
.end method

.method public abstract setForeground(Z)V
.end method

.method public abstract unregisterGameCallback()V
.end method

.method public abstract updateGameInfo(Ljava/lang/String;)V
.end method
