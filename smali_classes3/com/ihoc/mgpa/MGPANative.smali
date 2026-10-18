.class public final Lcom/ihoc/mgpa/MGPANative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsSupportGradishWrapper:Z = false


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

.method public static synchronized native dbg()Ljava/lang/String;
.end method

.method public static native getIVParameter()Ljava/lang/String;
.end method

.method public static native getKey()Ljava/lang/String;
.end method

.method public static native getThreadAffinity(II)J
.end method

.method public static native handleClose()I
.end method

.method public static native handleFetchTuples()Ljava/lang/String;
.end method

.method public static native handleGetParam(I)Ljava/lang/String;
.end method

.method public static native handleHandshake(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native handleHeartBeat()I
.end method

.method public static native handleInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native handleReportData(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native handleUpdateTuples(Ljava/lang/String;)I
.end method

.method public static native init()V
.end method

.method private static isDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->isDebugLogOpen()Z

    move-result v0

    return v0
.end method

.method private static isGradishDebugIDEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isDebugIdReportOpen()Z

    move-result v0

    return v0
.end method

.method private static isGradishEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isSafeUniqueIdReportOpen()Z

    move-result v0

    return v0
.end method

.method public static native isRouterAvailable()Z
.end method

.method public static native isRouterSupported(Ljava/lang/String;IIZ)Z
.end method

.method public static synchronized native live(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native setThreadAffinity(I[II)Z
.end method

.method public static tryLoadLibrary()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/ihoc/mgpa/MGPANative;->sIsSupportGradishWrapper:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tgpa"

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/gradish/Z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ihoc/mgpa/MGPANative;->sIsSupportGradishWrapper:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "load native lib success!!!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->print(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "load native lib failed!!!"

    invoke-static {v1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    sget-boolean v0, Lcom/ihoc/mgpa/MGPANative;->sIsSupportGradishWrapper:Z

    return v0
.end method

.method public static synchronized native yje(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static synchronized native yje_larysvc(Landroid/content/Context;)Z
.end method

.method public static synchronized native yje_v8(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static synchronized native zkf(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static synchronized native zkf_v8(Landroid/content/Context;)Ljava/lang/String;
.end method
