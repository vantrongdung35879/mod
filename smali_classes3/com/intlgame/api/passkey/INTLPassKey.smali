.class public Lcom/intlgame/api/passkey/INTLPassKey;
.super Ljava/lang/Object;
.source "INTLPassKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createPassKey(Ljava/lang/String;)V
.end method

.method public static native deletePassKey(Ljava/lang/String;)V
.end method

.method public static native getAllPassKey()V
.end method

.method public static native isPassKeyAvailable()Z
.end method

.method public static native loginPassKey()V
.end method
