.class public Lcom/tencent/mna/base/utils/WifiUtil$a;
.super Ljava/lang/Object;
.source "WifiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/base/utils/WifiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    .line 9
    iput p1, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->c:I

    .line 10
    iput p2, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->d:I

    .line 11
    iput p3, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->e:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    .line 2
    iget v0, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->c:I

    :goto_0
    iget v1, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->d:I

    if-ge v0, v1, :cond_2

    .line 3
    invoke-static {v0}, Lcom/tencent/mna/n1;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    iget v4, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->e:I

    invoke-static {v1, v4}, Lcom/tencent/mna/base/utils/WifiUtil;->a(Ljava/lang/String;I)Z

    move-result v4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    if-eqz v4, :cond_0

    .line 8
    iget v2, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->a:I

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRouterTerminalInfo reachable Q elapse:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    .line 11
    :cond_0
    iget v1, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mna/base/utils/WifiUtil$a;->b:I

    const/16 v2, 0xfe

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
