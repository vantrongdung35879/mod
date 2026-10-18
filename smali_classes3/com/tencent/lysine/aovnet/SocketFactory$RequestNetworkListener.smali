.class public interface abstract Lcom/tencent/lysine/aovnet/SocketFactory$RequestNetworkListener;
.super Ljava/lang/Object;
.source "SocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/lysine/aovnet/SocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestNetworkListener"
.end annotation


# virtual methods
.method public abstract onAvailable(I)V
.end method

.method public abstract onCapabilitiesChanged(I)V
.end method

.method public abstract onException(Ljava/lang/String;)V
.end method

.method public abstract onLost(I)V
.end method
