.class public final Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;",
        "",
        "()V",
        "CLASS_FULL_NAME_CRASH_REPORT",
        "",
        "METHOD_NAME_INIT",
        "METHOD_NAME_POST_EXCEPTION",
        "METHOD_NAME_PUT_USER_DATA",
        "METHOD_NAME_SET_SERVER_URL",
        "METHOD_NAME_SET_SET_USER_ID",
        "_logger",
        "Lcom/ihoc/mgpa/toolkit/util/Logger;",
        "isCrashInsightSDKValid",
        "",
        "sCrashReportClass",
        "Ljava/lang/Class;",
        "sExtraInfo",
        "",
        "checkCrashInSightIsValid",
        "getStackTrace",
        "throwable",
        "",
        "postInnerException",
        "",
        "toolkit_internationalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLASS_FULL_NAME_CRASH_REPORT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;

.field private static final METHOD_NAME_INIT:Ljava/lang/String;

.field private static final METHOD_NAME_POST_EXCEPTION:Ljava/lang/String;

.field private static final METHOD_NAME_PUT_USER_DATA:Ljava/lang/String;

.field private static final METHOD_NAME_SET_SERVER_URL:Ljava/lang/String;

.field private static final METHOD_NAME_SET_SET_USER_ID:Ljava/lang/String;

.field private static final _logger:Lcom/ihoc/mgpa/toolkit/util/Logger;

.field private static isCrashInsightSDKValid:Z

.field private static sCrashReportClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;

    invoke-direct {v0}, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->INSTANCE:Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;

    .line 1
    new-instance v0, Lcom/ihoc/mgpa/toolkit/util/Logger;

    const-string v1, "CrashUtil"

    invoke-direct {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->_logger:Lcom/ihoc/mgpa/toolkit/util/Logger;

    .line 3
    const-string v0, "com.uqm.crashsight.crashreport.CrashReport"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->CLASS_FULL_NAME_CRASH_REPORT:Ljava/lang/String;

    .line 5
    const-string v0, "initCrashReport"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_INIT:Ljava/lang/String;

    .line 7
    const-string v0, "setServerUrl"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_SET_SERVER_URL:Ljava/lang/String;

    .line 9
    const-string v0, "setUserId"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_SET_SET_USER_ID:Ljava/lang/String;

    .line 11
    const-string v0, "postException"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_POST_EXCEPTION:Ljava/lang/String;

    .line 13
    const-string v0, "putUserData"

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_PUT_USER_DATA:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->sExtraInfo:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkCrashInSightIsValid()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->isCrashInsightSDKValid:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 5
    :try_start_0
    sget-object v3, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->CLASS_FULL_NAME_CRASH_REPORT:Ljava/lang/String;

    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/String;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    sput-object v3, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->sCrashReportClass:Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 7
    sput-boolean v1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->isCrashInsightSDKValid:Z

    return v1

    .line 10
    :cond_1
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->_logger:Lcom/ihoc/mgpa/toolkit/util/Logger;

    const-string v3, "check CrashInsight error, please check the crashinsight version!."

    invoke-static {v1, v3, v2, v0, v2}, Lcom/ihoc/mgpa/toolkit/util/Logger;->error$default(Lcom/ihoc/mgpa/toolkit/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :catchall_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->_logger:Lcom/ihoc/mgpa/toolkit/util/Logger;

    const-string v3, "check CrashInsight exception, maybe the app haven\'t intergrated it!."

    invoke-static {v1, v3, v2, v0, v2}, Lcom/ihoc/mgpa/toolkit/util/Logger;->error$default(Lcom/ihoc/mgpa/toolkit/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "sw.toString()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 5
    :try_start_3
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6
    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 8
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 15
    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final postInnerException(Ljava/lang/Throwable;)V
    .locals 9

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->checkCrashInSightIsValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 6
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->sCrashReportClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->onClass(Ljava/lang/Class;)Lcom/ihoc/mgpa/toolkit/util/Reflect;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->METHOD_NAME_POST_EXCEPTION:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    aput-object v6, v7, v0

    const/4 v4, 0x3

    aput-object p1, v7, v4

    sget-object p1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->sExtraInfo:Ljava/util/Map;

    aput-object p1, v7, v3

    .line 10
    invoke-virtual {v1, v2, v7}, Lcom/ihoc/mgpa/toolkit/util/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/ihoc/mgpa/toolkit/util/Reflect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    sget-object p1, Lcom/ihoc/mgpa/toolkit/util/CrashReportUtil;->_logger:Lcom/ihoc/mgpa/toolkit/util/Logger;

    const-string/jumbo v1, "use CrashInsight postException error."

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Lcom/ihoc/mgpa/toolkit/util/Logger;->error$default(Lcom/ihoc/mgpa/toolkit/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
