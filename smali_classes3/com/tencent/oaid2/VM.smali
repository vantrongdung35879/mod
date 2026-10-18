.class public Lcom/tencent/oaid2/VM;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVendorInfo(Landroid/content/Context;Lcom/tencent/oaid2/IVendorCallback;)I
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/oaid2/VendorManager;

    invoke-direct {v0}, Lcom/tencent/oaid2/VendorManager;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/oaid2/VendorManager;->getVendorInfo(Landroid/content/Context;Lcom/tencent/oaid2/IVendorCallback;)I

    move-result p0

    return p0
.end method
