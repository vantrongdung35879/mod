.class Lcom/tencent/mna/base/utils/b$c$a;
.super Ljava/lang/Object;
.source "MobileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/utils/b$c;->onCellInfoChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/mna/base/utils/b$c;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/mna/base/utils/b$c$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MobileSignalListener onCellInfoChanged getDbm strength:"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/base/utils/b$c$a;->a:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/tencent/mna/base/utils/b;->b(Ljava/util/List;)Lcom/tencent/mna/base/utils/b$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/tencent/mna/base/utils/b;->a(Lcom/tencent/mna/base/utils/b$b;)V

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/tencent/mna/base/utils/b$c$a;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/tencent/mna/base/utils/b;->a(Ljava/util/List;)I

    move-result v2

    if-gez v2, :cond_2

    .line 11
    invoke-static {v2}, Lcom/tencent/mna/base/utils/b;->a(I)I

    .line 13
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", LacCid cellInfo cid:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/tencent/mna/base/utils/b$b;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobileSignalListener onCellInfoChanged exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
