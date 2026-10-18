.class public Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;
.super Ljava/lang/Object;
.source "NativeManager.java"


# static fields
.field public static final IPV4:I = 0x0

.field public static final IPV6:I = 0x1

.field private static instance:Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager; = null

.field private static transceiverLibAvailable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 12
    :try_start_0
    const-string/jumbo v1, "transceiver"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    sput-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    .line 14
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "load transceiver so success"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "load transceiver so failed, try to load gcloudcore"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :try_start_1
    const-string v1, "gcloudcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    sput-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    .line 20
    sget-object v1, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    const-string v2, "load gcloudcore so success"

    invoke-static {v1, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 22
    sget-object v2, Lcom/ihoc/tgpatask/transceivertool/constant/ConfigConsts;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "load gcloudcore so failed:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sput-boolean v3, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    :goto_0
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->instance:Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native closeICMPSock(I)Z
.end method

.method private native createICMPSock(I)I
.end method

.method public static getInstance()Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->instance:Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    invoke-direct {v0}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;-><init>()V

    sput-object v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->instance:Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->instance:Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;

    return-object v0
.end method

.method private native runContinuePing(ILjava/lang/String;[BIILcom/ihoc/tgpatask/transceivertool/cpp/NativeCallback;)Z
.end method

.method private native runLossPing(ILjava/lang/String;[BIII)Ljava/lang/String;
.end method

.method private native runMultiSocketPing(ILjava/lang/String;[BIII)Ljava/lang/String;
.end method

.method private native runPing(ILjava/lang/String;[BIIII)Ljava/lang/String;
.end method

.method private native runTracert(ILjava/lang/String;[BIIII)Ljava/lang/String;
.end method

.method private native stopContinuePing(Ljava/lang/String;)V
.end method


# virtual methods
.method public addPing(Ljava/lang/String;[BIILcom/ihoc/tgpatask/transceivertool/cpp/NativeCallback;)Z
    .locals 9

    .line 166
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 167
    const-string p1, "ENQSDK"

    const-string/jumbo p2, "transceiverlib not available"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 172
    :cond_0
    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 175
    invoke-direct/range {v2 .. v8}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->runContinuePing(ILjava/lang/String;[BIILcom/ihoc/tgpatask/transceivertool/cpp/NativeCallback;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public native getKey()Ljava/lang/String;
.end method

.method public lossPing(Ljava/lang/String;[BIII)Ljava/lang/String;
    .locals 9

    .line 116
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 117
    const-string p1, "ENQSDK"

    const-string/jumbo p2, "transceiverlib not available"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 122
    :cond_0
    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 125
    invoke-direct/range {v2 .. v8}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->runLossPing(ILjava/lang/String;[BIII)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v1
.end method

.method public multiSocketPing(Ljava/lang/String;[BIII)Ljava/lang/String;
    .locals 9

    .line 93
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 94
    const-string p1, "ENQSDK"

    const-string/jumbo p2, "transceiverlib not available"

    invoke-static {p1, p2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 99
    :cond_0
    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 102
    invoke-direct/range {v2 .. v8}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->runMultiSocketPing(ILjava/lang/String;[BIII)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v1
.end method

.method public ping(Ljava/lang/String;[BIII)Ljava/lang/String;
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->ping(Ljava/lang/String;[BIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ping(Ljava/lang/String;[BIIII)Ljava/lang/String;
    .locals 10

    .line 67
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 68
    const-string v0, "ENQSDK"

    const-string/jumbo v2, "transceiverlib not available"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 73
    :cond_0
    :try_start_0
    const-string v0, "."

    move-object v4, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 76
    invoke-direct/range {v2 .. v9}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->runPing(ILjava/lang/String;[BIIII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method public removePing(Ljava/lang/String;)V
    .locals 1

    .line 189
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    if-nez v0, :cond_0

    .line 190
    const-string p1, "ENQSDK"

    const-string/jumbo v0, "transceiverlib not available"

    invoke-static {p1, v0}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    invoke-direct {p0, p1}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->stopContinuePing(Ljava/lang/String;)V

    return-void
.end method

.method public tracert(Ljava/lang/String;[BIIII)Ljava/lang/String;
    .locals 10

    .line 142
    sget-boolean v0, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->transceiverLibAvailable:Z

    const-string v1, ""

    if-nez v0, :cond_0

    .line 143
    const-string v0, "ENQSDK"

    const-string/jumbo v2, "transceiverlib not available"

    invoke-static {v0, v2}, Lcom/ihoc/tgpatask/transceivertool/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 148
    :cond_0
    :try_start_0
    const-string v0, "."

    move-object v4, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    .line 151
    invoke-direct/range {v2 .. v9}, Lcom/ihoc/tgpatask/transceivertool/cpp/NativeManager;->runTracert(ILjava/lang/String;[BIIII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method
