.class public Lcom/tdatamaster/tdm/system/TDMLog;
.super Ljava/lang/Object;
.source "TDMLog.java"


# static fields
.field private static LEVEL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    sget v0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    if-gtz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TDM][D]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static Error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    sget v0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TDM][E]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static GetLogLevel()I
    .locals 1

    .line 21
    sget v0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    return v0
.end method

.method public static Info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 31
    sget v0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TDM][I]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static SetLogLevel(I)V
    .locals 0

    .line 17
    sput p0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    return-void
.end method

.method public static Warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 37
    sget v0, Lcom/tdatamaster/tdm/system/TDMLog;->LEVEL:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TDM][W]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
