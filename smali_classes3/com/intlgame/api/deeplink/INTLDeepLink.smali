.class public Lcom/intlgame/api/deeplink/INTLDeepLink;
.super Ljava/lang/Object;
.source "INTLDeepLink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fetch()Ljava/lang/String;
.end method

.method public static native receive(Ljava/lang/String;)V
.end method

.method public static native receive(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method
