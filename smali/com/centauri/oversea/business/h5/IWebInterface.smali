.class public interface abstract Lcom/centauri/oversea/business/h5/IWebInterface;
.super Ljava/lang/Object;
.source "IWebInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/centauri/oversea/business/h5/IWebInterface$Stub;,
        Lcom/centauri/oversea/business/h5/IWebInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract onResult(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryCacheIP(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
