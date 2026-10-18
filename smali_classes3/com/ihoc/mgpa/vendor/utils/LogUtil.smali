.class public Lcom/ihoc/mgpa/vendor/utils/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VendorBridge"

.field private static sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;

    const-string v0, "VendorBridge"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;

    const-string v1, "VendorBridge"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const-string p0, "%s: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    sget-object v0, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;

    const-string v1, "VendorBridge"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const-string p0, "%s: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;->error(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static varargs print(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;

    const-string v0, "VendorBridge"

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setProxy(Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;)V
    .locals 0

    sput-object p0, Lcom/ihoc/mgpa/vendor/utils/LogUtil;->sLogTool:Lcom/ihoc/mgpa/vendor/IVendorBridge$LogTool;

    return-void
.end method
