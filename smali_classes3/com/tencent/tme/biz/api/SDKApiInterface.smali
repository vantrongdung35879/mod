.class public interface abstract Lcom/tencent/tme/biz/api/SDKApiInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tme/biz/api/SDKApiInterface$Stub;,
        Lcom/tencent/tme/biz/api/SDKApiInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract registerListener(Lcom/tencent/tme/biz/api/HostListener;)V
.end method

.method public abstract sendCommand(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract unRegisterListener()V
.end method
