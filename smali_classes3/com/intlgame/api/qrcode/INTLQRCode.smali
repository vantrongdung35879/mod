.class public Lcom/intlgame/api/qrcode/INTLQRCode;
.super Ljava/lang/Object;
.source "INTLQRCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SetPositionMarkerColor(Ljava/lang/String;)V
.end method

.method public static native openQRScanner(Ljava/lang/String;)V
.end method

.method public static native setIcon(Ljava/lang/String;)V
.end method

.method public static native setQRCodeObserver(Lcom/intlgame/api/qrcode/INTLQRCodeObserver;)V
.end method

.method public static native showQRCode(Ljava/lang/String;)V
.end method
