.class public Lcom/tencent/qmsp/sdk/c/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/c/a$a;
    }
.end annotation


# static fields
.field private static final d:[B


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/qmsp/sdk/c/a;->d:[B

    return-void

    :array_0
    .array-data 1
        0x6t
        0x62t
        -0x4et
        0x53t
        0x26t
        0xbt
        0x65t
        -0xet
        0x16t
        0x60t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qmsp/sdk/c/a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/tencent/qmsp/sdk/c/a;->b:J

    return-void
.end method

.method private a()Z
    .locals 12

    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qmsp/sdk/c/a;->d:[B

    invoke-virtual {p0, v2}, Lcom/tencent/qmsp/sdk/c/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qmsp/sdk/c/a;->c:Z

    :try_start_0
    iget-object v3, p0, Lcom/tencent/qmsp/sdk/c/a;->a:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/tencent/qmsp/sdk/c/a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v3, v10, v6

    if-gez v3, :cond_0

    cmp-long v3, v10, v4

    if-lez v3, :cond_0

    :try_start_1
    iput-boolean v2, p0, Lcom/tencent/qmsp/sdk/c/a;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qmsp/sdk/c/a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/qmsp/sdk/app/QmspSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/qmsp/sdk/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/qmsp/sdk/c/a;->d:[B

    invoke-virtual {p0, v2}, Lcom/tencent/qmsp/sdk/c/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qmsp/sdk/c/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/tencent/qmsp/sdk/c/a$a;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/tencent/qmsp/sdk/c/a$a;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/tencent/qmsp/sdk/c/a$a;->a()V

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/a;->b()V

    :cond_1
    return-void
.end method
