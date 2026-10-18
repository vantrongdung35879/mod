.class public Lcom/uqm/crashsight/core/tools/UQMLog;
.super Ljava/lang/Object;
.source "CrashSight"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "[CrashSightPlugin]"

.field private static final WARN:I = 0x5

.field public static debugEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 49
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 61
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 19
    const-string p0, "null"

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    .line 22
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 53
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs printLog(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/uqm/crashsight/core/tools/UQMLog;->debugEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p1, p2}, Lcom/uqm/crashsight/core/tools/UQMLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 33
    const-string v0, "[CrashSightPlugin]"

    if-eq p0, p2, :cond_4

    const/4 p2, 0x4

    if-eq p0, p2, :cond_3

    const/4 p2, 0x5

    if-eq p0, p2, :cond_2

    const/4 p2, 0x6

    if-eq p0, p2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_2
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 41
    :cond_3
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_4
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 57
    invoke-static {v0, p0, p1}, Lcom/uqm/crashsight/core/tools/UQMLog;->printLog(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
