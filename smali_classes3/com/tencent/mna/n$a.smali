.class Lcom/tencent/mna/n$a;
.super Ljava/lang/Object;
.source "CachedTouchFileUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/n;->a(Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/n$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mna/n$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/mna/n$a;->c:J

    iput p5, p0, Lcom/tencent/mna/n$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "CachedTouchFileUpload init with ip:"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mna/n;->a()Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/tencent/mna/n;->a()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/tencent/mna/n;->a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/tencent/mna/n$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/mna/base/utils/e;->b(Landroid/content/Context;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->a(J)J

    .line 7
    iget-object v1, p0, Lcom/tencent/mna/n$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mna/n;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/tencent/mna/d;->f1()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Lcom/tencent/mna/n;->b(I)I

    .line 9
    invoke-static {}, Lcom/tencent/mna/d;->h1()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Lcom/tencent/mna/n;->c(I)I

    .line 10
    invoke-static {}, Lcom/tencent/mna/d;->j1()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/tencent/mna/n;->d(I)I

    .line 11
    iget-wide v1, p0, Lcom/tencent/mna/n$a;->c:J

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->b(J)J

    .line 12
    invoke-static {}, Lcom/tencent/mna/b2;->d()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Lcom/tencent/mna/n;->c(J)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/tencent/mna/n;->g()J

    move-result-wide v3

    sget-object v5, Lcom/tencent/mna/t0;->u:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mna/n;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mna/n;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Lcom/tencent/mna/p0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/n;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/tencent/mna/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tencent/mna/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/n;->a(Ljava/io/FileOutputStream;)Ljava/io/FileOutputStream;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mna/n$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", port:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/mna/n$a;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", filePath:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/mna/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CachedTouchFileUpload init failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
