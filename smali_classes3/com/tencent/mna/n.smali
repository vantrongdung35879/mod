.class public Lcom/tencent/mna/n;
.super Ljava/lang/Object;
.source "CachedTouchFileUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/n$g;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/StringBuilder;

.field private static b:Ljava/lang/String; = ""

.field private static c:J = 0x0L

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static volatile f:I = 0x0

.field private static g:I = 0x1000

.field private static h:I = 0xc800000

.field private static i:I = 0x2bf20

.field private static j:J

.field private static k:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/tencent/mna/n;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 8
    sput p0, Lcom/tencent/mna/n;->f:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 10
    sput-wide p0, Lcom/tencent/mna/n;->c:J

    return-wide p0
.end method

.method private static a(ZLjava/lang/String;Z)Lcom/tencent/mna/n$g;
    .locals 24

    move-object/from16 v11, p1

    move/from16 v12, p2

    .line 64
    sget-object v0, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    .line 65
    sget-wide v13, Lcom/tencent/mna/n;->c:J

    .line 66
    sget-object v1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v12, :cond_0

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/tencent/mna/p0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const-string v5, ".-."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 72
    array-length v5, v4

    if-le v5, v2, :cond_0

    .line 73
    aget-object v0, v4, v3

    .line 74
    aget-object v1, v4, v2

    :cond_0
    move-object v15, v0

    move-object v10, v1

    .line 79
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 80
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 81
    new-instance v0, Lcom/tencent/mna/n$g;

    const v1, -0x13885

    invoke-direct {v0, v1, v12, v11, v10}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 84
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v9, "CachedTouchFileUpload uploadFile isResend:"

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", file failed for path is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/tencent/mna/n$g;

    const v1, -0x13886

    const-string v2, ""

    invoke-direct {v0, v1, v12, v2, v10}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/tencent/mna/p0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CachedTouchFileUpload zipAndUpload file failed for zip file not exist:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/tencent/mna/n$g;

    sget-object v1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    const v2, -0x13887

    invoke-direct {v0, v2, v12, v11, v1}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/tencent/mna/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v7, v3, -0x1

    if-lez v3, :cond_5

    if-eqz v1, :cond_5

    const-string v6, ", file:"

    if-eqz p0, :cond_4

    .line 103
    sget-boolean v0, Lcom/tencent/mna/i;->d:Z

    if-nez v0, :cond_4

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed for pause resume 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 107
    new-instance v7, Lcom/tencent/mna/n$g;

    const v1, 0x13888

    const/4 v6, -0x1

    move-object v0, v7

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7

    .line 110
    :cond_4
    sget-object v0, Lcom/tencent/mna/n;->d:Ljava/lang/String;

    sget v1, Lcom/tencent/mna/n;->f:I

    sget-object v2, Lcom/tencent/mna/t0;->s:Ljava/lang/String;

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    long-to-int v5, v13

    sget v18, Lcom/tencent/mna/n;->h:I

    sget v19, Lcom/tencent/mna/n;->i:I

    move-object/from16 v2, p1

    move/from16 v3, p0

    move-wide/from16 v20, v13

    move-object v13, v6

    move-object v6, v8

    move v14, v7

    move-object v7, v10

    move-object/from16 v22, v8

    move-object v8, v15

    move-object/from16 v23, v9

    move/from16 v9, v18

    move-object/from16 v18, v15

    move-object v15, v10

    move/from16 v10, v19

    .line 113
    invoke-static/range {v0 .. v10}, Lcom/tencent/mna/base/jni/e;->a(Ljava/lang/String;ILjava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CachedTouchFileUpload uploadFile["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] pvpid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isResend:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", maxFileSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/n;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxTimeoutMills :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/mna/n;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", md5:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    move-object v8, v5

    move v3, v14

    move-object v10, v15

    move-object/from16 v15, v18

    move-wide/from16 v13, v20

    move-object/from16 v9, v23

    goto/16 :goto_0

    :cond_5
    move-object v5, v8

    move-object v15, v10

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    long-to-int v6, v2

    .line 123
    new-instance v7, Lcom/tencent/mna/n$g;

    move-object v0, v7

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method static synthetic a()Ljava/io/FileOutputStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/n;->k:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/n;->k:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    sput-object p0, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/mna/n;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 14
    const-string p1, "PAUSE"

    goto :goto_0

    :cond_0
    const-string p1, "END"

    .line 15
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".-."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".zip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/tencent/mna/n$g;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/n;->f(Ljava/lang/String;)Z

    move-result v0

    .line 27
    iget v1, p0, Lcom/tencent/mna/n$g;->a:I

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 30
    iget-object v1, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, -0x13887

    if-ne v1, v2, :cond_2

    .line 33
    iget-object v1, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 36
    iget-object v1, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n;->d(Ljava/lang/String;)V

    .line 39
    :cond_3
    :goto_0
    sget-object v1, Lcom/tencent/mna/base/report/d;->CACHED_TOUCH_UPLOAD:Lcom/tencent/mna/base/report/d;

    invoke-static {v1}, Lcom/tencent/mna/base/report/f;->a(Lcom/tencent/mna/base/report/d;)Lcom/tencent/mna/y2;

    move-result-object v1

    .line 40
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mna/d;->M1()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/mna/base/utils/e;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v3, "devid"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 42
    invoke-static {v2}, Lcom/tencent/mna/base/utils/e;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "devkey"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 43
    invoke-static {}, Lcom/tencent/mna/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ex_client_ip"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 44
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/c;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "net"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 45
    invoke-static {}, Lcom/tencent/mna/w;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnaver"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 47
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/utils/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gamever"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 50
    sget-object v2, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "openid"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 51
    iget-object v2, p0, Lcom/tencent/mna/n$g;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pvpid"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 52
    sget-wide v2, Lcom/tencent/mna/n;->j:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "origtime"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mna/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/tencent/mna/n;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "upload_svr"

    invoke-interface {v1, v3, v2}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upload_status"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 55
    iget v0, p0, Lcom/tencent/mna/n$g;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upload_errcode"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 56
    iget-boolean v0, p0, Lcom/tencent/mna/n$g;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    goto :goto_1

    :cond_4
    const-string v0, "0"

    :goto_1
    const-string/jumbo v2, "upload_resend"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 57
    iget-object v0, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upload_file"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 58
    iget v0, p0, Lcom/tencent/mna/n$g;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upload_use_time"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 59
    iget-object v0, p0, Lcom/tencent/mna/n$g;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "upload_file_md5"

    invoke-interface {v1, v2, v0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 60
    iget-object p0, p0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/mna/p0;->d(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "upload_file_size"

    invoke-interface {v1, v0, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 61
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "upload_switch"

    invoke-interface {v1, v0, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 62
    invoke-static {}, Lcom/tencent/mna/n;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "upload_failed_count"

    invoke-interface {v1, v0, p0}, Lcom/tencent/mna/y2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mna/y2;

    .line 63
    invoke-interface {v1}, Lcom/tencent/mna/y2;->c()V

    return-void
.end method

.method static synthetic a(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->d(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7

    .line 12
    sput p2, Lcom/tencent/mna/n;->f:I

    .line 13
    new-instance v6, Lcom/tencent/mna/n$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mna/n$a;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-static {v6}, Lcom/tencent/mna/a2;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/tencent/mna/n;->d(Z)V

    return-void
.end method

.method static synthetic a(ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->b(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(I)I
    .locals 0

    .line 4
    sput p0, Lcom/tencent/mna/n;->g:I

    return p0
.end method

.method static synthetic b(J)J
    .locals 0

    .line 5
    sput-wide p0, Lcom/tencent/mna/n;->j:J

    return-wide p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "============START : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "============\nOPENID : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nDEVKEY : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/tencent/mna/n;->c:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\nPVPID : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {v0, p0}, Lcom/tencent/mna/n;->d(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/mna/w;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/n;->e:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".-."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->c(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    const-string p0, "CachedTouchFileUpload release failed for port 0"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/tencent/mna/n$e;

    invoke-direct {v0, p0}, Lcom/tencent/mna/n$e;-><init>(Z)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Lcom/tencent/mna/n;->a(ZLjava/lang/String;Z)Lcom/tencent/mna/n$g;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/tencent/mna/n;->a(Lcom/tencent/mna/n$g;)V

    return-void
.end method

.method static synthetic c(I)I
    .locals 0

    .line 3
    sput p0, Lcom/tencent/mna/n;->h:I

    return p0
.end method

.method private static c(ZLjava/lang/String;)Lcom/tencent/mna/n$g;
    .locals 3

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    const-string p0, "CachedTouchFileUpload zipAndUpload file failed for path is empty"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 15
    new-instance p0, Lcom/tencent/mna/n$g;

    sget-object p1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    const v0, -0x13881

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 17
    :cond_0
    invoke-static {p1, p0}, Lcom/tencent/mna/n;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/tencent/mna/p0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "CachedTouchFileUpload zipAndUpload file failed for rawInput not exist:"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 21
    new-instance p0, Lcom/tencent/mna/n$g;

    sget-object p1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    const v2, -0x13882

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 24
    :cond_1
    invoke-static {p1, v0}, Lcom/tencent/mna/p0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "CachedTouchFileUpload zipAndUpload file:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed for zip error"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 28
    new-instance p0, Lcom/tencent/mna/n$g;

    sget-object p1, Lcom/tencent/mna/n;->b:Ljava/lang/String;

    const v2, -0x13883

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/tencent/mna/n$g;-><init>(IZLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 31
    :cond_2
    invoke-static {v0}, Lcom/tencent/mna/n;->g(Ljava/lang/String;)V

    .line 33
    invoke-static {p0, v0, v1}, Lcom/tencent/mna/n;->a(ZLjava/lang/String;Z)Lcom/tencent/mna/n$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(J)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->d(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/tencent/mna/n;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "============"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "============\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->d(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string p0, "CachedTouchFileUpload upload failed for port 0"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Lcom/tencent/mna/n$c;

    invoke-direct {v0, p0}, Lcom/tencent/mna/n$c;-><init>(Z)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(I)I
    .locals 0

    .line 2
    sput p0, Lcom/tencent/mna/n;->i:I

    return p0
.end method

.method private static d(ZLjava/lang/String;)Lcom/tencent/mna/n$g;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/tencent/mna/n;->c(ZLjava/lang/String;)Lcom/tencent/mna/n$g;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/tencent/mna/n;->a(Lcom/tencent/mna/n$g;)V

    return-object p0
.end method

.method private static d(J)Ljava/lang/String;
    .locals 1

    .line 3
    const-string/jumbo v0, "yyyyMMdd HHmmss"

    invoke-static {p0, p1, v0}, Lcom/tencent/mna/p0;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const-string v0, "T"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/mna/n;->a:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static d(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 60
    const-string p0, "CachedTouchFileUpload writeFile failed, channel is null"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 64
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 67
    const-string p0, "CachedTouchFileUpload writeFile channel interrupt"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CachedTouchFileUpload writeFile len:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CachedTouchFileUpload writeFile failed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 4

    .line 47
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "CachedTouchFileUpload-FailedFiles"

    invoke-static {v0, v2, v1}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Z)V
    .locals 5

    .line 4
    sget-object v0, Lcom/tencent/mna/n;->k:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    .line 6
    sget-object v1, Lcom/tencent/mna/n;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mna/n;->d(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p0, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    goto :goto_0

    .line 11
    :cond_0
    sget-wide v0, Lcom/tencent/mna/t0;->f:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    sub-long/2addr v0, v2

    .line 14
    const-string v2, "CachedTouchFileUpload mills is 0, then set to half hour ago"

    invoke-static {v2}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/tencent/mna/s3;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/tencent/mna/n;->k:Ljava/io/FileOutputStream;

    invoke-static {v1, v0}, Lcom/tencent/mna/n;->d(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 20
    const-string v0, "PAUSE"

    goto :goto_1

    :cond_2
    const-string v0, "END"

    .line 21
    :goto_1
    sget-object v1, Lcom/tencent/mna/n;->k:Ljava/io/FileOutputStream;

    invoke-static {v1, v0}, Lcom/tencent/mna/n;->c(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/tencent/mna/n;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mna/n;->d(ZLjava/lang/String;)Lcom/tencent/mna/n$g;

    move-result-object v0

    .line 24
    iget v1, v0, Lcom/tencent/mna/n$g;->a:I

    if-eqz v1, :cond_3

    .line 25
    new-instance v1, Lcom/tencent/mna/n$f;

    invoke-direct {v1, p0}, Lcom/tencent/mna/n$f;-><init>(Z)V

    const v2, 0xea60

    invoke-static {v1, v2}, Lcom/tencent/mna/a2;->a(Ljava/lang/Runnable;I)V

    .line 41
    :cond_3
    invoke-static {}, Lcom/tencent/mna/n;->j()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/tencent/mna/n$g;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 43
    invoke-static {}, Lcom/tencent/mna/n;->i()I

    move-result v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CachedTouchFileUpload resend [Immediately], failedCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",  oldest file:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->c(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, v1}, Lcom/tencent/mna/n;->b(ZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/n;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p0, "CachedTouchFileUpload append failed for touchData empty"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    const-string p0, "CachedTouchFileUpload append failed for port 0"

    invoke-static {p0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    new-instance v0, Lcom/tencent/mna/n$b;

    invoke-direct {v0, p0}, Lcom/tencent/mna/n$b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mna/a2;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/n;->i()I

    move-result v0

    return v0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/tencent/mna/n;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method static synthetic g()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/tencent/mna/n;->c:J

    return-wide v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 6

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mna/p0;->a(Ljava/lang/String;JJ)V

    .line 5
    invoke-static {p0}, Lcom/tencent/mna/n;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v4, v5}, Lcom/tencent/mna/p0;->a(Ljava/lang/String;JJ)V

    .line 12
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    .line 13
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    return-void

    .line 17
    :cond_1
    invoke-static {v0, v1}, Lcom/tencent/mna/p0;->a(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/mna/n;->g:I

    return v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/utils/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mna/n;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/tencent/mna/p0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i()I
    .locals 4

    .line 5
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CachedTouchFileUpload-FailedFiles"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x2c

    .line 10
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method private static i(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CachedTouchFileUpload-FailedFiles"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/tencent/mna/h3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CachedTouchFileUpload-FailedFiles"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    return-object v2
.end method

.method private static k()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "CachedTouchFileUpload-FailedFiles"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/tencent/mna/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 6
    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    aget-object v0, v0, v1

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static l()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/mna/d;->i1()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "CachedTouchFileUpload resume failed for port 0"

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/tencent/mna/n$d;

    invoke-direct {v0}, Lcom/tencent/mna/n$d;-><init>()V

    invoke-static {v0}, Lcom/tencent/mna/a2;->f(Ljava/lang/Runnable;)V

    return-void
.end method
