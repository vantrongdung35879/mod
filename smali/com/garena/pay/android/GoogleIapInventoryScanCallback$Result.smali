.class public Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;
.super Ljava/lang/Object;
.source "GoogleIapInventoryScanCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GoogleIapInventoryScanCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final error:Ljava/lang/String;

.field public final item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

.field public final success:Z


# direct methods
.method private constructor <init>(ZLcom/garena/pay/android/data/GoogleIapItemInfo;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->success:Z

    .line 36
    iput-object p3, p0, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->error:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;->item:Lcom/garena/pay/android/data/GoogleIapItemInfo;

    return-void
.end method

.method public static error(Lcom/garena/pay/android/data/GoogleIapItemInfo;Ljava/lang/String;)Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;
    .locals 2

    .line 31
    new-instance v0, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;-><init>(ZLcom/garena/pay/android/data/GoogleIapItemInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Lcom/garena/pay/android/data/GoogleIapItemInfo;)Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;
    .locals 3

    .line 27
    new-instance v0, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/garena/pay/android/GoogleIapInventoryScanCallback$Result;-><init>(ZLcom/garena/pay/android/data/GoogleIapItemInfo;Ljava/lang/String;)V

    return-object v0
.end method
