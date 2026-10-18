.class public Lcom/tencent/gsdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gsdk/utils/Logger$ILogObserver;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "gsdk"

.field private static isDebug:Z = false

.field private static sLogObserver:Lcom/tencent/gsdk/utils/Logger$ILogObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/gsdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/tencent/gsdk/x;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-boolean v0, Lcom/tencent/gsdk/utils/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 4
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/gsdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/tencent/gsdk/x;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-boolean v0, Lcom/tencent/gsdk/utils/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 4
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/gsdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/tencent/gsdk/x;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-boolean v0, Lcom/tencent/gsdk/utils/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 4
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    sget-object p0, Lcom/tencent/gsdk/utils/Logger;->sLogObserver:Lcom/tencent/gsdk/utils/Logger$ILogObserver;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0, p1}, Lcom/tencent/gsdk/utils/Logger$ILogObserver;->onLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/tencent/gsdk/utils/Logger;->isDebug:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/tencent/gsdk/x;->a(I)V

    return-void
.end method

.method public static setLogObserver(Lcom/tencent/gsdk/utils/Logger$ILogObserver;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/tencent/gsdk/utils/Logger;->sLogObserver:Lcom/tencent/gsdk/utils/Logger$ILogObserver;

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/gsdk/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/tencent/gsdk/x;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    sget-boolean v0, Lcom/tencent/gsdk/utils/Logger;->isDebug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 4
    invoke-static {v0, p0, p1}, Lcom/tencent/gsdk/utils/Logger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
